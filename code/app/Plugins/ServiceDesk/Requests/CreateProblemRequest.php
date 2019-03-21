<?php

namespace App\Plugins\ServiceDesk\Requests;

use App\Http\Requests\Request;

class CreateProblemRequest extends Request {

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

            'from' => 'required|email',           
            'description' => 'required',
            'department' => 'required',
            'status_type_id' => 'required',
            'subject'=>'required',
//            'priority_id' => 'required',
//            'impact_id' => 'required',
//            'location_type_id' => 'required',
//            'group_id' => 'required',
//            'agent_id' => 'required',
//            'assigned_id' => 'required',
                ];
    }

    public function messages() {
        return [

            "from.required" => "Origem é requerida",
            "description.required" => "Descrição é requerida",
            "department.required" => "Departamento é requerido",
            "status_type_id.required" => "Status é requerido",
            "priority_id.required" => "Prioridade é requerido",
            "impact_id.required" => "Impacto é requerido",
            "location_type_id.required" => "Tipo de local é requerido",
            "group_id.required" => "Grupo é requerido",
            "agent_id.required" => "Agente é requerido",
            "assigned_id.required" => "Associado é requerido",
        ];
    }

}
