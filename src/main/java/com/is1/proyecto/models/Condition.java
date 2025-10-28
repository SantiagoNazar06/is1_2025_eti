package com.is1.proyecto.models;

import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.Table;

@Table("conditions")
public class Condition extends Model{

    public String getConditionType(){
        return getString("condition_type");
    }

    public void setCOnditionType(String condition){
        if(getConditionType().equals(condition)){
            throw new IllegalArgumentException();
        }else{
            if(condition.equals("aprobado") || condition.equals("desaprobado")){
                set("condition_type", condition);
            }
        }
    }
    

    //FALTA LA IMPLEMENTACION DE LA TABLA Y LA CLASE PLAN DE ESTUDIO
}
