<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="com.google.gson.Gson" %>

    <% 
    String id = request.getParameter("v1");
    String fin = request.getParameter("v2");
    out.println(id);
    out.println(fin);
    %>
    <%
        try{
              Class.forName("com.mysql.jdbc.Driver");
              Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ayerputeh?zeroDateTimeBehavior=convertToNull","root","");
              PreparedStatement ps = con.prepareStatement("select * from login where number_ic=? and password=?");
              ps.setString(1,id);
              ps.setString(2,fin);
              ResultSet rs=ps.executeQuery();
              if (rs.next())
              {
                //String json = new Gson().toJson(anyObject); // anyObject = List<Bean>, Map<K, Bean>, Bean, String, etc..
               // response.setContentType("application/json");
                //response.setCharacterEncoding("UTF-8");
                //response.getWriter().write(json);
              }
              else
              {
                  response.sendRedirect("negative viber");
              }
           }catch(SQLException e){}
    
    %>
