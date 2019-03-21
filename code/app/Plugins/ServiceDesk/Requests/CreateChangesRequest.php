<?php

namespace App\Plugins\ServiceDesk\Requests;

use App\Http\Requests\Request;

class CreateChangesRequest extends Request {

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
            'description' => 'required',
            'status_id' => 'required',
            'priority_id' => 'required',
            'change_type_id' => 'required',
            'impact_id' => 'required',
        ];
    }

    public function messages() {
        return [
            'status_id.required' => 'Status é requerido',
            'priority_id.required' => 'Prioridade é requerida',
            'change_type_id.required' => 'Tipo de mudança é requerida',
            'impact_id.required' => 'Impacto é requerido',
        ];
    }

}
