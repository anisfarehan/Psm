package com.ayerputeh.Model.SubjekDAO;

import com.ayerputeh.GlobalServlet.DBConnectionManager;

import java.sql.*;
import java.util.List;

/**
 * Created by Hp on 4/4/2017.
 */
public class SubjekDAO extends DBConnectionManager  {
    protected transient boolean isNewRecord = true;
    protected transient String tableName = "subjek";

    /******************************
     * TABLE COLUMN NAME
     *******************************/
    private  int id;
    public String subjeknama, guru_id,kelasid;
    /******************************
     * DATABASE VARIABLES
     *******************************/
    //list is working as a database
    private transient List<SubjekDAO> logins;
    private transient Connection conn = getConnection();
    private transient Statement stmt = null;
    private transient PreparedStatement preparedStmt = null;
    private transient ResultSet rs = null;

    public SubjekDAO() {
        this.isNewRecord = true;
    }

    /******************************
     * ATTRIBUTES/COLUMN SETTER & GETTER
     *******************************/
    public void setSubjeknama(String subjeknama) {

        this.subjeknama= subjeknama;
    }

    public void setKelasID(String kelasid) {

        this.kelasid = kelasid;
    }

    public void setGuruID(String guru_id) {

        this.guru_id = guru_id;
    }
    public String getSubjeknama() {

        return this.subjeknama;
    }

    public String getKelasid() {

        return this.kelasid;
    }

    public String getGuru_id() {

        return this.guru_id;
    }

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
            this.preparedStmt = this.conn.prepareStatement("INSERT INTO " + this.tableName + " (subjeknama, guru_id, kelasid) VALUES (?, ?, ?)");
            this.preparedStmt.setString(1, this.subjeknama);
            this.preparedStmt.setString(2, this.guru_id);
            this.preparedStmt.setString(3, this.kelasid);

            // execute the preparedstatement
            this.preparedStmt.execute();
            this.conn.close();

            System.out.print("DATA CREATED FROM " + this.tableName);
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage(), e); //or your exceptions
        }
    }

    /*
    * READ
    * */
    //retrive single login from the database
    public SubjekDAO read(int id) {
        this.isNewRecord = false;

        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM " + this.tableName + " WHERE id=? LIMIT 1");
            ps.setInt(1, id);
            this.rs = ps.executeQuery();

            SubjekDAO subjekDAO = null;
            while (rs.next()) {
                subjekDAO = this.processRow(rs);
            }

            this.conn.close();
//            return this.logins.get(id - 1);

            System.out.print("DATA SELECTED FROM " + this.tableName);
            return subjekDAO;
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

            this.preparedStmt = this.conn.prepareStatement("UPDATE " + this.tableName + " SET subjeknama=?, guru_id=?,kelas_id=?  WHERE id=?");
            this.preparedStmt.setString(1, this.subjeknama);
            this.preparedStmt.setString(2, this.guru_id);
            this.preparedStmt.setString(3, this.kelasid);
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
    public SubjekDAO findByGuruID(int guru_id) {
        this.isNewRecord = false;

        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM " + this.tableName + " WHERE guru_id=? LIMIT 1");
            ps.setInt(1, guru_id);
            this.rs = ps.executeQuery();

            SubjekDAO subjekDAO= null;
            while (rs.next()) {
                subjekDAO = this.processRow(rs);
            }

            this.conn.close();
//            return this.logins.get(id - 1);

            System.out.print("DATA SELECTED FROM " + this.tableName);
            return subjekDAO;
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage(), e); //or your exceptions
        }

    }

    //retrive list of logins from the database
    public List<SubjekDAO> getAllSubjek() {
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

    protected SubjekDAO processRow(ResultSet rs) throws SQLException {
        this.id = rs.getInt("id");
        this.subjeknama = rs.getString("subjeknama");
        this.guru_id= rs.getString("guru_id");
        this.kelasid= rs.getString("kelasid");
        return this;
    }
}
