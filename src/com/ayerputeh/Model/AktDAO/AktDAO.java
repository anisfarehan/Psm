package com.ayerputeh.Model.AktDAO;

import com.ayerputeh.Controller.Aktiviti.Aktiviti;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Hp on 5/4/2017.
 */
public class AktDAO {

    public static Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ayerputeh?zeroDateTimeBehavior=convertToNull","root","");
        }catch(Exception u){System.out.println(u);}
        return con;
    }

    public static int save(Aktiviti e){  //siimpan data
        int status=0;

        try{
            Connection con= getConnection();
            PreparedStatement ps=con.prepareStatement("insert into aktiviti(aktivitinama,tarikh,huraian) values (?,?,?)");

            ps.setString(1,e.getAktivitinama());
            ps.setString(2,e.getTarikh());
            ps.setString(3,e.getHuraian());

            status=ps.executeUpdate();


        }catch(Exception u){System.out.println(u);}

        return status;
    }
    public static int update(Aktiviti e){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("update aktiviti set aktivitinama=?,tarikh=?,huraian=? where id=?");

            ps.setString(1,e.getAktivitinama());
            ps.setString(2,e.getTarikh());
            ps.setString(3,e.getHuraian());

            status=ps.executeUpdate();
        }catch(Exception u){System.out.println(u);}
        return status;
    }

    public static int delete(int id){  //delete
        int status=0;
        try{
            Connection con= AktDAO.getConnection();
            PreparedStatement ps=con.prepareStatement("delete from aktiviti where id=?");
            ps.setInt(1,id);
            status=ps.executeUpdate();

            con.close();
        }catch(Exception e){e.printStackTrace();}

        return status;
    }
    public static Aktiviti getEmployeeById(int id){
        Aktiviti e=null;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("select * from aktiviti where id=?");
            ps.setInt(1,id);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                e=new Aktiviti();

                e.setId(rs.getInt("id"));
                e.setAktivitinama(rs.getString("aktivitinama"));
                e.setTarikh(rs.getString("tarikh"));
                e.setHuraian(rs.getString("huraian"));

            }
        }catch(Exception u){System.out.println(u);}
        return e;
    }

    public static List<Aktiviti> getAllAktiviti(){  //class utk view
        List<Aktiviti> list=new ArrayList<Aktiviti>();

        try{
            Connection con= AktDAO.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from aktiviti");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Aktiviti e=new Aktiviti();
                e.setId(rs.getInt(1));
                e.setAktivitinama(rs.getString(2));
                e.setTarikh(rs.getString(3));
                e.setHuraian(rs.getString(4));

                list.add(e);
            }
            con.close();
        }catch(Exception e){e.printStackTrace();}

        return list;
    }
}
