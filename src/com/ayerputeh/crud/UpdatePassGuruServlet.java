package com.ayerputeh.crud;

import com.ayerputeh.Model.LoginDAO.LoginDAO;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Hp on 5/13/2017.
 */
@WebServlet("/UpdatePassGuruServlet")
public class UpdatePassGuruServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JsonObject data = new Gson().fromJson(request.getReader(), JsonObject.class);
        String number_ic = data.get("number_ic").getAsString();

        LoginDAO loginDAO = new LoginDAO().findByNRIC(number_ic);

        loginDAO.password = request.getParameter("password");


        loginDAO.update();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
