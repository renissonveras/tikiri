<?php

namespace App\Plugins\ServiceDesk\Requests;

use App\Http\Requests\Request;

class CreateReleaseRequest extends Request {

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
            'subject' => 'required',
            'status_id' => 'required',
            'priority_id' => 'required',
            'release_type_id' => 'required',
            'description' => 'required',
            'planned_start_date' => 'required',
            'planned_end_date' => 'required',
        ];
    }
    
    public function messages() {
        return [
            'status_id.required'=>'Selecione o Status',
            'priority_id.required'=>'Selecione a Prioridade',
            'release_type_id.required'=>'Selecione o tipo',
            'planned_start_date.required'=>'Selecione a data de início planejada',
            'planned_end_date.required'=>'Selecione a data de fim planejada',
        ];
    }

}
