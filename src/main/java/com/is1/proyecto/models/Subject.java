package com.is1.proyecto.models;

import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.Table;

@Table("subjects")
public class Subject extends Model{
    
    public String getSubjectName(){
        return getString("subject_name");
    }

    public void setSubjectName(String name){
        set("subject_name", name);
    }
}
