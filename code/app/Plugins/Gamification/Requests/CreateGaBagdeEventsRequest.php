<?php

namespace App\Plugins\Gamification\Requests;

use App\Plugins\Gamification\Requests\Request;
use App\Plugins\Gamification\Model\GaBagdeEvents;

class CreateGaBagdeEventsRequest extends Request
{

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return GaBagdeEvents::$rules;
    }
}
