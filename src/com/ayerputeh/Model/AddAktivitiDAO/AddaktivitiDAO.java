/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ayerputeh.Model.AddAktivitiDAO;

/**
 *
 * @author Hp
 */

import com.ayerputeh.Controller.aktiviti.Aktiviti;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AddaktivitiDAO {

    public static Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ayerputeh?zeroDateTimeBehavior=convertToNull","root","");
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
            PreparedStatement ps=con.prepareStatement("update aktiviti set aktivitinama=?,tarikh=? where id=?");

            ps.setString(1,e.getAktivitinama());
            ps.setString(2,e.getTarikh());
            ps.setString(3,e.getHuraian());

            status=ps.executeUpdate();
        }catch(Exception u){System.out.println(u);}
        return status;
    }
    /*public static int update(Emp e){  //edit atau kemaskini
        int status=0;
        try{
            Connection con= EmpDao.getConnection();
            PreparedStatement ps=con.prepareStatement(
                         "update pelajar set pelajarnama=?,no_ic=?,namaibu=?,namabapa=?,agama=?,warganegara=?,kelas_id=?,alamat=?,poskod=?,negeri=?");

            ps.setString(1,e.getpelajarnama());
            ps.setString(2,e.getno_ic());
            ps.setString(3,e.getnamaibu());
            ps.setString(4,e.getnamabapa());
            ps.setString(5,e.getagama());
            ps.setString(6,e.getwarganegara());
            ps.setString(7,e.getkelas_id());
            ps.setString(8,e.getalamat());
            ps.setString(9,e.getposkod());
            ps.setString(10,e.getnegeri());

            status=ps.executeUpdate();

            con.close();
        }catch(Exception ex){ex.printStackTrace();}

        return status;
    }*/
    public static int delete(int id){  //delete
        int status=0;
        try{
            Connection con= AddaktivitiDAO.getConnection();
            PreparedStatement ps=con.prepareStatement("delete from aktiviti where id=?");
            ps.setInt(1,id);
            status=ps.executeUpdate();

            con.close();
        }catch(Exception e){e.printStackTrace();}

        return status;
    }
    public static Aktiviti getAktivitibyID(int id){
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
    /*public static Emp getEmployeeById(int id){  //class tuk view by id
        Emp e=new Emp();

        try{
            Connection con= EmpDao.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from pelajar where id=?");
            ps.setInt(1,id);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                e.setId(rs.getInt(1));
                e.setpelajarnama(rs.getString(2));
                e.setno_ic(rs.getString(3));
                e.setnamaibu(rs.getString(4));
                e.setnamabapa(rs.getString(5));
                e.setagama(rs.getString(6));
                e.setwarganegara(rs.getString(7));
                e.setkelas_id(rs.getString(8));
                e.setalamat(rs.getString(9));
                e.setposkod(rs.getString(10));
                e.setnegeri(rs.getString(11));
            }
            con.close();
        }catch(Exception ex){ex.printStackTrace();}

        return e;
    }  */
    public static List<Aktiviti> getAllAktiviti(){  //class utk view
        List<Aktiviti> list=new ArrayList<Aktiviti>();

        try{
            Connection con= AddaktivitiDAO.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from pelajar");
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
