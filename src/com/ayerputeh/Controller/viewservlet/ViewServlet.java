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

@WebServlet( "/ViewServlet")
public class ViewServlet extends HttpServlet {  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)   
               throws ServletException, IOException {  
        response.setContentType("text/html");
       
        PrintWriter out=response.getWriter();
        out.print("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\n" +"\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">");
        out.print("<html xmlns=\"http://www.w3.org/1999/xhtml\">");
        out.print("<head>");
        out.print("<title>Sk.Ayer Puteh</title>");
        out.print("<meta name=\"keywords\" content=\"\" />");
        out.print("<meta name=\"description\" content=\"\" />");
        out.print("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />");
        out.print("<meta http-equiv=\"content-language\" content=\"\" />");
        out.print("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" />");
        out.print("<link href=\"http://fonts.googleapis.com/css?family=Roboto+Condensed&amp;subset=latin,latin-ext\" rel=\"stylesheet\" type=\"text/css\" />");
        out.print("</head>");
        out.print("<body>");
        out.print("<div id=\"page\">");
        out.print("<div id=\"header\">");
        out.print("<div id=\"menu\">");
        out.print("<ul>");
        out.print("<li class=\"active\"><a href=\"gurumain.jsp\">Menu Utama</a></li>");
        out.print("<li><a href=\"ViewServlet\">Senarai Pelajar</a></li>");
        out.print("<li><a href=\"gurudaftarpelajar.jsp\">Pendaftaran Pelajar</a></li>");
        out.print("<li><a href=\"EditServlet\">Rekod Akademik</a></li>");
        out.print("<li><a href=\"#\">Aktiviti Sekolah</a></li>");
        out.print("<li><a href=\"#\">Akaun</a></li>");
        out.print("<li><a href=\"logout.jsp\">Log Keluar</a></li>");
        out.print("</ul>");
        out.print("</div><!-- menu -->");
        out.print("</div><!-- header -->");
        out.print("<img id=\"introimg\" src=\"images/Picture1.gif\" width=\"90\" height=\"70\" alt=\"\" />");
        out.print("<div id=\"main\">");
        out.print("<div id=\"sidebar\">");
        out.print("<h2>Misi KPM</h2>");
        out.print("<div class=\"box\">");
        out.print("<p>MEMBANGUNKAN SISTEM PENDIDIKAN BERKUALITI YANG BERTARAF DUNIA BAGI MEMPERKEMBANGKAN POTENSI INDIVIDU SEPENUHNYA DAN MEMENUHI ASPIRASI NEGARA MALAYSIA</p>");
        out.print("</div>");
        out.print("<h2>Visi Sekolah</h2>");
        out.print("<div class=\"box1\">");
        out.print("<p><div class=\"box1\">");
        out.print("<p>MEMBANGUNKAN SISTEM PENDIDIKAN BERKUALITI YANG BERTARAF DUNIA BAGI MEMPERKEMBANGKAN POTENSI INDIVIDU SEPENUHNYA DAN MEMENUHI ASPIRASI NEGARA MALAYSIA</p>");
        out.print("</div></p>");
        out.print("</div>");
        out.print("</div><!-- sidebar -->");
        out.print("	<div id=\"content\">");

        List<Emp> list= EmpDao.getAllEmployees();
        out.print("<table border='1' width='100%'");
        out.print("<tr><th>Id</th><th>Name</th><th>Nombor Kad Pengenalan</th><th>Nama Ibu</th><th>Nama Bapa</th><th>Edit</th><th>Delete</th></tr>");
        for(Emp e:list){
            out.print("<tr><td>"+e.getId()+"</td><td>"+e.getpelajarnama()+"</td><td>"+e.getno_ic()+"</td><td>"+e.getnamaibu()+"</td><td>"+e.getnamabapa()+"</td><td><a href='EditServlet?id="+e.getId()+"'>edit</a></td><td><a href='DeleteServlet?id="+e.getId()+"'>delete</a></td></tr>");

        }
        out.print("</table>");


        out.print(" </div>");
        out.print("<div class=\"clearing\">&nbsp;</div>");
        out.print("</div><!-- main -->");
        out.print("<div id=\"footer\">");
        out.print("<p>&copy;SK.Ayer Puteh. All rights reserved.</p>");
        out.print(" </div>");
        out.print(" </div><!-- page -->");
        out.print("</body>");
        out.print("</html>");

        out.close();
    }  
} 
