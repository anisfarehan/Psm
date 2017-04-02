package com.ayerputeh.Controller.DataServlet;

import com.ayerputeh.Model.LoginDAO.LoginDAO;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Hp on 4/2/2017.
 */
@WebServlet("/DataServlet")
public class DataServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        InputStream is = request.getInputStream();
        ByteArrayOutputStream os = new ByteArrayOutputStream();
        byte[] buf = new byte[32];
        int r=0;
        while( r >= 0 ) {
            r = is.read(buf);
            if( r >= 0 ) os.write(buf, 0, r);
        }
        String s = new String(os.toByteArray(), "UTF-8");
        String decoded = URLDecoder.decode(s, "UTF-8");
        System.err.println(">>>>>>>>>>>>> DECODED: " + decoded);

        System.err.println("================================");

        Enumeration<String> e = request.getParameterNames();
        while( e.hasMoreElements() ) {
            String ss = (String) e.nextElement();
            System.err.println("    >>>>>>>>> " + ss);
        }

        System.err.println("================================");

        Map<String,String> map = makeQueryMap(s);
        System.err.println(map);
        //////////////////////////////////////////////////////////////////
        //// HERE YOU CAN DO map.get("id") AND THE SENT VALUE WILL BE ////
        //// RETURNED AS EXPECTED WITH request.getParameter("id")     ////
        //////////////////////////////////////////////////////////////////

        System.err.println("================================");

        response.setContentType("application/json; charset=UTF-8");
        response.getWriter().println("{'result':true}");

        /*String number_ic = request.getParameter("number_ic");
        String password = request.getParameter("password");

        //login model
        LoginDAO loginDAO = new LoginDAO().findByNRIC(number_ic);

        Gson gson = new Gson();
        String json = gson.toJson(loginDAO);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().print(json);
        response.getWriter().flush();*/
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String number_ic = request.getParameter("number_ic");
        String password = request.getParameter("password");

        //login model
        LoginDAO loginDAO = new LoginDAO().findByNRIC(number_ic/*Primary Key 1*/);

        Gson gson = new Gson();
        String json = gson.toJson(loginDAO);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().print(json);
        response.getWriter().flush();
    }

    // Based on code from: http://www.coderanch.com/t/383310/java/java/parse-url-query-string-parameter
    private static Map<String, String> makeQueryMap(String query) throws UnsupportedEncodingException {
        String[] params = query.split("&");
        Map<String, String> map = new HashMap<String, String>();
        for( String param : params ) {
            String[] split = param.split("=");
            map.put(URLDecoder.decode(split[0], "UTF-8"), URLDecoder.decode(split[1], "UTF-8"));
        }
        return map;
    }
}
