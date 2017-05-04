package com.ayerputeh.crud.PenyeliaAddAktiviti;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;
/**
 * Created by Hp on 5/3/2017.
 */

@WebServlet("/PenyeliaAddAktiviti")
public class PenyeliaAddAktiviti extends HttpServlet {
    public void service(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ayerputeh?zeroDateTimeBehavior=convertToNull","root","");
            System.out.println(".......90........");
            PreparedStatement pstmt=con.prepareStatement("insert into aktiviti(id,aktivitinama,tarikh,huraian)values(?,?,?,?)");
            pstmt.setString(1,request.getParameter("id"));
            pstmt.setString(2,request.getParameter("aktivitinama"));
            pstmt.setString(3,request.getParameter("tarikh"));
            pstmt.setString(4,request.getParameter("huraian"));

            int n=pstmt.executeUpdate();

            System.out.println(".......90........");
            if(n>0)
            {
                response.sendRedirect("./PenyeliaAddAktiviti.jsp?msg=Penambahan Aktiviti Berjaya");
            }

            System.out.println(".......08........");
        }catch(Exception e)
        {
            e.printStackTrace();
        }


    }
}
