package com.ayerputeh.crud;

import com.ayerputeh.Model.MelayuDAO.MelayuDAO;
import com.ayerputeh.Model.Penggal1DAO.Penggal1DAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Hp on 5/13/2017.
 */
@WebServlet("/UpdateMelayuServlet")
public class UpdateMelayuServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //String no_ic = data.get("no_ic").getAsString();

        Penggal1DAO penggal1DAO= new Penggal1DAO();

        penggal1DAO.subjek_id=request.getParameter("subjek_id");
        penggal1DAO.no_ic=request.getParameter("no_ic");
        penggal1DAO.jumlah1=request.getParameter("jumlah1");

        penggal1DAO.update();

        response.sendRedirect("guruarif1.jsp");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
