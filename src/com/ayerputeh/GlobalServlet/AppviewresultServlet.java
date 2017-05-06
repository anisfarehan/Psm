package com.ayerputeh.GlobalServlet;

import com.ayerputeh.Model.Penggal1DAO.Penggal1DAO;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Hp on 5/6/2017.
 */
@WebServlet("/AppviewresultServlet")
public class AppviewresultServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JsonObject data = new Gson().fromJson(request.getReader(), JsonObject.class);
        String no_ic = data.get("no_ic").getAsString();

        Penggal1DAO penggal1DAO= new Penggal1DAO().findByNRIC(no_ic);

        Gson gson = new Gson();
        String json = gson.toJson(penggal1DAO);


        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().print(json);
        response.getWriter().flush();
//        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
