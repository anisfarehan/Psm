package com.ayerputeh.Controller.GcmServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.ayerputeh.Model.LoginDAO.LoginDAO;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * Created by Mizan on 28-May-17.
 */
@WebServlet("/GCMSaveServlet")
public class GCMSaveServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JsonObject data = new Gson().fromJson(request.getReader(), JsonObject.class);
        int user_id = data.get("user_id").getAsInt();

        LoginDAO loginDAO = new LoginDAO().read(user_id);
        loginDAO.gcm_registration_id = data.get("gcm_registration_id").getAsString();
        loginDAO.update();

        Gson gson = new Gson();
        String json = gson.toJson(loginDAO);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().print(json);
        response.getWriter().flush();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
