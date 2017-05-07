package com.ayerputeh.Model.AktivitiDAO;

import com.ayerputeh.GlobalServlet.DBConnectionManager;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Hp on 4/5/2017.
 */
public class AktivitiDAO extends DBConnectionManager{
    protected transient boolean isNewRecord = true;
    protected transient String tableName = "aktiviti";

    /******************************
     * TABLE COLUMN NAME
     *******************************/
    private int id;
    public String aktivitinama, huraian,tarikh;

    /******************************
     * DATABASE VARIABLES
     *******************************/
    //list is working as a database
    private transient List<AktivitiDAO> logins;
    private transient Connection conn = getConnection();
    private transient Statement stmt = null;
    private transient PreparedStatement preparedStmt = null;
    private transient ResultSet rs = null;

    public AktivitiDAO() {
        this.isNewRecord = true;
    }

    /******************************
     * ATTRIBUTES/COLUMN SETTER & GETTER
     *******************************/
    /*public void setKelasNama(String KelasNama) {
        this.kelasnama = KelasNama;
    }

    public void setGuruID(int guru_id) {
        this.guru_id = guru_id;
    }

    public int getID() {
        return this.id;
    }

    public String getNRIC() {
        return this.number_ic;
    }

    public String getPassword() {
        return this.password;
    }

    public String getStatus() {
        return this.status;
    }*/


    /********************************
     *
     * IMPLEMENT INTERFACE
     *
     * CRUD Operations
     *********************************/

    /*
    * INSERT / UPDATE
    * */
    public void save() {
        if (this.isNewRecord) {//INSERT
            this.create();
        } else {//UPDATE
            this.update();
        }
    }

    /*
    * INSERT
    * */
    public void create() {
        this.isNewRecord = true;

        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            // create the mysql insert preparedstatement
            this.preparedStmt = this.conn.prepareStatement("INSERT INTO " + this.tableName + " (aktivitinama, tarikh, huraian) VALUES (?, ?, ?)");
            this.preparedStmt.setString(1, this.aktivitinama);
            this.preparedStmt.setString(2, this.tarikh);
            this.preparedStmt.setString(3, this.huraian);

            // execute the preparedstatement
            this.preparedStmt.execute();
            this.conn.close();

            System.out.print("DATA CREATED FROM " + this.tableName);
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage(), e); //or your exceptions
        }
    }

    /*
    * SELECT
    * */
    //retrive single login from the database
    public AktivitiDAO read(int id) {
        this.isNewRecord = false;

        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM " + this.tableName + " WHERE id=? LIMIT 1");
            ps.setInt(1, id);
            this.rs = ps.executeQuery();

            AktivitiDAO aktivitiDAO= null;
            while (rs.next()) {
                aktivitiDAO = this.processRow(rs);
            }

            this.conn.close();
//            return this.logins.get(id - 1);

            System.out.print("DATA SELECTED FROM " + this.tableName);
            return aktivitiDAO;
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage(), e); //or your exceptions
        }

    }

    /*
    * UPDATE
    * */
    public void update() {
        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            this.preparedStmt = this.conn.prepareStatement("UPDATE " + this.tableName + " SET aktivitinama=?, tarikh=?, huraian=? WHERE id=?");
            this.preparedStmt.setString(1, this.aktivitinama);
            this.preparedStmt.setString(2, this.tarikh);
            this.preparedStmt.setString(3, this.huraian);
            this.preparedStmt.setInt(4, this.id);

            // execute the preparedstatement
            this.preparedStmt.executeUpdate();
            this.conn.close();
            System.out.print("DATA UPDATED FROM " + this.tableName);
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage(), e); //or your exceptions
        }
    }

    /*
    * DELETE
    * */
    public void delete() {
        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            this.preparedStmt = this.conn.prepareStatement("DELETE FROM " + this.tableName + " WHERE id = ?");
            this.preparedStmt.setInt(1, this.id);

            // execute the preparedstatement
            preparedStmt.execute();
            this.conn.close();
            System.out.print("DATA DELETED FROM " + this.tableName);
        } catch (Exception e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
        }

    }

    //retrive single login from the database
    public List<AktivitiDAO> findByID(int id) {
        this.isNewRecord = false;

        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM " + this.tableName + " WHERE id=?");
            ps.setInt(1, id);
            this.rs = ps.executeQuery();

            List<AktivitiDAO> aktivitiDAOs= new ArrayList<>();
            while (rs.next()) {
                aktivitiDAOs.add(this.processRow(rs));
            }

            this.conn.close();
//            return this.logins.get(id - 1);

            System.out.print("DATA SELECTED FROM " + this.tableName);
            return aktivitiDAOs;
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage(), e); //or your exceptions
        }

    }

    //retrive list of logins from the database
    public List<AktivitiDAO> getAllAktiviti() {
        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM " + this.tableName);
            this.rs = ps.executeQuery();

            while (rs.next()) {
                this.logins.add(this.processRow(rs));
            }

            this.conn.close();

            System.out.print("DATA SELECTED FROM " + this.tableName);
            return this.logins;
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage(), e); //or your exceptions
        }
    }

    protected AktivitiDAO processRow(ResultSet rs) throws SQLException {
        this.id = rs.getInt("id");
        this.aktivitinama = rs.getString("aktivitinama");
        this.tarikh = rs.getString("tarikh");
        this.huraian = rs.getString("huraian");
        return this;
    }
}
