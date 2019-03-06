<?php

namespace App\Plugins\Gamification\Model;

use Illuminate\Database\Eloquent\Model;
//use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class GaBagdeEvents
 * @package App\Models
 * @version August 27, 2017, 5:43 pm UTC
 *
 * @property \App\Models\GaBadge gaBadge
 * @property \App\Models\GaEvent gaEvent
 * @property \Illuminate\Database\Eloquent\Collection gaBadges
 * @property \Illuminate\Database\Eloquent\Collection gaLevelAssociate
 * @property \Illuminate\Database\Eloquent\Collection gaUserBadges
 * @property \Illuminate\Database\Eloquent\Collection gaUserLevels
 * @property integer event_id
 * @property integer badge_id
 */
class GaBagdeEvents extends Model
{
    //use SoftDeletes;

    public $table = 'ga_badge_events';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];


    public $fillable = [
        'event_id',
        'badge_id'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'event_id' => 'integer',
        'badge_id' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    public function gaBadge()
    {
        return $this->belongsTo(\App\Plugins\Gamification\Model\GaBadge::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    public function gaEvent()
    {
        return $this->belongsTo(\App\Plugins\Gamification\Model\GaEvent::class);
    }
}
