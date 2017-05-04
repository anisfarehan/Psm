/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ayerputeh.Controller.Aktiviti;

/**
 *
 * @author Hp
 */
public class Aktiviti {
    private int id;
    private String aktivitinama,tarikh,huraian;

public int getId(){
    return id;
}
public void setId(int id){
    this.id=id;
}
    public String getAktivitinama(){
        return aktivitinama;
    }
    public  void setAktivitinama(String aktivitinama){

        this.aktivitinama= aktivitinama;
    }

    public String getTarikh(){
        return tarikh;
    }
    public  void setTarikh(String tarikh){

        this.tarikh= tarikh;
    }
    public String getHuraian(){
        return huraian;
    }
    public  void setHuraian(String huraian){

        this.huraian= huraian;
    }
}