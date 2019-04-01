/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
    
    public void inscrire(String telephone, String NumeroVol) throws SQLException{
        try {
         con = ConnectionDB.createConnection();   
        stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        
        stmt = con.createStatement();
        
        String querySelectID = "SELECT ID from vols WHERE NumeroVol = '"+ NumeroVol +"'";
        preparedStatement = con.prepareStatement(querySelectID);
        
        ResultSet rs = preparedStatement.executeQuery();
        
        
        while (rs.next()) {
                ID_VOL = rs.getInt("ID");
        }
        
        String queryInsert = "INSERT INTO inscrits(TELEPHONE, ID_VOL) "
                + "VALUES('"+ telephone +"','"+ ID_VOL +"')";
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
