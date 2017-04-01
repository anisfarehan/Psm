/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


package com.ayerputeh.Controller.viewservlet;

/**
 *
 * @author Hp
 */

import com.ayerputeh.Model.empdao.EmpDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ayerputeh.Controller.emp.Emp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/ViewServlet")  
public class ViewServlet extends HttpServlet {  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)   
               throws ServletException, IOException {  
        response.setContentType("text/html");
       
        PrintWriter out=response.getWriter();
        out.print("<html>");
        out.print("<head>");
        out.print("<link href=\"default.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />");
        out.print("<link href=\"fonts.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />");
        out.print("<link rel=\"stylesheet\" href=\"css/sky-forms.css\">");
        out.print("</head>");
        out.print("<body>");
        
        out.println("<a href='index.html'>Add New Employee</a>");  
        out.println("<h1>Employees List</h1>");  
          
        List<Emp> list= EmpDao.getAllEmployees();
        out.println("<div id=\"menu\" class=\"container\">");
	out.println("<ul>");		
	out.println("<li class=\"current_page_item\"><a href=\"gurumain.jsp\" accesskey=\"1\" title=\"\">Menu Utama</a></li>");
	out.println("<li><a href=\"gurudaftarpelajar.jsp\" accesskey=\"1\" title=\"\">Pelajar Baharu</a></li>");
	out.println("<li><a href=\"gurupapar.jsp\" accesskey=\"2\" title=\"\">Pengisian Markah</a></li>");
	out.println("<li><a href=\"gurukelas.jsp\" accesskey=\"3\" title=\"\">Pelajar Kelas</a></li>");
	out.println("<li><a href=\"aktivit.jsp\" accesskey=\"4\" title=\"\">Aktivit Sekolah</a></li>");
	out.println("<li><a href=\"keluar.jsp\" accesskey=\"5\" title=\"\">Log Keluar</a></li>");
	out.println("</ul>");	
	out.println("</div>");		
        
        //out.println("");
        out.print("<table border='1' width='100%'");  
        out.print("<tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th><th>Country</th><th>Edit</th><th>Delete</th></tr>");  
        for(Emp e:list){  
         out.print("<tr><td>"+e.getId()+"</td><td>"+e.getpelajarnama()+"</td><td>"+e.getno_ic()+"</td><td>"+e.getnamaibu()+"</td><td>"+e.getnamabapa()+"</td><td><a href='EditServlet?id="+e.getId()+"'>edit</a></td><td><a href='DeleteServlet?id="+e.getId()+"'>delete</a></td></tr>");  
         
        }  
        out.print("</table>");
        out.print("</body>");
         out.print("</html>");
          
        out.close();  
    }  
} 
