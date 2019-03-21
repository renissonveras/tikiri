<?php

namespace App\Plugins\ServiceDesk\Requests;

use App\Http\Requests\Request;

class CreateContractRequest extends Request {

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize() {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules() {
        return [

             'name' => 'required',
             'description' => 'required',
             'contract_type_id' => 'required',
             'product_id' => 'required',
             
        ];
    }

    public function messages() {
        return [

             "name.required" => "Nome é requerido",
             "description.required" => "Descrição é requerido",
             "cost.required" => "Custo é requerido",
             "contract_type_id.required" => "Tipo de contrato é requerido",
             "approver_id.required" => "Aprovador é requerido",
             "vendor_id.required" => "Fornecedor é requerido",
             "license_type_id.required" => "Tipo de licença é requerida",
             "licensce_count.required" => "Quantidade de licenças é requerida",
             "notify_expiry.required" => "Notificar expiração é requerido",
             "product_id.required" => "Produto é requerido",
             "contract_start_date.required" => "Data de início do contrato é requerida",
             "contract_end_date.required" => "Data de encerramento do contrato é requerida",
        ];
    }

}
