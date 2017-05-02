/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ayerputeh.Controller.PAddAktiServlet;

/**
 *
 * @author Hp
 */

import com.ayerputeh.Model.AddAktivitiDAO.AddaktivitiDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ayerputeh.Controller.aktiviti.Aktiviti;


import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/paddaktiServlet")
public class paddaktiServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");

        PrintWriter out=response.getWriter();

        String aktivitinama=request.getParameter("aktivitinama");
        String tarikh=request.getParameter("tarikh");
        String huraian=request.getParameter("huraian");

        Aktiviti e=new Aktiviti();
        e.setAktivitinama(aktivitinama);
        e.setTarikh(tarikh);
        e.setHuraian(huraian);


        //code bwah ni tukar ami kan DAO saja
        int status= AddaktivitiDAO.save(e);
        if(status>0){
            out.print("<h3>Pendaftaran berjaya!</h3>");
            request.getRequestDispatcher("penyeliamain.jsp").include(request, response);
        }else{
            out.println("Maaf pendaftaran tidak berjaya");
        }

        out.close();
    }

}
