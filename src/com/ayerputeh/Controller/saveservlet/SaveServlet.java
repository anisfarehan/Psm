/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ayerputeh.Controller.saveservlet;

/**
 * @author Hp
 */

import com.ayerputeh.Controller.GcmServlet.GCMSendServlet;
import com.ayerputeh.Model.LoginDAO.LoginDAO;
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LoginDAO loginDAO = new LoginDAO().findByNRIC("930317035924");//ic ni dummy, klau tgh update user lain, dptkan ic user tu
        new GCMSendServlet().doPush(loginDAO.gcm_registration_id, "Makluman", "Maklumat anda telah dikemaskini!", null);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        String pelajarnama = request.getParameter("pelajarnama");
        String no_ic = request.getParameter("no_ic");
        String namaibu = request.getParameter("namaibu");
        String namabapa = request.getParameter("namabapa");
        String agama = request.getParameter("agama");
        String warganegara = request.getParameter("warganegara");
        String kelas_id = request.getParameter("kelas_id");
        String alamat = request.getParameter("alamat");
        String poskod = request.getParameter("poskod");
        String negeri = request.getParameter("negeri");

        Emp e = new Emp();
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

        //code bwah ni tukar ami kan DAO saja
        int status = EmpDao.save(e);
        if (status > 0) {
            out.print("<h3>Pendaftaran berjaya!</h3>");
            request.getRequestDispatcher("gurumain.jsp").include(request, response);
        } else {
            out.println("Maaf pendaftaran tidak berjaya");
        }

        out.close();
    }

}  
