<?php

namespace App\Plugins\ServiceDesk\Model\Vendor;

use Illuminate\Database\Eloquent\Model;

class SdVendors extends Model
{
    protected $table = 'sd_vendors';
    protected $fillable = ['id','name','primary_contact','email','description','address','status','created_at','updated_at'];
    
    /*public function statuses() {
        $value = "Inativo";
        $status = $this->attributes['status'];
        if ($status==1) {
            $value = "Ativo";
        }
        return ucfirst($value);
    }*/

    public function statuses(){
        $value = "Inativo";
        $attr = $this->attributes['status'];
        if ($attr==1) {
            $value = "Ativo";
        }else{
            $value = "Inativo";
        }
        return $value;
    }

     /**
     * get the description of this model
     * @return string 
     */
    public function descriptions() {
        $value = "--";
        $attr = $this->attributes['description'];
        if ($attr) {
            $value = str_limit($attr, 10);
        }
        if (strlen($value) > 10) {
            $value .="  <a href=# id='show-description'>Mostrar</a>";
        }
        return ucfirst($value);
    }
}
