package com.ayerputeh.GlobalServlet;

import com.ayerputeh.Model.PelajarDAO.PelajarDAO;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet; //connectkan dgn servlet
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Hp on 4/28/2017.
 */
@WebServlet("/AppakaunServlet")
public class AppakaunServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JsonObject data = new Gson().fromJson(request.getReader(), JsonObject.class);
        int user_id = data.get("user_id").getAsInt();

        PelajarDAO pelajarDAO = new PelajarDAO().read(user_id);

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
        response.getWriter().print("{statusMsg: 'error'}");
        response.getWriter().flush();*/

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
