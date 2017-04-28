package com.ayerputeh.Model.AddAktivitiDAO;
import com.ayerputeh.Controller.aktiviti.Aktiviti;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Hp on 4/28/2017.
 */
public class AddaktivitiDAO {
    public static Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ayerputeh?zeroDateTimeBehavior=convertToNull","","");
        }catch(Exception e){System.out.println(e);}
        return con;
    }

    public static int save(Aktiviti u){  //siimpan data
        int status=0;
        try{
            Connection con= getConnection();
            PreparedStatement ps=con.prepareStatement("insert into aktiviti(aktivitinama,tarikh,huraian) values(?,?,?)");

            ps.setString(1,u.getAktivitinama());
            ps.setString(2,u.getTarikh());
            ps.setString(3,u.getHuraian());
            status=ps.executeUpdate();


        }catch(Exception e){System.out.println(e);}

        return status;
    }
    /*public static int save(Aktiviti u){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("insert into aktiviti(aktivitinama,tarikh,huraian) values(?,?,?)");
            ps.setString(1,u.getAktivitinama());
            ps.setString(2,u.getTarikh());
            ps.setString(3,u.getHuraian());

            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}
        return status;
    }*/
    public static int update(Aktiviti u){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("update aktiviti set aktivitinama=?,tarikh=?,huraian=? where id=?");
            ps.setString(1,u.getAktivitinama());
            ps.setString(2,u.getTarikh());
            ps.setString(3,u.getHuraian());
            ps.setInt(4,u.getId());
            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}
        return status;
    }
    public static int delete(Aktiviti u){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("delete from aktiviti where id=?");
            ps.setInt(1,u.getId());
            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}

        return status;
    }
    public static List<Aktiviti> getAllRecords(){
        List<Aktiviti> list=new ArrayList<Aktiviti>();

        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("select * from aktiviti");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Aktiviti u=new Aktiviti();
                u.setId(rs.getInt("id"));
                u.setAktivitinama(rs.getString("aktivitinama"));
                u.setTarikh(rs.getString("tarikh"));
                u.setHuraian(rs.getString("huraian"));

                list.add(u);
            }
        }catch(Exception e){System.out.println(e);}
        return list;
    }
    public static Aktiviti getRecordById(int id){
        Aktiviti u=null;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("select * from aktiviti where id=?");
            ps.setInt(1,id);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                u=new Aktiviti();
                u.setId(rs.getInt("id"));
                u.setAktivitinama(rs.getString("aktivitinama"));
                u.setTarikh(rs.getString("tarikh"));
                u.setHuraian(rs.getString("huraian"));
            }
        }catch(Exception e){System.out.println(e);}
        return u;
    }
}
