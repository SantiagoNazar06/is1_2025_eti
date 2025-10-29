package com.is1.proyecto.models;

import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.Table;

@Table("persons")
public class Person extends Model {

    public String getDni(){
        return getString("dni");
    }

    public void setDni(String dni){
        set("dni", dni);
    }

    public String getFirstName(){
        return getString("firstName");
    }

    public void setFirstName(String name){
        set("firstName", name);
    }

    public String getLastName(){
        return getString("lastName");
    }

    public void setLastName(String lastname){
        set("lastName", lastname);
    }

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
