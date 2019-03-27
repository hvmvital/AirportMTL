package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
//import com.mvc.bean.RegisterBean;
import com.connection.ConnectionDB;
import com.model.Vols;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DepartsDAO {

    public static ArrayList<Vols> departsList;

    public ArrayList<Vols> showDeparts() throws SQLException {

        PreparedStatement preparedStatement = null;
        Connection con = null;
        departsList = new ArrayList<Vols>();

        try {
             con = ConnectionDB.createConnection();
            String query = "select * from vols where type=1"; 
            preparedStatement = con.prepareStatement(query);

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int ID = rs.getInt("ID");
               String NUMEROVOL = rs.getString("NUMEROVOL");
                int HEURE_PREVU = rs.getInt("HEURE_PREVU");
                int ID_AEROPORT = rs.getInt("ID_AEROPORT");
                int ID_COMPAGNIE = rs.getInt("ID_COMPAGNIE");
                int TYPE = rs.getInt("TYPE");
                
                departsList.add(new Vols(ID, NUMEROVOL, HEURE_PREVU,ID_AEROPORT,ID_COMPAGNIE,TYPE));
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
        return departsList;
    }
}
