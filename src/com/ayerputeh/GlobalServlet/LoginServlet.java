package com.ayerputeh.GlobalServlet;

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
 * Created by Hp on 4/12/2017.
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JsonObject data = new Gson().fromJson(request.getReader(), JsonObject.class);
        String number_ic = data.get("number_ic").getAsString();
        String password = data.get("password").getAsString();

        LoginDAO loginDAO = new LoginDAO().findByNRIC(number_ic);

//        if (loginDAO.password == password) {
        /*
        * convert object to JSON
        * */
            Gson gson = new Gson();
            String json = gson.toJson(loginDAO);


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
        response.getWriter().print("{statusMsg: 'error'}");
        response.getWriter().flush();*/

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
