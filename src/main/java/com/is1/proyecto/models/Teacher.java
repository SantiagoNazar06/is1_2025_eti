package com.is1.proyecto.models;

import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.Table;

@Table("teacher")
public class Teacher extends Model{

    public Person getPerson(){
        return parent(Person.class);
    }

    public void setPerson(Person p){
        set("id_persona", p.getId());
    }

    public Integer getNroLegajo(){
        return getInteger("nroLegajo");
    }

    public void setNroLegajo(Integer nro){
        set("nroLegajo", nro);
    }

}
