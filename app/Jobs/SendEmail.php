<?php

namespace App\Jobs;

use App\Http\Controllers\Common\PhpMailController;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class SendEmail extends Job implements ShouldQueue
{
    use InteractsWithQueue;
    use SerializesModels;

    protected $from;

    protected $to;

    protected $message;

    protected $template;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($from, $to, $message, $template_variables = '')
    {
        $this->from = $from;
        $this->to = $to;
        $this->message = $message;
        $this->template = $template_variables;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle(PhpMailController $PhpMailController)
    {
        try {
            $p = $PhpMailController->sendEmail($this->from, $this->to, $this->message, $this->template);

            return $p;
        } catch (\Exception $e) {
            logger()->warning($e->getMessage());
            session()->flash('fails', $e->getMessage());
        }
    }
}
