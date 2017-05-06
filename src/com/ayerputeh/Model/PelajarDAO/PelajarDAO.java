package com.ayerputeh.Model.PelajarDAO;

import com.ayerputeh.GlobalServlet.DBConnectionManager;
import java.sql.*;
import java.util.List;

/**
 * Created by Hp on 4/4/2017.
 */
public class PelajarDAO extends DBConnectionManager{
    protected transient boolean isNewRecord = true;
    protected transient String tableName = "pelajar";

    /******************************
     * TABLE COLUMN NAME
     *******************************/
    private  int id;
    public String pelajarnama, no_ic, namaibu, namabapa, agama, warganegara, kelas_id,alamat,poskod,negeri;

    /******************************
     * DATABASE VARIABLES
     *******************************/
    //list is working as a database
    private transient List<PelajarDAO> logins;
    private transient Connection conn = getConnection();
    private transient Statement stmt = null;
    private transient PreparedStatement preparedStmt = null;
    private transient ResultSet rs = null;

    public PelajarDAO() {
        this.isNewRecord = true;
    }

    /******************************
     * ATTRIBUTES/COLUMN SETTER & GETTER
     *******************************/
  /*  public void setNRIC(String NRIC) {
        this.number_ic = NRIC;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setStatus(String status) {
        this.status = status;
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
    }
*/

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
            this.preparedStmt = this.conn.prepareStatement("INSERT INTO " + this.tableName + " (pelajarnama, no_ic, namaibu, namabapa, agama, warganegara, kelas_id, alamat, poskod, negeri) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ? ,?)");
            this.preparedStmt.setString(1, this.pelajarnama);
            this.preparedStmt.setString(2, this.no_ic);
            this.preparedStmt.setString(3, this.namaibu);
            this.preparedStmt.setString(4, this.namabapa);
            this.preparedStmt.setString(5, this.agama);
            this.preparedStmt.setString(6, this.warganegara);
            this.preparedStmt.setString(7, this.kelas_id);
            this.preparedStmt.setString(8, this.alamat);
            this.preparedStmt.setString(9, this.poskod);
            this.preparedStmt.setString(10, this.negeri);

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
    public PelajarDAO read(int id) {
        this.isNewRecord = false;

        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM " + this.tableName + " WHERE id=? LIMIT 1");
            ps.setInt(1, id);
            this.rs = ps.executeQuery();

            PelajarDAO pelajarDAO= null;
            while (rs.next()) {
                pelajarDAO = this.processRow(rs);
            }

            this.conn.close();
//            return this.logins.get(id - 1);

            System.out.print("DATA SELECTED FROM " + this.tableName);
            return pelajarDAO;
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

            this.preparedStmt = this.conn.prepareStatement("UPDATE " + this.tableName + " SET pelajarnama=?, no_ic=?, namaibu=?, namabapa=?, agama=?, warganegara=?, kelas_id=?, alamat=?, poskod=?, negeri=? WHERE id=?");
            this.preparedStmt.setString(1, this.pelajarnama);
            this.preparedStmt.setString(2, this.no_ic);
            this.preparedStmt.setString(3, this.namaibu);
            this.preparedStmt.setString(4, this.namabapa);
            this.preparedStmt.setString(5, this.agama);
            this.preparedStmt.setString(6, this.warganegara);
            this.preparedStmt.setString(7, this.kelas_id);
            this.preparedStmt.setString(8, this.alamat);
            this.preparedStmt.setString(9, this.poskod);
            this.preparedStmt.setString(10, this.negeri);
            this.preparedStmt.setInt(11, this.id);


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
    public PelajarDAO findByNRIC(String NRIC) {
        this.isNewRecord = false;

        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM " + this.tableName + " WHERE no_ic=? LIMIT 1");
            ps.setString(1, NRIC);
            this.rs = ps.executeQuery();

            PelajarDAO pelajarDAO= null;
            while (rs.next()) {
                pelajarDAO= this.processRow(rs);
            }

            this.conn.close();
//            return this.logins.get(id - 1);

            System.out.print("DATA SELECTED FROM " + this.tableName);
            return pelajarDAO;
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage(), e); //or your exceptions
        }

    }

    //retrive list of logins from the database
    public List<PelajarDAO> getAllPelajar() {
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

    protected PelajarDAO processRow(ResultSet rs) throws SQLException {
        this.id = rs.getInt("id");
        this.pelajarnama = rs.getString("pelajarnama");
        this.no_ic = rs.getString("no_ic");
        this.namaibu = rs.getString("namaibu");
        this.namabapa = rs.getString("namabapa");
        this.agama = rs.getString("agama");
        this.warganegara = rs.getString("warganegara");
        this.kelas_id = rs.getString("kelas_id");
        this.alamat = rs.getString("alamat");
        this.poskod = rs.getString("poskod");
        this.negeri = rs.getString("negeri");
        return this;
    }
}
