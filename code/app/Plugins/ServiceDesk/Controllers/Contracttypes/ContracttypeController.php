<?php

namespace App\Plugins\ServiceDesk\Controllers\Contracttypes;

use App\Plugins\ServiceDesk\Controllers\BaseServiceDeskController;
use App\Plugins\ServiceDesk\Model\Contract\ContractType;
use App\Plugins\ServiceDesk\Requests\CreateContractstypesRequest;
use Exception;
use Lang;


class ContracttypeController extends BaseServiceDeskController {

    public function index() {
        try {
            return view('service::contractstypes.index');
        } catch (Exception $ex) {
            return redirect()->back()->with('fails', $ex->getMessage());
        }
    }

    public function getContract() {
        try {
            $contract_types = new ContractType();
            $contract_type = $contract_types->select('id', 'name', 'created_at', 'updated_at')->get();
            return \Datatable::Collection($contract_type)
                            ->showColumns('name', 'created_at', 'updated_at')
                            ->addColumn('action', function($model) {
                                return "<a href=" . url('service-desk/contract-types/' . $model->id . '/edit') . " class='btn btn-info btn-xs'>Editar</a>";
                            })
                            ->searchColumns('name', 'created_at', 'updated_at')
                            ->orderColumns('name', 'created_at', 'updated_at')
                            ->make();
        } catch (Exception $ex) {
            return redirect()->back()->with('fails', $ex->getMessage());
        }
    }

    public function create() {
        try {
            return view('service::contractstypes.create');
        } catch (Exception $ex) {
            return redirect()->back()->with('fails', $ex->getMessage());
        }
    }

    public function handleCreate(CreateContractstypesRequest $request) {
        try {
            $sd_contractstypes = new ContractType;
            $sd_contractstypes->fill($request->input())->save();
            return \Redirect::route('service-desk.contractstypes.index')->with('message', Lang::get('service::lang.sucess_on_operation'));
        } catch (Exception $ex) {
            return redirect()->back()->with('fails', $ex->getMessage());
        }
    }

    public function edit($id) {
        try {
            $sd_contractstypes = ContractType::findOrFail($id);
            if ($sd_contractstypes) {
                return view('service::contractstypes.edit', compact('sd_contractstypes'));
            }
            throw new Exception('Item solicitado não encontrado');
        } catch (Exception $ex) {
            return redirect()->back()->with('fails', $ex->getMessage());
        }
    }

    public function handleEdit($id, CreateContractstypesRequest $request) {
        try {

            $sd_contractstypes = ContractType::findOrFail($id);
            if ($sd_contractstypes) {
                $sd_contractstypes->fill($request->input())->save();
                return \Redirect::route('service-desk.contractstypes.index')->with('message', Lang::get('service::lang.sucess_on_operation'));
            }
            throw new Exception('Item solicitado não encontrado');
        } catch (Exception $ex) {
            return redirect()->back()->with('fails', $ex->getMessage());
        }
    }

    public function handledelete($id) {
        try {

            $sd_contractstypes = ContractType::findOrFail($id);
            if ($sd_contractstypes) {
                $sd_contractstypes->delete();
                return \Redirect::route('service-desk.contractstypes.index')->with('message', Lang::get('service::lang.sucess_on_operation'));
            }

            throw new Exception('Item solicitado não encontrado');
        } catch (Exception $ex) {
            return redirect()->back()->with('fails', $ex->getMessage());
        }
    }

}
