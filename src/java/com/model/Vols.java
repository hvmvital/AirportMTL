
package com.model;

import java.util.Objects;

public class Vols {
    private int ID;
    private String NumeroVol;
    private int Heure_prevu;
    private int ID_AEROPORT;
    private int ID_COMPAGNIE;
    private int TYPE;

    public Vols(int ID, String NumeroVol, int Heure_prevu, int ID_AEROPORT, int ID_COMPAGNIE, int TYPE) {
        this.ID = ID;
        this.NumeroVol = NumeroVol;
        this.Heure_prevu = Heure_prevu;
        this.ID_AEROPORT = ID_AEROPORT;
        this.ID_COMPAGNIE = ID_COMPAGNIE;
        this.TYPE = TYPE;
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

    public int getHeure_prevu() {
        return Heure_prevu;
    }

    public void setHeure_prevu(int Heure_prevu) {
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
        hash = 89 * hash + this.ID;
        hash = 89 * hash + Objects.hashCode(this.NumeroVol);
        hash = 89 * hash + this.Heure_prevu;
        hash = 89 * hash + this.ID_AEROPORT;
        hash = 89 * hash + this.TYPE;
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
