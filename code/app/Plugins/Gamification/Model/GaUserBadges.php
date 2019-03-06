<?php

namespace App\Plugins\Gamification\Model;

use Illuminate\Database\Eloquent\Model;
//use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class GaUserBadges
 * @package App\Models
 * @version September 9, 2017, 6:19 pm UTC
 *
 * @property \App\Models\GaType gaType
 * @property \App\Models\GaUser gaUser
 * @property \App\Models\GaBadge gaBadge
 * @property \Illuminate\Database\Eloquent\Collection gaBadgeEvents
 * @property \Illuminate\Database\Eloquent\Collection gaBadges
 * @property \Illuminate\Database\Eloquent\Collection gaLevelAssociate
 * @property \Illuminate\Database\Eloquent\Collection gaUserAchievements
 * @property \Illuminate\Database\Eloquent\Collection gaUserLevels
 * @property integer user_id
 * @property integer badge_id
 * @property integer type_id
 * @property string|\Carbon\Carbon added_date
 * @property integer added_user_id
 * @property integer acumulated_xp
 * @property integer acumulated_credits
 * @property integer deducted_xp
 * @property integer deducted_credits
 * @property integer total_credits_in_moment
 * @property integer total_xp_in_moment
 */
class GaUserBadges extends Model
{
    //use SoftDeletes;

    public $table = 'ga_user_badges';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];


    public $fillable = [
        'user_id',
        'badge_id',
        'type_id',
        'added_date',
        'added_user_id',
        'acumulated_xp',
        'acumulated_credits',
        'deducted_xp',
        'deducted_credits',
        'total_credits_in_moment',
        'total_xp_in_moment'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'user_id' => 'integer',
        'badge_id' => 'integer',
        'type_id' => 'integer',
        'added_user_id' => 'integer',
        'acumulated_xp' => 'integer',
        'acumulated_credits' => 'integer',
        'deducted_xp' => 'integer',
        'deducted_credits' => 'integer',
        'total_credits_in_moment' => 'integer',
        'total_xp_in_moment' => 'integer'
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
    public function gaType()
    {
        return $this->belongsTo(\App\Plugins\Gamification\Model\GaType::class);
    }

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
