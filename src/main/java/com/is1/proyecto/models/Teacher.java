package com.is1.proyecto.models;

import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.Table;

@Table("teachers")
public class Teacher extends Model{

    public Person getPerson(){
        return parent(Person.class);
    }

    public void setPerson(Person p){
        set("id_persona", p.getId());
    }

    public String getNroLegajo(){
        return getString("nroLegajo");
    }

    public void setNroLegajo(String nro){
        set("nroLegajo", nro);
    }

}
