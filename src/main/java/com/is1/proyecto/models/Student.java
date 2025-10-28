package com.is1.proyecto.models;

import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.Table;

@Table("student")
public class Student extends Model{
    
    public Person getPerson(){
        return parent(Person.class);
    }

    public void setPerson(Person p){
        set("id_persona", p.getId());
    }

    public String getType(){
        return getString("student_type");
    }

    public void setType(String type){
        set("student_type", type);
    }
}
