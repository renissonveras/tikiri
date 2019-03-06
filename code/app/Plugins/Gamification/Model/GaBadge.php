<?php
namespace App\Plugins\Gamification\Model;

use Illuminate\Database\Eloquent\Model;
//use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class GaBadge
 * @package App\Models
 * @version August 27, 2017, 5:42 pm UTC
 *
 * @property \App\Models\GaType gaType
 * @property \App\Models\GaCategory gaCategory
 * @property \Illuminate\Database\Eloquent\Collection gaBadgeEvents
 * @property \Illuminate\Database\Eloquent\Collection GaLevelAssociate
 * @property \Illuminate\Database\Eloquent\Collection GaLevelAssociate
 * @property \Illuminate\Database\Eloquent\Collection GaUserBadge
 * @property \Illuminate\Database\Eloquent\Collection gaUserLevels
 * @property string title
 * @property string description
 * @property string icon
 * @property string icon_sm
 * @property string icon_lg
 * @property integer category_id
 * @property integer type_id
 * @property string icon_css
 * @property smallInteger priority
 * @property integer credits
 * @property integer xp
 * @property float price
 * @property string notification
 * @property boolean isdeduct
 * @property smallInteger ilevel
 * @property boolean ishide
 * @property boolean ismultiple
 */
class GaBadge extends Model
{
    //use SoftDeletes;

    public $table = 'ga_badges';
    
    const CREATED_AT = 'created_at';
    const UPDATED_AT = 'updated_at';


    protected $dates = ['deleted_at'];

    public $fillable = [
        'title',
        'description',
        'icon',
        'icon_sm',
        'icon_lg',
        'category_id',
        'type_id',
        'icon_css',
        'priority',
        'credits',
        'xp',
        'price',
        'notification',
        'isdeduct',
        'ilevel',
        'ishide',
        'ismultiple',
        'isactive'
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
        'icon' => 'string',
        'icon_sm' => 'string',
        'icon_lg' => 'string',
        'category_id' => 'integer',
        'type_id' => 'integer',
        'icon_css' => 'string',
        'credits' => 'integer',
        'xp' => 'integer',
        'price' => 'float',
        'notification' => 'string',
        'isdeduct' => 'boolean',
        'ishide' => 'boolean',
        'ismultiple' => 'boolean',
        'isactive' => 'boolean'
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
    public function gaCategory()
    {
        return $this->belongsTo(\App\Plugins\Gamification\Model\GaCategory::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     **/
    public function gaEvents()
    {
        return $this->belongsToMany(\App\Plugins\Gamification\Model\GaEvent::class, 'ga_badge_events');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function gaLevelAssociatesLevel()
    {
        return $this->hasMany(\App\Plugins\Gamification\Model\GaLevelAssociate::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function gaLevelAssociatesReward()
    {
        return $this->hasMany(\App\Plugins\Gamification\Model\GaLevelAssociate::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     **/
    public function gaUserBadges()
    {
        return $this->hasMany(\App\Plugins\Gamification\Model\GaUserBadge::class);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     **/
    public function gaUsers()
    {
        return $this->belongsToMany(\App\Plugins\Gamification\Model\GaUser::class, 'ga_user_levels');
    }
}
