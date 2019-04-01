/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.connection.ConnectionDB;
import com.model.Vols;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author republic of gamers
 */
public class FiltreDAO {
    public static ArrayList<Vols> departsFList;
  
    
    public ArrayList<Vols> showFiltreDeparts(String filtre) throws SQLException {
        
        PreparedStatement preparedStatement = null;
        Connection con = null;
        departsFList = new ArrayList<Vols>();
        

        try {
            con = ConnectionDB.createConnection();
            String query = "select v.*, c.NOM NOM_COMPAGNIE, s.NOM NOM_STATUT, a.NOM NOM_AEROPORT, d.PORTE PORTE, d.DATE_REVISE DATE_REVISE, d.HEURE_REVISE HEURE_REVISE"
                    + "     from vols v,compagnie c, statut s , details d, ville l, aeroport a"
                    + "     where v.ID_COMPAGNIE = c.ID "
                    + "     and v.ID = d.ID_VOL"
                    + "     and d.STATUT = s.ID"
                    + "     and v.ID_AEROPORT=a.ID"
                    + "     and a.ID_VILLE= l.ID"
                    + "     and v.TYPE=1 "
                    + "     and  (a.NOM like '%"+filtre+"%' or c.NOM like '%"+filtre+"%' or d.DATE_PREVU like '%"+filtre+"%') "
                    + "     ORDER BY v.HEURE_PREVU";
            preparedStatement = con.prepareStatement(query);

            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int ID = rs.getInt("ID");
                String NUMEROVOL = rs.getString("NUMEROVOL");
                // Ici je n'ai pas trouvé comment formater Time 
                // pour afficher juste HH:ss 
                // Alors j'ay contourné ca avec substring
                String HEURE_PREVU = rs.getTime("HEURE_PREVU").toString().substring(0, 5);
                // 
                String HEURE_REVISE = "-";
                if (rs.getTime("HEURE_REVISE") != null) {
                    HEURE_REVISE = rs.getTime("HEURE_REVISE").toString().substring(0,5);
                }
                
                Date DATE_REVISE = rs.getDate("DATE_REVISE"); 
                
                int ID_AEROPORT = rs.getInt("ID_AEROPORT");
                int ID_COMPAGNIE = rs.getInt("ID_COMPAGNIE");
                String NOM_AEROPORT = rs.getString("NOM_AEROPORT");
                
                String PORTE = "-";
                if (rs.getString("PORTE") != null) {
                    PORTE = rs.getString("PORTE");
                }

                String NOM_COMPAGNIE = rs.getString("NOM_COMPAGNIE");
                String NOM_STATUT = rs.getString("NOM_STATUT");
                int TYPE = rs.getInt("TYPE");

                departsFList.add(new Vols(
                        ID, 
                        NUMEROVOL, 
                        HEURE_PREVU,
                        HEURE_REVISE,
                        DATE_REVISE,
                        ID_AEROPORT,
                        NOM_AEROPORT,
                        ID_COMPAGNIE,
                        NOM_COMPAGNIE,
                        NOM_STATUT,
                        PORTE,
                        TYPE));
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
        return departsFList;
    }
    
}
