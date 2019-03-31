
package com.model;

import java.sql.Time;
import java.util.Date;
import java.util.Objects;

public class Vols {
    private int ID;
    private String NumeroVol;
    private String Heure_prevu;
    private String HEURE_REVISE;
    private Date DATE_REVISE;
    private int ID_AEROPORT;
    private String NOM_AEROPORT;
    private int ID_COMPAGNIE;
    private String NOM_COMPAGNIE;
    private String NOM_STATUT;
    private String PORT;
    private int TYPE;

    public Vols(
            int ID, 
            String NumeroVol, 
            String Heure_prevu,
            String HEURE_REVISE,
            Date DATE_REVISE, 
            int ID_AEROPORT, 
            String NOM_AEROPORT, 
            int ID_COMPAGNIE, 
            String NOM_COMPAGNIE, 
            String NOM_STATUT, 
            String PORT, 
            int TYPE) {
        this.ID = ID;
        this.NumeroVol = NumeroVol;
        this.Heure_prevu = Heure_prevu;
        this.HEURE_REVISE = HEURE_REVISE;
        this.DATE_REVISE = DATE_REVISE;
        this.ID_AEROPORT = ID_AEROPORT;
        this.NOM_AEROPORT = NOM_AEROPORT;
        this.ID_COMPAGNIE = ID_COMPAGNIE;
        this.NOM_COMPAGNIE = NOM_COMPAGNIE;
        this.NOM_STATUT = NOM_STATUT;
        this.PORT = PORT;
        this.TYPE = TYPE;
    }

    public String getHEURE_REVISE() {
        return HEURE_REVISE;
    }

    public void setHEURE_REVISE(String HEURE_REVISE) {
        this.HEURE_REVISE = HEURE_REVISE;
    }

    public Date getDATE_REVISE() {
        return DATE_REVISE;
    }

    public void setDATE_REVISE(Date DATE_REVISE) {
        this.DATE_REVISE = DATE_REVISE;
    }

   

    public String getPORT() {
        return PORT;
    }

    public void setPORT(String PORT) {
        this.PORT = PORT;
    }

   

 
    public String getNOM_STATUT() {
        return NOM_STATUT;
    }

    public void setNOM_STATUT(String NOM_STATUT) {
        this.NOM_STATUT = NOM_STATUT;
    }

    public String getNOM_AEROPORT() {
        return NOM_AEROPORT;
    }

    public void setNOM_AEROPORT(String NOM_AEROPORT) {
        this.NOM_AEROPORT = NOM_AEROPORT;
    }
    

 



    public String getNOM_COMPAGNIE() {
        return NOM_COMPAGNIE;
    }

    public void setNOM_COMPAGNIE(String NOM_COMPAGNIE) {
        this.NOM_COMPAGNIE = NOM_COMPAGNIE;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getNumeroVol() {
        return NumeroVol;
    }

    public void setNumeroVol(String NumeroVol) {
        this.NumeroVol = NumeroVol;
    }

    public String getHeure_prevu() {
        return Heure_prevu;
    }

    public void setHeure_prevu(String Heure_prevu) {
        this.Heure_prevu = Heure_prevu;
    }

    public int getID_AEROPORT() {
        return ID_AEROPORT;
    }

    public void setID_AEROPORT(int ID_AEROPORT) {
        this.ID_AEROPORT = ID_AEROPORT;
    }

    public int getID_COMPAGNIE() {
        return ID_COMPAGNIE;
    }

    public void setID_COMPAGNIE(int ID_COMPAGNIE) {
        this.ID_COMPAGNIE = ID_COMPAGNIE;
    }

    public int getTYPE() {
        return TYPE;
    }

    public void setTYPE(int TYPE) {
        this.TYPE = TYPE;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 97 * hash + this.ID;
        hash = 97 * hash + Objects.hashCode(this.NumeroVol);
        hash = 97 * hash + Objects.hashCode(this.Heure_prevu);
        hash = 97 * hash + this.ID_AEROPORT;
        hash = 97 * hash + this.ID_COMPAGNIE;
        hash = 97 * hash + this.TYPE;
        return hash;
    }

    

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Vols other = (Vols) obj;
        if (this.ID != other.ID) {
            return false;
        }
        if (!Objects.equals(this.NumeroVol, other.NumeroVol)) {
            return false;
        }
        if (this.Heure_prevu != other.Heure_prevu) {
            return false;
        }
        if (this.ID_AEROPORT != other.ID_AEROPORT) {
            return false;
        }
        if (this.ID_COMPAGNIE != other.ID_COMPAGNIE) {
            return false;
        }
        if (this.TYPE != other.TYPE) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Vols{" + "ID=" + ID + ", NumeroVol=" + NumeroVol + ", Heure_prevu=" + Heure_prevu + ", ID_AEROPORT=" + ID_AEROPORT + ", ID_COMPAGNIE=" + ID_COMPAGNIE + ", TYPE=" + TYPE + '}';
    }
    
    
    
    
    
}
