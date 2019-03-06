<?php

namespace App\Plugins\Gamification\Model;

use Illuminate\Database\Eloquent\Model;
//use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class GaUser
 * @package App\Models
 * @version August 27, 2017, 5:43 pm UTC
 *
 * @property \Illuminate\Database\Eloquent\Collection gaBadgeEvents
 * @property \Illuminate\Database\Eloquent\Collection gaBadges
 * @property \Illuminate\Database\Eloquent\Collection gaLevelAssociate
 * @property \Illuminate\Database\Eloquent\Collection GaUserAchievement
 * @property \App\Models\GaUserBadge gaUserBadge
 * @property \Illuminate\Database\Eloquent\Collection gaUserLevels
 * @property string username
 * @property string email
 * @property string firstname
 * @property string lastname
 * @property string|\Carbon\Carbon added_date
 * @property boolean status
 * @property string avator
 */
class GaUser extends Model
{
    //use SoftDeletes;

    public $table = 'ga_users';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];


    public $fillable = [
        'username',
        'email',
        'firstname',
        'lastname',
        'added_date',
        'status',
        'avator'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'user_id' => 'integer',
        'username' => 'string',
        'email' => 'string',
        'firstname' => 'string',
        'lastname' => 'string',
        'status' => 'boolean',
        'avator' => 'string'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function gaUserAchievements()
    {
        return $this->hasMany(\App\Plugins\Gamification\Model\GaUserAchievement::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     **/
    public function gaUserBadge()
    {
        return $this->hasOne(\App\Plugins\Gamification\Model\GaUserBadge::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     **/
    public function gaBadges()
    {
        return $this->belongsToMany(\App\Plugins\Gamification\Model\GaBadge::class, 'ga_user_levels');
    }
}
