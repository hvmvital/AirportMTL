
package com.dao;

import com.connection.ConnectionDB;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class UpdateDetailsDAO {

    PreparedStatement preparedStatement = null;
    Statement stmt = null;
    Connection con = null;

    public void updateDetails() throws SQLException, IOException, ParseException {
        
        
        JSONParser parser = new JSONParser();
        try {

            con = ConnectionDB.createConnection();
            //stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

            //stmt = con.createStatement();
            //G:/AirportMTL/src/java/
            
            Object obj = parser.parse(new FileReader("G:/AirportMTL/src/java/com/files/details.json"));  // HERE PROBLEM
            JSONObject jsonObject = (JSONObject) obj;
            JSONObject details = (JSONObject) jsonObject.get("details");

            int ID_VOL = (int) (long) details.get("ID_VOL");

            String DATE_PREVU = (String) details.get("DATE_PREVU");
            String DATE_REVISE = (String) details.get("DATE_REVISE");
            String HEURE_REVISE = (String) details.get("HEURE_REVISE");
            String PORTE = (String) details.get("PORTE");
            int STATUT = (int) (long) details.get("STATUT");

            String query = "INSERT INTO details "
                    + "(ID_VOL, DATE_PREVU, DATE_REVISE, HEURE_REVISE, PORTE, STATUT)"
                    + "VALUES (?, ?, ?, ?, ?, ?)";

            preparedStatement = con.prepareStatement(query);

            preparedStatement.setInt(1, ID_VOL);
            preparedStatement.setString(2, DATE_PREVU);
            preparedStatement.setString(3, DATE_REVISE);
            preparedStatement.setString(4, HEURE_REVISE);
            preparedStatement.setString(5, PORTE);
            preparedStatement.setInt(6, STATUT);

            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e.getMessage());

        } finally {

            if (stmt != null) {
                stmt.close();
            }

            if (con != null) {
                con.close();
            }
        }

    }
}
