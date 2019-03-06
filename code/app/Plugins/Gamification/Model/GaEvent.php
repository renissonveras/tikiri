<?php

namespace App\Plugins\Gamification\Model;

use Illuminate\Database\Eloquent\Model;
//use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class GaEvent
 * @package App\Models
 * @version August 27, 2017, 5:43 pm UTC
 *
 * @property \App\Models\GaCategory gaCategory
 * @property \Illuminate\Database\Eloquent\Collection gaBadgeEvents
 * @property \Illuminate\Database\Eloquent\Collection gaBadges
 * @property \Illuminate\Database\Eloquent\Collection gaLevelAssociate
 * @property \Illuminate\Database\Eloquent\Collection gaUserBadges
 * @property \Illuminate\Database\Eloquent\Collection gaUserLevels
 * @property string title
 * @property string description
 * @property string event_key
 * @property integer category_id
 */
class GaEvent extends Model
{
    //use SoftDeletes;

    public $table = 'ga_events';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];


    public $fillable = [
        'title',
        'description',
        'event_key'
        /*'category_id'*/
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'title' => 'string',
        'description' => 'string',
        'event_key' => 'string'
        /*'category_id' => 'integer'*/
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
    /*public function gaCategory()
    {
        return $this->belongsTo(\App\Models\GaCategory::class);
    }*/

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     **/
    public function gaBadges()
    {
        return $this->belongsToMany(\App\Plugins\Gamification\Model\GaBadge::class, 'ga_badge_events');
    }
}
