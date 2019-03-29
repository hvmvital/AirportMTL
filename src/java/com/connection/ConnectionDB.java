package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDB {
    public static Connection createConnection()  {
        Connection con = null;
        String url = "jdbc:mysql://localhost:3306/aeroportmtl"; //MySQL URL and followed by the database name
        String username = "root"; //MySQL username
        String password = ""; //MySQL password
  //      String url = "jdbc:mysql://69.90.163.190:3306/konto280_aeroportmtl"; //MySQL URL and followed by the database name
  //      String username = "konto280_aero"; //MySQL username
  //      String password = "aeroportmtl"; //MySQL password

        try {
            try {
                Class.forName("com.mysql.jdbc.Driver"); //loading mysql driver 
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            con = DriverManager.getConnection(url, username, password); //attempting to connect to MySQL database
            System.out.println("Printing connection object " + con);
        } catch (Exception e) {
            e.printStackTrace();
            
        }
        return con;
    }

}
