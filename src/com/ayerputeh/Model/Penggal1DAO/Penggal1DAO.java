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
        public String subjek_id,jumlah1,no_ic;


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
    public void setSubjek_id(String subjek_id)
    {
        this.subjek_id= subjek_id;
    }

    public void setJumlah1(String jumlah1)
    {
        this.jumlah1= jumlah1;
    }
    public void setNo_ic(String no_ic)
    {
        this.no_ic= no_ic;
    }

    public int getId()
    {
        return this.id;
    }

    public String getSubjek_id()
    {
        return this.subjek_id;
    }

    public String getJumlah1()
    {
        return this.jumlah1;
    }

     public String getNo_ic()
     {
        return this.no_ic;
    }


    /********************************
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
            this.preparedStmt = this.conn.prepareStatement("INSERT INTO " + this.tableName + " (subjek_id, jumlah1,no_ic) VALUES (?, ?, ?)");
            this.preparedStmt.setString(1, this.subjek_id);
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
            this.preparedStmt.setString(1, this.subjek_id);
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

    public static List<Penggal1DAO> getAll(){  //class utk view
        List<Penggal1DAO> list=new ArrayList<Penggal1DAO>();

        try{
            Connection con= Penggal1DAO.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from penggal1 WHERE subjek_id='1'");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Penggal1DAO e=new Penggal1DAO();
                e.setSubjek_id(rs.getString(2));
                e.setJumlah1(rs.getString(3));
                e.setNo_ic(rs.getString(4));

                list.add(e);
            }
            con.close();
        }catch(Exception e){e.printStackTrace();}

        return list;
    }

    protected Penggal1DAO processRow(ResultSet rs) throws SQLException {
        this.id = rs.getInt("id");
        this.subjek_id = rs.getString("subjek_id");
        this.jumlah1 = rs.getString("jumlah1");
        this.no_ic = rs.getString("no_ic");

        return this;
    }



}
