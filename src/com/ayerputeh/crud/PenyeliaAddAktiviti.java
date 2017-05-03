package com.ayerputeh.crud;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;
/**
 * Created by Hp on 5/3/2017.
 */
@WebServlet("/PenyeliaAddGuru")
public class PenyeliaAddAktiviti extends HttpServlet {

    public void service(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException
    {

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ayerputeh?zeroDateTimeBehavior=convertToNull","root","");
            System.out.println(".......11........");
            PreparedStatement pstmt=con.prepareStatement("insert into aktiviti(id,aktivitinama,tarikh,huraian)values(?,?,?,?)");
            pstmt.setString(1,request.getParameter("aid"));
            pstmt.setString(2,request.getParameter("aktivitinama"));
            pstmt.setString(3,request.getParameter("tarikh"));
            pstmt.setString(4,request.getParameter("huraian"));



            int n=pstmt.executeUpdate();

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
