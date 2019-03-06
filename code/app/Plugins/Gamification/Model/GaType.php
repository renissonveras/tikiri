<?php

namespace App\Plugins\Gamification\Model;

use Illuminate\Database\Eloquent\Model;
//use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class GaType
 * @package App\Models
 * @version August 27, 2017, 7:10 pm UTC
 *
 * @property \Illuminate\Database\Eloquent\Collection gaBadgeEvents
 * @property \Illuminate\Database\Eloquent\Collection GaBadge
 * @property \Illuminate\Database\Eloquent\Collection GaCategory
 * @property \Illuminate\Database\Eloquent\Collection gaLevelAssociate
 * @property \Illuminate\Database\Eloquent\Collection gaUserBadges
 * @property \Illuminate\Database\Eloquent\Collection gaUserLevels
 * @property string title
 */
class GaType extends Model
{
    //use SoftDeletes; 

    public $table = 'ga_types';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];


    public $fillable = [
        'title'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'title' => 'string'
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
    public function gaBadges()
    {
        return $this->hasMany(\App\Plugins\Gamification\Model\GaBadge::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function gaCategories()
    {
        return $this->hasMany(\App\Plugins\Gamification\Model\GaCategory::class);
    }
}
