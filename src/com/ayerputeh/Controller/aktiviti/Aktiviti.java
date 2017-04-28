package com.ayerputeh.Controller.aktiviti;

import static org.glassfish.jdbc.config.JdbcResource.name;

/**
 * Created by Hp on 4/28/2017.
 */
public class Aktiviti {
    private int id;
    private String aktivitinama,tarikh,huraian;
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getAktivitinama() {
        return aktivitinama;
    }
    public void setAktivitinama(String aktivitinama) {
        this.aktivitinama = aktivitinama;
    }
    public String getTarikh() {
        return tarikh;
    }
    public void setTarikh(String tarikh) {
        this.tarikh = tarikh;
    }
    public String getHuraian() {
        return huraian;
    }
    public void setHuraian(String huraian) {
        this.huraian = huraian;
    }
}
