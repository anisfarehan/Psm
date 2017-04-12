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
<%!



    String userdbName;
    String userdbPsw;
    String dbUsertype;
%>
<%
    Connection con= null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    String driverName = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/ayerputeh";
    String user = "root";
    String dbpsw = "";

    String sql = "select * from login where number_ic=? and password=? and status=?";

    String number = request.getParameter("number_ic");
    String password = request.getParameter("password");
    String status = request.getParameter("status");

    if((!(number.equals(null) || number.equals("")) && !(password.equals(null) || password.equals(""))) && !status.equals("select"))
    {
        try{
            Class.forName(driverName);
            con = DriverManager.getConnection(url, user, dbpsw);
            ps = con.prepareStatement(sql);
            ps.setString(1, number);
            ps.setString(2, password);
            ps.setString(3, status);
            rs = ps.executeQuery();
            if(rs.next())
            {
                userdbName = rs.getString("number_ic");
                userdbPsw = rs.getString("password");
                dbUsertype = rs.getString("status");
                if(number.equals(userdbName) && password.equals(userdbPsw) && status.equals(dbUsertype))
                {
                    session.setAttribute("number_ic",userdbName);
                    if(status.equals(1)) {
                        session.setAttribute("status", dbUsertype);
                        response.sendRedirect("gurumain.jsp");
                    }
                    else
                        response.sendRedirect("gurudaftarpelajar.jsp");
                }
            }
            else
                response.sendRedirect("error.jsp");
            rs.close();
            ps.close();
        }
        catch(SQLException sqe)
        {
            out.println(sqe);
        }
    }
    else
    {
%>
<center><p style="color:red">Kata Laluan atau kad pengenalan yang dimasukkan salah</p></center>
<%
        getServletContext().getRequestDispatcher("/login1.jsp").include(request, response);
    }
%>
</body>
</html>