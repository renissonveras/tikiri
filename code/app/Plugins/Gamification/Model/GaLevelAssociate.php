<?php

namespace App\Plugins\Gamification\Model;

use Illuminate\Database\Eloquent\Model;
//use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class GaLevelAssociate
 * @package App\Models
 * @version August 27, 2017, 5:43 pm UTC
 *
 * @property \App\Models\GaBadge gaBadge
 * @property \App\Models\GaBadge gaBadge
 * @property \Illuminate\Database\Eloquent\Collection gaBadgeEvents
 * @property \Illuminate\Database\Eloquent\Collection gaBadges
 * @property \Illuminate\Database\Eloquent\Collection gaUserBadges
 * @property \Illuminate\Database\Eloquent\Collection gaUserLevels
 * @property integer level_id
 * @property integer reward_id
 * @property string description
 */
class GaLevelAssociate extends Model
{
    //use SoftDeletes;

    public $table = 'ga_level_associate';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];


    public $fillable = [
        'level_id',
        'reward_id',
        'description'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'level_id' => 'integer',
        'reward_id' => 'integer',
        'description' => 'string'
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

}
