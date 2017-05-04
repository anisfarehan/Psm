package com.ayerputeh.crud.GuruAddPelajar;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;
/**
 * Created by Hp on 5/5/2017.
 */
@WebServlet("/GuruAddPelajar")
public class GuruAddPelajar extends HttpServlet{

    public void service(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ayerputeh?zeroDateTimeBehavior=convertToNull","root","");
            System.out.println(".......11........");
            PreparedStatement pstmt=con.prepareStatement("insert into pelajar(id,pelajarnama,no_ic,namaibu,namabapa,agama,warganegara,kelas_id,alamat,poskod,negeri)values(?,?,?,?,?,?,?,?,?,?,?)");
            pstmt.setString(1,request.getParameter("pid"));
            pstmt.setString(2,request.getParameter("pelajarnama"));
            pstmt.setString(3,request.getParameter("no_ic"));
            pstmt.setString(4,request.getParameter("namaibu"));
            pstmt.setString(5,request.getParameter("namabapa"));
            pstmt.setString(6,request.getParameter("agama"));
            pstmt.setString(7,request.getParameter("warganegara"));
            pstmt.setString(8,request.getParameter("kelas_id"));
            pstmt.setString(9,request.getParameter("alamat"));
            pstmt.setString(10,request.getParameter("poskod"));
            pstmt.setString(11,request.getParameter("negeri"));


            int n=pstmt.executeUpdate();

            pstmt=con.prepareStatement("insert into login values(?,?,?,?,?,?,?)");
            pstmt.setString(1,request.getParameter("pid"));
            pstmt.setString(2,request.getParameter("no_ic"));
            pstmt.setString(3,request.getParameter("no_ic"));
            pstmt.setString(4,"Pelajar");
            pstmt.setString(5,request.getParameter("pelajarnama"));
            pstmt.setString(6,"");
            pstmt.setString(7,"pelajar");
            n=pstmt.executeUpdate();

            System.out.println(".......13........");
            if(n>0)
            {
                response.sendRedirect("./gurudaftarpelajar.jsp?msg=Pendaftaran berjaya");
            }

            System.out.println(".......18........");
        }catch(Exception e)
        {
            e.printStackTrace();
        }


    }
}
