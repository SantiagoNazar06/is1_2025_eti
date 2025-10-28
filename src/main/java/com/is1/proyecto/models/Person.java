package com.is1.proyecto.models;

import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.Table;

@Table("persons")
public class Person extends Model {

    public Integer getDni(){
        return getInteger("dni");
    }

    public void setDni(Integer dni){
        set("dni", dni);
    }

    public String

    public String getPhone(){
        return getString("phone");
    }

    public void setPhone(String phone){
        set("phone", phone);
    }

    public String getEmail(){
        return getString("email");
    }

    public void setEmail(String email){
        set("email", email);
    }
}
