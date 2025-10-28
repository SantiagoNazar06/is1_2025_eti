package com.is1.proyecto.models;

import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.Table;

@Table("careers")
public class Career extends Model{

    public String getCareerName(){
        return getString("career_name");
    }

    public void setCareerName(String name){
        set("career_name", name);
    }

    public Integer getCareerDuration(){
        return getInteger("career_duration");
    }

    public void setCareerDuration(Integer duration){
        set("carrer_duration", duration);
    }
    
}
