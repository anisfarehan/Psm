package com.ayerputeh.Model.SainsDAO;

import com.ayerputeh.GlobalServlet.DBConnectionManager;

import java.sql.*;
import java.util.List;

/**
 * Created by Hp on 5/13/2017.
 */
public class SainsDAO extends DBConnectionManager {
    protected transient boolean isNewRecord = true;
    protected transient String tableName = "sains";

    /******************************
     * TABLE COLUMN NAME
     *******************************/
    private  int id;
    public String no_ic, guruic, gred, gred1, gred2;
    public int penggal1,penggal2, exam;

    /******************************
     * DATABASE VARIABLES
     *******************************/
    //list is working as a database
    private transient List<SainsDAO> logins;
    private transient Connection conn = getConnection();
    private transient Statement stmt = null;
    private transient PreparedStatement preparedStmt = null;
    private transient ResultSet rs = null;

    public SainsDAO() {
        this.isNewRecord = true;
    }

    /******************************
     * ATTRIBUTES/COLUMN SETTER & GETTER
     *******************************/
    public void setNo_ic(String no_ic) {
        this.no_ic= no_ic;
    }

    public void setGuruic(String guruic) {
        this.guruic= guruic;
    }

    public void setGred(String gred) {
        this.gred= gred;
    }

    public void setGred1(String gred1) {this.gred1= gred1;}

    public void setGred2(String gred2) {this.gred2= gred2;}

    public void setPenggal1(int penggal1) {this.penggal1= penggal1;}

    public void setPenggal2(int penggal2) {this.penggal2= penggal2;}

    public void setExam(int exam) {this.exam= exam;}

    public int getId() {
        return this.id;
    }

    public String getNo_ic() {
        return this.no_ic;
    }

    public String getGuruic() {
        return this.guruic;
    }

    public String getGred() {
        return this.gred;
    }

    public String getGred1() {return this.gred1;}

    public String getGred2() {return this.gred2;}

    public int getPenggal1() {return this.penggal1;}

    public int getPenggal2() {return this.penggal2;}

    public int getExam() {return this.exam;}



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
            this.preparedStmt = this.conn.prepareStatement("INSERT INTO " + this.tableName + " (no_ic, guruic, gred,gred1,gred2,penggal1,penggal2,exam) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
            this.preparedStmt.setString(1, this.no_ic);
            this.preparedStmt.setString(2, this.guruic);
            this.preparedStmt.setString(3, this.gred);
            this.preparedStmt.setString(4, this.gred1);
            this.preparedStmt.setString(5, this.gred2);
            this.preparedStmt.setInt(6, this.penggal1);
            this.preparedStmt.setInt(7, this.penggal1);
            this.preparedStmt.setInt(8, this.exam);

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
    public SainsDAO read(int id) {
        this.isNewRecord = false;

        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM " + this.tableName + " WHERE id=? LIMIT 1");
            ps.setInt(1, id);
            this.rs = ps.executeQuery();

            SainsDAO sainsDAO= null;
            while (rs.next()) {
                sainsDAO = this.processRow(rs);
            }

            this.conn.close();
//            return this.logins.get(id - 1);

            System.out.print("DATA SELECTED FROM " + this.tableName);
            return sainsDAO;
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

            this.preparedStmt = this.conn.prepareStatement("UPDATE " + this.tableName + " SET no_ic=?, guruic=?, gred=?,gred1=?, gred2=?, penggal1=?,penggal2=?, exam=? WHERE id=?");
            this.preparedStmt.setString(1, this.no_ic);
            this.preparedStmt.setString(2, this.guruic);
            this.preparedStmt.setString(3, this.gred);
            this.preparedStmt.setString(4, this.gred1);
            this.preparedStmt.setString(5, this.gred2);
            this.preparedStmt.setInt(6, this.penggal1);
            this.preparedStmt.setInt(7, this.penggal2);
            this.preparedStmt.setInt(8, this.exam);
            this.preparedStmt.setInt(9, this.id);

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
    public SainsDAO findByNRIC(String NRIC) {
        this.isNewRecord = false;

        try {
            if (this.conn.isClosed())
                this.conn = getConnection();

            PreparedStatement ps = this.conn.prepareStatement("SELECT * FROM " + this.tableName + " WHERE number_ic=? LIMIT 1");
            ps.setString(1, NRIC);
            this.rs = ps.executeQuery();

            SainsDAO sainsDAO= null;
            while (rs.next()) {
                sainsDAO = this.processRow(rs);
            }

            this.conn.close();
//            return this.logins.get(id - 1);

            System.out.print("DATA SELECTED FROM " + this.tableName);
            return sainsDAO;
        } catch (SQLException e) {
            throw new RuntimeException(e.getMessage(), e); //or your exceptions
        }

    }

    //retrive list of logins from the database
    public List<SainsDAO> getAllLogins() {
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

    protected SainsDAO processRow(ResultSet rs) throws SQLException {
        this.id = rs.getInt("id");
        this.no_ic = rs.getString("no_ic");
        this.guruic = rs.getString("guruic");
        this.gred = rs.getString("gred");
        this.gred1 = rs.getString("gred1");
        this.gred2 = rs.getString("gred2");
        this.penggal1= rs.getInt("penggal1");
        this.penggal2= rs.getInt("penggal2");
        this.exam= rs.getInt("exam");
        return this;
    }
}
