<?php

namespace App\Plugins\Gamification\Model;

use Illuminate\Database\Eloquent\Model;

/**
 * Class GaCategory
 * @package App\Models
 * @version August 27, 2017, 5:43 pm UTC
 *
 * @property \App\Models\GaType gaType
 * @property \Illuminate\Database\Eloquent\Collection gaBadgeEvents
 * @property \Illuminate\Database\Eloquent\Collection GaBadge
 * @property \Illuminate\Database\Eloquent\Collection GaEvent
 * @property \Illuminate\Database\Eloquent\Collection gaLevelAssociate
 * @property \Illuminate\Database\Eloquent\Collection gaUserBadges
 * @property \Illuminate\Database\Eloquent\Collection gaUserLevels
 * @property string title
 * @property string shorttitle
 * @property string description
 * @property integer type_id
 * @property smallInteger priority
 */
class GaCategory extends Model
{
    //use SoftDeletes;

    public $table = 'ga_categories';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];


    public $fillable = [
        'title',
        'shorttitle',
        'description',
        'type_id',
        'priority'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'title' => 'string',
        'shorttitle' => 'string',
        'description' => 'string',
        'type_id' => 'integer'
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
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function gaBadges()
    {
        return $this->hasMany(\App\Plugins\Gamification\Model\GaBadge::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function gaEvents()
    {
        return $this->hasMany(\App\Plugins\Gamification\Model\GaEvent::class);
    }
}
