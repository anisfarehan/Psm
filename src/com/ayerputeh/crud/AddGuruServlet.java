package com.ayerputeh.crud;

import com.ayerputeh.Model.LoginDAO.LoginDAO;
import com.ayerputeh.Model.PelajarDAO.PelajarDAO;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Hp on 5/8/2017.
 */
@WebServlet("/AddGuruServlet")
public class AddGuruServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //JsonObject data = new Gson().fromJson(request.getReader(), JsonObject.class);
        //String no_ic = data.get("no_ic").getAsString();

        PelajarDAO pelajarDAO = new PelajarDAO();
        pelajarDAO.pelajarnama = request.getParameter("pelajarnama");
        pelajarDAO.no_ic = request.getParameter("no_ic");
        pelajarDAO.namaibu = request.getParameter("namaibu");
        pelajarDAO.namabapa = request.getParameter("namabapa");
        pelajarDAO.agama = request.getParameter("agama");
        pelajarDAO.warganegara = request.getParameter("warganegara");
        pelajarDAO.kelas_id = request.getParameter("kelas_id");
        pelajarDAO.alamat = request.getParameter("alamat");
        pelajarDAO.poskod = request.getParameter("poskod");
        pelajarDAO.negeri = request.getParameter("negeri");


        LoginDAO loginDAO = new LoginDAO();
        loginDAO.number_ic = request.getParameter("no_ic");
        loginDAO.password = request.getParameter("no_ic");
        loginDAO.status = "pelajar";
        loginDAO.nama = request.getParameter("pelajarnama");
        loginDAO.guru = "";
        loginDAO.penyelia = "";

        pelajarDAO.create();
        loginDAO.create();

        response.sendRedirect("./gurudaftar1pelajar.jsp");

        //        if (loginDAO.password == password) {
        /*
        * convert object to JSON
        * */
        Gson gson = new Gson();
        String json = gson.toJson(pelajarDAO);


        /*
        * response the JSON
        * */
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().print(json);
        response.getWriter().flush();
//        }

        /*response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().print("{responseStatus: 'error'}");
        response.getWriter().flush();*/



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
