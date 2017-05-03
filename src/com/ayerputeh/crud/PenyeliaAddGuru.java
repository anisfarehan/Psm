package com.ayerputeh.crud;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;
/**
 * Created by Hp on 5/3/2017.
 */
@WebServlet("/PenyeliaAddGuru")
public class PenyeliaAddGuru extends HttpServlet{

    public void service(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ayerputeh?zeroDateTimeBehavior=convertToNull","root","");
            System.out.println(".......11........");
            PreparedStatement pstmt=con.prepareStatement("insert into guru(id,gurunama,no_ic,subjek_id,kelas_id)values(?,?,?,?,?)");
            pstmt.setString(1,request.getParameter("sid"));
            pstmt.setString(2,request.getParameter("gurunama"));
            pstmt.setString(3,request.getParameter("no_ic"));
            pstmt.setString(4,request.getParameter("subjek_id"));
            pstmt.setString(5,request.getParameter("kelas_id"));


            int n=pstmt.executeUpdate();

            pstmt=con.prepareStatement("insert into login values(?,?,?,?,?,?,?)");
            pstmt.setString(1,request.getParameter("sid"));
            pstmt.setString(2,request.getParameter("no_ic"));
            pstmt.setString(3,request.getParameter("no_ic"));
            pstmt.setString(4,"Guru");
            pstmt.setString(5,request.getParameter("gurunama"));
            pstmt.setString(6,"guru");
            pstmt.setString(7,"");
            n=pstmt.executeUpdate();
            System.out.println(".......13........");
            if(n>0)
            {
                response.sendRedirect("./PenyeliaAddGuru.jsp?msg=Pendaftaran berjaya");
            }

            System.out.println(".......18........");
        }catch(Exception e)
        {
            e.printStackTrace();
        }


    }
}
