package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
//import com.mvc.bean.RegisterBean;
import com.connection.ConnectionDB;
import com.model.Aeroport;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DepartsDAO {

    public static ArrayList<Aeroport> aeroportsList;

    public ArrayList<Aeroport> showDeparts() throws SQLException {

        PreparedStatement preparedStatement = null;
        Connection con = null;
        aeroportsList = new ArrayList<Aeroport>();

        try {
             con = ConnectionDB.createConnection();
            String query = "select * from aeroport"; //Insert user details into the table 'USERS'
            preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
            //preparedStatement.setInt(1, 1001);

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int ID = rs.getInt("ID");
                String NOM = rs.getString("NOM");
                int ID_VILLE = rs.getInt("ID_VILLE");
                
                aeroportsList.add(new Aeroport(ID, NOM, ID_VILLE));
            }

        } catch (SQLException e) {

            System.out.println(e.getMessage());

        } finally {

            if (preparedStatement != null) {
                preparedStatement.close();
            }

            if (con != null) {
                con.close();
            }

        }
        return aeroportsList;
    }
}
