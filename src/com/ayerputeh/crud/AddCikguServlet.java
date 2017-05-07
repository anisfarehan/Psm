package com.ayerputeh.crud;

import com.ayerputeh.Model.GuruDAO.GuruDAO;
import com.ayerputeh.Model.LoginDAO.LoginDAO;
import com.google.gson.Gson;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Hp on 5/8/2017.
 */
@WebServlet("/AddCikguServlet")
public class AddCikguServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        GuruDAO guruDAO = new GuruDAO();
        guruDAO.gurunama= request.getParameter("gurunama");
        guruDAO.no_ic = request.getParameter("no_ic");
        guruDAO.subjek_id = request.getParameter("subjek_id");
        guruDAO.kelas_id= request.getParameter("kelas_id");

        LoginDAO loginDAO = new LoginDAO();
        loginDAO.number_ic = request.getParameter("no_ic");
        loginDAO.password = request.getParameter("no_ic");
        loginDAO.status = "Guru";
        loginDAO.nama = request.getParameter("gurunama");
        loginDAO.guru = "guru";
        loginDAO.penyelia = "";

        guruDAO.create();
        loginDAO.create();


        request.setAttribute("alertMsg", "Berjaya daftar");
        RequestDispatcher rd=request.getRequestDispatcher("/PenyeliaAddGuru1.jsp");
        rd.include(request, response);
        //response.sendRedirect("./PenyeliaAddGuru1.jsp");

        //        if (loginDAO.password == password) {
        /*
        * convert object to JSON
        * */
        Gson gson = new Gson();
        String json = gson.toJson(guruDAO);


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
