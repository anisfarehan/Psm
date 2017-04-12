package com.ayerputeh.Controller.AkaunServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Hp on 4/11/2017.
 */
@WebServlet( "/AkaunServlet")
public class AkaunServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");

        PrintWriter out=response.getWriter();
        out.print("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\n" +"\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">");
        out.print("<html xmlns=\"http://www.w3.org/1999/xhtml\">");
        out.print("<head>");
        out.print("<title>Sk.Ayer Puteh</title>");
        out.print("<meta name=\"keywords\" content=\"\" />");
        out.print("<meta name=\"description\" content=\"\" />");
        out.print("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />");
        out.print("<meta http-equiv=\"content-language\" content=\"\" />");
        out.print("<link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" />");
        out.print("<link href=\"http://fonts.googleapis.com/css?family=Roboto+Condensed&amp;subset=latin,latin-ext\" rel=\"stylesheet\" type=\"text/css\" />");
        out.print("</head>");
        out.print("<body>");
        out.print("<div id=\"page\">");
        out.print("<div id=\"header\">");
        out.print("<div id=\"menu\">");
        out.print("<ul>");
        out.print("<li><a href=\"gurumain.jsp\">Menu Utama</a></li>");
        out.print("<li><a href=\"ViewServlet\">Senarai Pelajar</a></li>");
        out.print("<li><a href=\"gurudaftarpelajar.jsp\">Pendaftaran Pelajar</a></li>");
        out.print("<li><a href=\"EditServlet\">Rekod Akademik</a></li>");
        out.print("<li><a href=\"AktivityServlet\">Aktiviti Sekolah</a></li>");
        out.print("<li class=\"active\"><a href=\"AkaunServlet\">Akaun</a></li>");
        out.print("<li><a href=\"logout.jsp\">Log Keluar</a></li>");
        out.print("</ul>");
        out.print("</div><!-- menu -->");
        out.print("</div><!-- header -->");
        out.print("<img id=\"introimg\" src=\"images/Picture1.gif\" width=\"90\" height=\"70\" alt=\"\" />");
        out.print("<div id=\"main\">");
        out.print("<div id=\"sidebar\">");
        out.print("<h2>Misi KPM</h2>");
        out.print("<div class=\"box\">");
        out.print("<p>MEMBANGUNKAN SISTEM PENDIDIKAN BERKUALITI YANG BERTARAF DUNIA BAGI MEMPERKEMBANGKAN POTENSI INDIVIDU SEPENUHNYA DAN MEMENUHI ASPIRASI NEGARA MALAYSIA</p>");
        out.print("</div>");
        out.print("<h2>Visi Sekolah</h2>");
        out.print("<div class=\"box1\">");
        out.print("<p><div class=\"box1\">");
        out.print("<p>MEMBANGUNKAN SISTEM PENDIDIKAN BERKUALITI YANG BERTARAF DUNIA BAGI MEMPERKEMBANGKAN POTENSI INDIVIDU SEPENUHNYA DAN MEMENUHI ASPIRASI NEGARA MALAYSIA</p>");
        out.print("</div></p>");
        out.print("</div>");
        out.print("</div><!-- sidebar -->");
        out.print("	<div id=\"content\">");




        out.print(" </div>");
        out.print("<div class=\"clearing\">&nbsp;</div>");
        out.print("</div><!-- main -->");
        out.print("<div id=\"footer\">");
        out.print("<p>&copy;SK.Ayer Puteh. All rights reserved.</p>");
        out.print(" </div>");
        out.print(" </div><!-- page -->");
        out.print("</body>");
        out.print("</html>");

        out.close();
    }
}
