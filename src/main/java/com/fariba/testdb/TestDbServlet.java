package com.fariba.testdb;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.*;

@WebServlet("/TestDbServlet")
public class TestDbServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = "cmn";
        String pass = "123456";

        String jdbcUrl = "jdbc:oracle:thin:@192.168.1.30:1521:devdb11";
        String driver = "oracle.jdbc.driver.OracleDriver";
        try {
            PrintWriter out = response.getWriter();
            out.println("Connecting to database : " + jdbcUrl);
            Class.forName(driver);
            Connection con = DriverManager.getConnection(jdbcUrl, user, pass);
            out.println("success!!");
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException(e);
        }
    }
}
