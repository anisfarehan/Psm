/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ayerputeh.Controller.saveservlet;

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

@WebServlet("/SaveServlet")  
public class SaveServlet extends HttpServlet {  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)   
         throws ServletException, IOException {  
        response.setContentType("text/html");
      
        PrintWriter out=response.getWriter();  
          
        String pelajarnama=request.getParameter("pelajarnama");  
        String no_ic=request.getParameter("no_ic");  
        String namaibu=request.getParameter("namaibu");  
        String namabapa=request.getParameter("namabapa");  
        String agama=request.getParameter("agama");  
        String warganegara=request.getParameter("warganegara");  
        String kelas_id=request.getParameter("kelas_id");  
        String alamat=request.getParameter("alamat");  
        String poskod=request.getParameter("poskod");  
        String negeri=request.getParameter("negeri");  
          
        Emp e=new Emp();  
        e.setpelajarnama(pelajarnama);  
        e.setno_ic(no_ic);  
        e.setnamaibu(namaibu);  
        e.setnamabapa(namabapa);  
        e.setagama(agama);  
        e.setwarganegara(warganegara);  
        e.setkelas_id(kelas_id);  
        e.setalamat(alamat);  
        e.setposkod(poskod);  
        e.setnegeri(negeri);  
          
        int status= EmpDao.save(e);
        if(status>0){  
            out.print("<h2>Pendaftaran berjaya!</h2>");  
            request.getRequestDispatcher("gurumain.jsp").include(request, response);  
        }else{  
            out.println("Maaf pendaftaran tidak berjaya");  
        }  
          
        out.close();  
    }  
  
}  
