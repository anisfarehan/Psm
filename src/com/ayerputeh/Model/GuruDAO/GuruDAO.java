package com.ayerputeh.Model.GuruDAO;

import com.ayerputeh.GlobalServlet.DBConnectionManager;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
/**
 * Created by Hp on 4/3/2017.
 */
public class GuruDAO extends DBConnectionManager{
    protected transient boolean isNewRecord = true;
    protected transient String tableName = "guru";

    /******************************
     * TABLE COLUMN NAME
     *******************************/
    private int id;
    public String gurunama;
    public int no_ic, subjek_id,kelas_id;

    /******************************
     * DATABASE VARIABLES
     *******************************/
    //list is working as a database
    private transient List<com.ayerputeh.Model.GuruDAO.GuruDAO> gurus;
    private transient Connection conn = getConnection();
    private transient Statement stmt = null;
    private transient PreparedStatement preparedStmt = null;
    private transient ResultSet rs = null;

    public GuruDAO() {
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

            // create the mysql insert preparedstatement add data masuk dalam database
            this.preparedStmt = this.conn.prepareStatement("INSERT INTO " + this.tableName + " (gurunama, no_ic, subjek_id,kelas_id) VALUES (?, ?, ?, ?, ?)");
            this.preparedStmt.setString(1, this.gurunama);
            this.preparedStmt.setInt(2, this.no_ic);
            this.preparedStmt.setInt(3, this.subjek_id);
            this.preparedStmt.setInt(4, this.kelas_id);

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
    public com.ayerputeh.Model.GuruDAO.GuruDAO read(int id) {
        this.isNewRecord = false;

        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM " + this.tableName + " WHERE id=? LIMIT 1");
            ps.setInt(1, id);
            this.rs = ps.executeQuery();

            com.ayerputeh.Model.GuruDAO.GuruDAO GuruDAO = null;
            while (rs.next()) {
                GuruDAO = this.processRow(rs);
            }

            this.conn.close();
//            return this.gurus.get(id - 1);

            System.out.print("DATA SELECTED FROM " + this.tableName);
            return GuruDAO;
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

            this.preparedStmt = this.conn.prepareStatement("UPDATE " + this.tableName + " SET gurunama=?, no_ic=?, subjek_id=?, kelas_id=? WHERE id=?");
            this.preparedStmt.setString(1, this.gurunama);
            this.preparedStmt.setInt(2, this.no_ic);
            this.preparedStmt.setInt(3, this.subjek_id);
            this.preparedStmt.setInt(4, this.kelas_id);

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
    public List<com.ayerputeh.Model.GuruDAO.GuruDAO> findByGuruID(int guru_id) {
        this.isNewRecord = false;

        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM " + this.tableName + " WHERE guru_id=?");
            ps.setInt(1, id);
            this.rs = ps.executeQuery();

            List<com.ayerputeh.Model.GuruDAO.GuruDAO> guruDAOs = new ArrayList<>();
            while (rs.next()) {
                guruDAOs.add(this.processRow(rs));
            }

            this.conn.close();
//            return this.gurus.get(id - 1);

            System.out.print("DATA SELECTED FROM " + this.tableName);
            return guruDAOs;
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage(), e); //or your exceptions
        }

    }

    protected com.ayerputeh.Model.GuruDAO.GuruDAO processRow(ResultSet rs) throws SQLException {
        this.id = rs.getInt("id");
        this.no_ic = rs.getInt("no_ic");
        this.subjek_id = rs.getInt("subjek_id");
        this.kelas_id = rs.getInt("kelas_id");
        this.gurunama = rs.getString("gurunama");
        return this;
    }

    //retrive list of gurus from the database
    private List<com.ayerputeh.Model.GuruDAO.GuruDAO> getAllGuru() {
        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM " + this.tableName);
            this.rs = ps.executeQuery();

            while (rs.next()) {
                this.gurus.add(this.processRow(rs));
            }

            this.conn.close();

            System.out.print("DATA SELECTED FROM " + this.tableName);
            return this.gurus;
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage(), e); //or your exceptions
        }
    }
}


