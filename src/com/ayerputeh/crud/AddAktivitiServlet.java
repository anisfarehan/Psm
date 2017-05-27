package com.ayerputeh.crud;

import com.ayerputeh.Model.AktivitiDAO.AktivitiDAO;
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
@WebServlet("/AddAktivitiServlet")
public class AddAktivitiServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        AktivitiDAO aktivitiDAO= new AktivitiDAO();
        aktivitiDAO.aktivitinama= request.getParameter("aktivitinama");
        aktivitiDAO.tarikh= request.getParameter("tarikh");
        aktivitiDAO.huraian= request.getParameter("huraian");

        aktivitiDAO.create();



        request.setAttribute("alertMsg", "Penambahan Aktiviti Berjaya");
        RequestDispatcher rd=request.getRequestDispatcher("/PenyeliaViewAktiviti.jsp");
        rd.include(request, response);
        //response.sendRedirect("./PenyeliaAddGuru1.jsp");

        //        if (loginDAO.password == password) {
        /*
        * convert object to JSON
        * */
       //Gson gson = new Gson();
       // String json = gson.toJson(aktivitiDAO);


        /*
        * response the JSON
        * */
        /*response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().print(json);
        response.getWriter().flush();*/
//        }

        /*response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().print("{responseStatus: 'error'}");
        response.getWriter().flush();*/



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
