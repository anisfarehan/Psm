/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ayerputeh.Controller.editservlet2;

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

@WebServlet("/EditServlet2")  
public class EditServlet2 extends HttpServlet {  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)   
          throws ServletException, IOException {  
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
          
      String sid=request.getParameter("id");  
       int id=Integer.parseInt(sid);  
        String pelajarnama=request.getParameter("pelajarnama");  
        String no_ic=request.getParameter("no_ic");  
        String namaibu=request.getParameter("namaibu");  
        String namabapa=request.getParameter("namabapa");  
          
        Emp e=new Emp();  
        e.setId(id);  
        e.setpelajarnama(pelajarnama);  
        e.setno_ic(no_ic);  
        e.setnamaibu(namaibu);  
        e.setnamabapa(namabapa);  
          
        int status= EmpDao.update(e);
        if(status>0){  
            response.sendRedirect("ViewServlet");  
        }else{  
            out.println("Haraf maaf kemaskini anda tidak berjaya");  
        }  
          
        out.close();  
    }  
  
}  
