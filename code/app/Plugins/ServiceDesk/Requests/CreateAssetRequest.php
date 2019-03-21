<?php

namespace App\Plugins\ServiceDesk\Requests;

use App\Http\Requests\Request;

class CreateAssetRequest extends Request {

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
        $id = $this->segment(3);
        return [
            'name' => 'required',
            'description' => 'required',
            'asset_type_id' => 'required',
            'location_id' => 'required',
            'external_id'=>'unique:sd_assets,external_id,'.$id,
        ];
    }

    public function messages() {
        return[
            'name.required' => 'O nome é requerido',
            'description.required' => 'A descrição requerida',
            'asset_type_id.required' => 'O tipo de ativo é requerido',
            'external_id.unique'=>'Este identificador já foi usado. Tente um diferente',
            'location_id.required' => 'O local é requerido',
        ];
    }

}
