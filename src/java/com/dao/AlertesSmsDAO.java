
package com.dao;

import com.connection.ConnectionDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Tahiry
 */
public class AlertesSmsDAO {
    PreparedStatement preparedStatement = null;
    Statement stmt = null;
    Connection con = null;

    ResultSet rs = null;
    int ID_VOL;
    
    public void inscrire(String telephone, String numeroVol) throws SQLException{
        try {
         con = ConnectionDB.createConnection();   
        stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        
        stmt = con.createStatement();
       
        String querySelectID = "SELECT ID from vols WHERE NumeroVol = '"+ numeroVol +"'";
        preparedStatement = con.prepareStatement(querySelectID);
        
        ResultSet rs = preparedStatement.executeQuery();
        
        
        
        if (rs.next()) {
                ID_VOL = rs.getInt("ID");      
        }
       
 
        
        String queryInsert = "INSERT INTO inscrits(TELEPHONE, ID_VOL) "
                + "VALUES('"+ telephone +"','"+ ID_VOL +"')";
        
  
        
//        String queryInsert = "INSERT INTO details (ID_VOL, DATE_PREVU, PORTE, STATUT) "
//                   + "values (1,'2019-04-15','B33',1)";
        
        stmt.executeUpdate(queryInsert);

        }
        catch(SQLException e){
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
