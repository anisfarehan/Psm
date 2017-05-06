package com.ayerputeh.Model.Penggal1DAO;

import com.ayerputeh.GlobalServlet.DBConnectionManager;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Hp on 4/5/2017.
 */
public class Penggal1DAO extends DBConnectionManager{
    protected transient boolean isNewRecord = true;
    protected transient String tableName = "penggal1";

    /******************************
     * TABLE COLUMN NAME
     *******************************/
    private int id;
    public int subjek_id;
    public String jumlah1,no_ic;


    /******************************
     * DATABASE VARIABLES
     *******************************/
    //list is working as a database
    private transient List<Penggal1DAO> logins;
    private transient Connection conn = getConnection();
    private transient Statement stmt = null;
    private transient PreparedStatement preparedStmt = null;
    private transient ResultSet rs = null;

    public Penggal1DAO() {
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
            this.preparedStmt = this.conn.prepareStatement("INSERT INTO " + this.tableName + " (subjek_id, jumlah1) VALUES (?, ?, ?)");
            this.preparedStmt.setInt(1, this.subjek_id);
            this.preparedStmt.setString(2, this.jumlah1);
            this.preparedStmt.setString(3, this.no_ic);

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
    public Penggal1DAO read(int id) {
        this.isNewRecord = false;

        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM " + this.tableName + " WHERE id=? LIMIT 1");
            ps.setInt(1, id);
            this.rs = ps.executeQuery();

            Penggal1DAO penggal1DAO= null;
            while (rs.next()) {
                penggal1DAO = this.processRow(rs);
            }

            this.conn.close();
//            return this.logins.get(id - 1);

            System.out.print("DATA SELECTED FROM " + this.tableName);
            return penggal1DAO;
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

            this.preparedStmt = this.conn.prepareStatement("UPDATE " + this.tableName + " SET subjek_id=?, jumlah1=?, no_ic=? WHERE id=?");
            this.preparedStmt.setInt(1, this.subjek_id);
            this.preparedStmt.setString(2, this.jumlah1);
            this.preparedStmt.setString(3, this.no_ic);
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
    public Penggal1DAO findByNRIC(String NRIC) {
        this.isNewRecord = false;

        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM " + this.tableName + " WHERE no_ic=? LIMIT 1");
            ps.setString(1, NRIC);
            this.rs = ps.executeQuery();

            Penggal1DAO penggal1DAO= null;
            while (rs.next()) {
                penggal1DAO= this.processRow(rs);
            }

            this.conn.close();
//            return this.logins.get(id - 1);

            System.out.print("DATA SELECTED FROM " + this.tableName);
            return penggal1DAO;
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage(), e); //or your exceptions
        }

    }


    //retrive list of logins from the database
    public List<Penggal1DAO> getAllKelas() {
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

    protected Penggal1DAO processRow(ResultSet rs) throws SQLException {
        this.id = rs.getInt("id");
        this.subjek_id = rs.getInt("subjek_id");
        this.jumlah1 = rs.getString("jumlah1");
        this.no_ic = rs.getString("no_ic");
        return this;
    }
}
