<?php

namespace App\Plugins\Gamification\Model;

use Illuminate\Database\Eloquent\Model;
//use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class GaUserLevels
 * @package App\Models
 * @version August 27, 2017, 5:43 pm UTC
 *
 * @property \App\Models\GaUser gaUser
 * @property \App\Models\GaBadge gaBadge
 * @property \Illuminate\Database\Eloquent\Collection gaBadgeEvents
 * @property \Illuminate\Database\Eloquent\Collection gaBadges
 * @property \Illuminate\Database\Eloquent\Collection gaLevelAssociate
 * @property \Illuminate\Database\Eloquent\Collection gaUserBadges
 * @property integer user_id
 * @property integer levels
 * @property integer points
 * @property integer credits
 * @property integer init_points
 * @property integer max_points
 * @property integer level_id
 */
class GaUserLevels extends Model
{
    //use SoftDeletes;

    public $table = 'ga_user_levels';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];


    public $fillable = [
        'user_id',
        'levels',
        'points',
        'credits',
        'init_points',
        'max_points',
        'level_id'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'user_id' => 'integer',
        'levels' => 'integer',
        'points' => 'integer',
        'credits' => 'integer',
        'init_points' => 'integer',
        'max_points' => 'integer',
        'level_id' => 'integer'
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
    public function gaUser()
    {
        return $this->belongsTo(\App\Plugins\Gamification\Model\GaUser::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    public function gaBadge()
    {
        return $this->belongsTo(\App\Plugins\Gamification\Model\GaBadge::class);
    }
}
