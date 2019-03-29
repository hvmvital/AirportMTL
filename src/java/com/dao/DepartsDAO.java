package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
//import com.mvc.bean.RegisterBean;
import com.connection.ConnectionDB;
import com.model.Vols;
import java.sql.ResultSet;
import java.sql.Time;
//import java.text.SimpleDateFormat;
import java.util.ArrayList;
//import java.util.Date;
//import java.util.List;

public class DepartsDAO {

    public static ArrayList<Vols> departsList;

    public ArrayList<Vols> showDeparts() throws SQLException {

        PreparedStatement preparedStatement = null;
        Connection con = null;
        departsList = new ArrayList<Vols>();
        
        //SimpleDateFormat sdf = new SimpleDateFormat("dd MMM");
         
        
        try {
             con = ConnectionDB.createConnection();
            String query =  "select v.*, c.nom NOM_COMPAGNIE, s.nom NOM_STATUT, a.NOM NOM_AEROPORT, d.porte PORT"
                    + "     from vols v,compagnie c, statut s , details d, ville l, aeroport a"
                    + "     where v.id_compagnie=c.id "
                    + "     and v.id=d.id_vol"
                    + "     and d.statut = s.id"
                    + "     and v.ID_aeroport=a.id"
                    + "     and a.ID_VILLE= l.id"
                    + "     and v.type=1"; 
            preparedStatement = con.prepareStatement(query);

            ResultSet rs = preparedStatement.executeQuery();
             
                     
            while (rs.next()) {
                int ID = rs.getInt("ID");
                String NUMEROVOL = rs.getString("NUMEROVOL");
                
                // Ici je n'ai pas trouvé comment formater Time 
                // pour afficher juste HH:ss 
                // Alors j'ay contourné ca avec substring
                String HEURE_PREVU = rs.getTime("HEURE_PREVU").toString().substring(0,5);
                // 
                
                int ID_AEROPORT = rs.getInt("ID_AEROPORT");
                int ID_COMPAGNIE = rs.getInt("ID_COMPAGNIE");
                String NOM_AEROPORT = rs.getString("NOM_AEROPORT");
                String PORT = rs.getString("PORT");
                String NOM_COMPAGNIE = rs.getString("NOM_COMPAGNIE");
                String NOM_STATUT = rs.getString("NOM_STATUT");
                int TYPE = rs.getInt("TYPE");
                
                
                departsList.add(new Vols(ID, NUMEROVOL, HEURE_PREVU,ID_AEROPORT,NOM_AEROPORT,ID_COMPAGNIE,NOM_COMPAGNIE,NOM_STATUT,PORT,TYPE));
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
