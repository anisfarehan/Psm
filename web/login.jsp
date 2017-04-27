<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%
    String number_ic= request.getParameter("number_ic");
    String password = request.getParameter("password");
    String guru = request.getParameter("status");
    String penyelia = request.getParameter("status");
    String notel = request.getParameter("notel");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ayerputeh",
            "root", "");
    Statement st = con.createStatement();
    Statement rd = con.createStatement();

    ResultSet rs,ps;

    rs = st.executeQuery("select * from login where number_ic='" + number_ic+ "' and password='" + password + "'and status='" + guru+ "'");
    ps = rd.executeQuery("select * from login where number_ic ='" + number_ic+ "' and password='" + password + "'and status='" + penyelia +"'");

    if (rs.next()) {
        session.setAttribute("number_ic", number_ic);
        session.setAttribute("status", guru);

        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("gurumain.jsp");

    }

    else if (ps.next())
    {
        session.setAttribute("number_ic", number_ic);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("penyeliamain.jsp");


    }




  /*  else if (username.equals("uname")&& pwd.equals("pass") && pengurus.equals("pengurus"))
    {
        session.setAttribute("uname",username);
        response.sendRedirect("success.jsp");
    }*/

    /*else if (ps.next()) {
        session.setAttribute("uname", username);

        response.sendRedirect("succes.jsp");
    }*/
    else {
        out.println("Kata Laluan atau kad pengenalan salah <a href='index.jsp'> Cuba sekali lagi</a>");
    }
%>
</body>
</html>