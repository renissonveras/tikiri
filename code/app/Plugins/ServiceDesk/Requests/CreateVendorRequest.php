<?php

namespace App\Plugins\ServiceDesk\Requests;

use App\Http\Requests\Request;

class CreateVendorRequest extends Request {

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
            'status'=>'required',
            'name' => 'required',
            'primary_contact' => 'required',
            'email' => 'required',
            'description' => 'required',
            'address' => 'required',
            //'all_department' => 'required',
            
        ];
    }

    public function messages() {
        return[
            'name.required' => 'Preencha o nome',
            'description.required' => 'Preencha a descrição',
            'primary_contact.required' => 'Preencha o contato primário',
            'email.required' => 'Preencha o email',
            'address.required'=>'Preencha o endereço',
            'status.required' => 'Selecione o status',
        ];
    }    

}
