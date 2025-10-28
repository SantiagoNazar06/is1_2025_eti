package com.is1.proyecto.models;

import java.sql.*;

import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.Table;

@Table("evaluations")
public class Evaluation extends Model{

    public Date getEvaluationDate(){
        return getDate("evaluation_date");
    }

    public void setEvaluationDate(Date date){
        set("evaluation_date", date);
    }

    public Integer getEvaluationNote(){
        return getInteger("evaluation_note");
    }

    public void setEvaluationNote(Integer note){
        set("evaluation_note", note);
    }
}
