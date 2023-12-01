<?php

namespace App\Http\ViewComposers;

use App\Model\helpdesk\Agent\Department;
use App\Model\helpdesk\Email\Emails;
use App\Model\helpdesk\Settings\CommonSettings;
use App\Model\helpdesk\Settings\Company;
use App\Model\helpdesk\Ticket\Tickets;
use App\User;
use Auth;
use Illuminate\View\View;

class AgentLayout
{
    /**
     * The user repository implementation.
     *
     * @var UserRepository
     */
    protected $company;

    protected $users;

    protected $tickets;

    protected $department;

    /**
     * Create a new profile composer.
     *
     * @param
     *
     * @return void
     */
    public function __construct(Company $company, User $users, Tickets $tickets, Department $department, Emails $emails, CommonSettings $common_settings)
    {
        $this->company = $company;
        $this->auth = Auth::user();
        $this->users = $users;
        $this->tickets = $tickets;
        $this->department = $department;
        $this->emails = $emails;
        $this->common_settings = $common_settings;
    }

    /**
     * Bind data to the view.
     *
     * @param View $view
     *
     * @return void
     */
    public function compose(View $view)
    {
        $notifications = \App\Http\Controllers\Common\NotificationController::getNotifications();
        $view->with([
            'company'            => $this->company,
            'notifications'      => $notifications,
            'myticket'           => $this->myTicket(),
            'unassigned'         => $this->unassigned(),
            'followup_ticket'    => $this->followupTicket(),
            'deleted'            => $this->deleted(),
            'tickets'            => $this->inbox(),
            'department'         => $this->departments(),
            'overdues'           => $this->overdues(),
            'due_today'          => $this->getDueToday(),
            'is_mail_conigured'  => $this->getEmailConfig(),
            'dummy_installation' => $this->getDummyDataInstallation(),
        ]);
    }

    public function users()
    {
        return $this->users->select('id', 'profile_pic');
    }

    public function tickets()
    {
        return $this->tickets->select('id', 'ticket_number');
    }

    public function departments()
    {
        $array = [];
        $tickets = $this->tickets;
        if (\Auth::user()->role == 'agent') {
            $tickets = $tickets->where('tickets.dept_id', '=', \Auth::user()->primary_dpt);
        }
        $tickets = $tickets
                ->leftJoin('department as dep', 'tickets.dept_id', '=', 'dep.id')
                ->leftJoin('ticket_status', 'tickets.status', '=', 'ticket_status.id')
                ->select('dep.name as name', 'ticket_status.name as status', \DB::raw('COUNT(ticket_status.name) as count'))
                ->groupBy('dep.name', 'ticket_status.name')
                ->get();
        $grouped = $tickets->groupBy('name');
        $status = [];
        foreach ($grouped as $key => $group) {
            $status[$key] = $group->keyBy('status');
        }

        return collect($status);
    }

    public function myTicket()
    {
        $ticket = $this->tickets();
        if ($this->auth->role == 'admin') {
            return $ticket->where('assigned_to', $this->auth->id)
                    ->where('status', '1');
        } elseif ($this->auth->role == 'agent') {
            return $ticket->where('assigned_to', $this->auth->id)
                    ->where('status', '1');
        }
    }

    public function unassigned()
    {
        $ticket = $this->tickets();
        if ($this->auth->role == 'admin') {
            return $ticket->where('assigned_to', '=', null)
                    ->where('status', '=', '1')
                    ->select('id');
        } elseif ($this->auth->role == 'agent') {
            return $ticket->where('assigned_to', '=', null)
                    ->where('status', '=', '1')
                    ->where('dept_id', '=', $this->auth->primary_dpt)
                    ->select('id');
        }
    }

    public function followupTicket()
    {
        $ticket = $this->tickets();
        if ($this->auth->role == 'admin') {
            return $ticket->where('status', '1')->where('follow_up', '1')->select('id');
        } elseif ($this->auth->role == 'agent') {
            return $ticket->where('status', '1')->where('follow_up', '1')->select('id');
        }
    }

    public function deleted()
    {
        $ticket = $this->tickets();
        if ($this->auth->role == 'admin') {
            return $ticket->where('status', '5')->select('id');
        } elseif ($this->auth->role == 'agent') {
            return $ticket->where('status', '5')->where('dept_id', '=', $this->auth->primary_dpt)
                    ->select('id');
        }
    }

    public function inbox()
    {
        $table = $this->tickets();
        if (Auth::user()->role == 'agent') {
            $id = Auth::user()->primary_dpt;
            $table = $table->where('tickets.dept_id', '=', $id)->orWhere('assigned_to', '=', Auth::user()->id);
        }

        return $table->Join('ticket_status', function ($join) {
            $join->on('ticket_status.id', '=', 'tickets.status')
                        ->whereIn('ticket_status.id', [1, 7]);
        });
    }

    public function overdues()
    {
        $ticket = $this->tickets();
        if ($this->auth->role == 'admin') {
            return $ticket->where('status', '=', 1)
                            ->where('isanswered', '=', 0)
                            ->whereNotNull('tickets.duedate')
                            ->where('tickets.duedate', '!=', '00-00-00 00:00:00')
                            ->where('tickets.duedate', '<', \Carbon\Carbon::now())
                            ->select('tickets.id');
        } elseif ($this->auth->role == 'agent') {
            return $ticket->where('status', '=', 1)
                            ->where('isanswered', '=', 0)
                            ->whereNotNull('tickets.duedate')
                            ->where('dept_id', '=', $this->auth->primary_dpt)
                            ->where('tickets.duedate', '!=', '00-00-00 00:00:00')
                            ->where('tickets.duedate', '<', \Carbon\Carbon::now())
                            ->select('tickets.id');
        }
    }

    public function getDueToday()
    {
        $ticket = $this->tickets();
        if ($this->auth->role == 'admin') {
            return $ticket->where('status', '=', 1)
                            ->where('status', '=', 1)
                            ->where('isanswered', '=', 0)
                            ->whereNotNull('duedate')
                            ->whereRaw('date(duedate) = ?', [date('Y-m-d')]);
        } elseif ($this->auth->role == 'agent') {
            return $ticket->where('status', '=', 1)
                            ->where('status', '=', 1)
                            ->where('isanswered', '=', 0)
                            ->whereNotNull('duedate')
                            ->where('dept_id', '=', $this->auth->primary_dpt)
                            ->whereRaw('date(duedate) = ?', [date('Y-m-d')]);
        }
    }

    /**
     * @category function to check configured mails
     *
     * @var
     *
     * @return bool true/false
     */
    public function getEmailConfig()
    {
        $emails = $this->emails->where('sending_status', '=', 1)->where('fetching_status', '=', 1)->count();
        if ($emails >= 1) {
            return true;
        }

        return false;
    }

    /**
     * @category function to check if dummy data is installed in the system or not
     *
     * @param null
     *
     * @return builder
     */
    public function getDummyDataInstallation()
    {
        $return_collection = $this->common_settings->select('status')->where('option_name', '=', 'dummy_data_installation')->first();
        if (!$return_collection) {
            $return_collection = collect(['status' => 0]);

            return $return_collection['status'];
        }

        return $return_collection->status;
    }
}
