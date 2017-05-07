package com.ayerputeh.GlobalServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;

/**
 * Created by hp yang on 01-Apr-17.
 */
@WebServlet("/PublicServlet")
public class PublicServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*String no_ic = request.getParameter("no_ic");
        String password = request.getParameter("password");

        //login model
        LoginDAO loginDAO = new LoginDAO().read(1 *//*Primary Key 1*//*);

        Gson gson = new Gson();
        String json = gson.toJson(loginDAO);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().print(json);
        response.getWriter().flush();*/
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        /*
        * using CRUD operation
        * */
        //CREATE login model
        /*LoginDAO loginDAO = new LoginDAO();
        loginDAO.number_ic = "921025045501";
        loginDAO.password = "";
        loginDAO.status = "";
        loginDAO.create();*/

        //SELECT login model
        /*LoginDAO loginDAO = new LoginDAO().read(1*//*Primary Key 1*//*);
        response.getWriter().print(loginDAO.number_ic);*/

        //SELECT and UPDATE login model
        /*LoginDAO loginDAO = new LoginDAO().read(2*//*Primary Key 1*//*);
        loginDAO.number_ic = "9210";
        loginDAO.update();*/

        //SELECT and DELETE login model
        /*LoginDAO loginDAO = new LoginDAO().read(2*//*Primary Key 1*//*);
        loginDAO.delete();*/

        // LoginDAO loginDAO2 = new LoginDAO().findByNRIC("921025045501");

        // response multiple rows
        /*List<LoginDAO> loginDAOs = new ArrayList<>();
        loginDAOs.add(loginDAO);
        loginDAOs.add(loginDAO2);*/

        /*
        * convert object to JSON
        * */
        /*Gson gson = new Gson();
        String json = gson.toJson(loginDAO);*/

        /*
        * response the JSON
        * */
        /*response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().print(json);
        response.getWriter().flush();*/
    }
}
