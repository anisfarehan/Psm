<%@ page import="java.sql.*" %><%--
    Document   : index
    Created on : Oct 28, 2016, 12:54:11 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sk.ayerputeh</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link href="http://fonts.googleapis.com/css?family=Karla:400,700" rel="stylesheet" />
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed&amp;subset=latin,latin-ext" rel="stylesheet" type="text/css" />
    <link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/sky-forms.css">
    <!--[if IE 6]>
    <link href="default_ie6.css" rel="stylesheet" type="text/css" />
    <![endif]-->
</head>
<body>
<%
    Connection con= null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    String driverName = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/ayerputeh";
    String user = "root";
    String password = "";

    String sql = "select status from login";

    try {
        Class.forName(driverName);
        con = DriverManager.getConnection(url, user, password);
        ps = con.prepareStatement(sql);
        rs = ps.executeQuery();
%>
<div id="wrapper">

    <div id="menu-wrapper">
        <div id="menu" class="container">
            <h2>SEKOLAH KEBANGSAAN AYER PUTEH</h2>
        </div>
        <!-- end #menu -->
    </div>
    <div id="page" class="container">


        <form method="post" action="http://localhost:8484/Psm/login.jsp" class="sky-form">
            <header>Log Masuk</header>
            <fieldset>
                <section style="width: 500px">
                    <label class="label">Nama Pengguna :</label>
                    <label class="input">
                        <input type="text" name="number_ic" placeholder="Masukkan nombor kad pengenalan">
                    </label>

                </section>


                <section style="width: 500px">
                    <label class="label">Kata Laluan :</label>
                    <label class="input">
                        <input type="password" name="password" placeholder="Masukkan kata laluan">
                    </label>
                </section>

                <section style="width: 500px">
                    <label class="label">Status</label>
                    <label class="input">
                        <input type="text" name="status" placeholder="Status">
                        <datalist id="list" name="status">
                            <%
                                while(rs.next())
                                {
                                    String status = rs.getString("status");
                            %>
                            <option value="1"><%=status%></option>
                            <option value="2"><%=status%></option>
                            <%
                                    }
                                }
                                catch(SQLException sqe)
                                {
                                    out.println("login1"+sqe);
                                }
                            %>
                        </datalist>
                    </label>
                </section>
                <footer>
                    <button type="submit" class="button">Log Masuk</button>
                </footer>


            </fieldset>
        </form>
    </div>
</div>
<div id="footer">
    <p>&copy;SK.Ayer Puteh. All rights reserved.</p>
</div>
</div><!-- page -->

</body>
</html>
