package com.ayerputeh.Model.MultiplesaveDAO;

import com.ayerputeh.Controller.emp.Emp;
import com.ayerputeh.Model.LoginDAO.LoginDAO;

import java.awt.print.Book;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by Hp on 5/1/2017.
 */
public class MultiplesaveDAO {
            private Connection connection = null;

        public void save(Emp e) throws SQLException {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ayerputeh", "root", "");

                PreparedStatement stmt = connection.prepareStatement("INSERT INTO pelajar(pelajarnama,no_ic,namaibu,namabapa,agama,warganegara,kelas_id,alamat,poskod,negeri) values (?,?,?,?,?,?,?,?,?,?)");

                stmt.setString(1,e.getpelajarnama());
                stmt.setString(2,e.getno_ic());
                stmt.setString(3,e.getnamaibu());
                stmt.setString(4,e.getnamabapa());
                stmt.setString(5,e.getagama());
                stmt.setString(6,e.getwarganegara());
                stmt.setString(7,e.getkelas_id());
                stmt.setString(8,e.getalamat());
                stmt.setString(9,e.getposkod());
                stmt.setString(10,e.getnegeri());

                stmt.executeUpdate();

                stmt.close(); //1

                stmt = connection.prepareStatement("INSERT INTO login (number_ic, password, status,nama) VALUES (?, ?, ?, ?)");
                stmt.setString(1, e.getNumber_ic());
                stmt.setString(2, e.getPassword());
                stmt.setString(3, e.getPublisher());
                stmt.executeUpdate();

                stmt.close(); //2
            } catch (ClassNotFoundException u) { u.printStackTrace(); } catch (SQLException u) { u.printStackTrace(); }
            finally { connection.close(); }
        }
    }

