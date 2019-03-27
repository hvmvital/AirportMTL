
package com.model;

import java.util.Objects;

public class Aeroport {
    private int ID;
    private String NOM;
    private int ID_VILLE;

    public Aeroport(int ID, String NOM, int ID_VILLE) {
        this.ID = ID;
        this.NOM = NOM;
        this.ID_VILLE = ID_VILLE;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getNOM() {
        return NOM;
    }

    public void setNOM(String NOM) {
        this.NOM = NOM;
    }

    public int getID_VILLE() {
        return ID_VILLE;
    }

    public void setID_VILLE(int ID_VILLE) {
        this.ID_VILLE = ID_VILLE;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 89 * hash + this.ID;
        hash = 89 * hash + Objects.hashCode(this.NOM);
        hash = 89 * hash + this.ID_VILLE;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Aeroport other = (Aeroport) obj;
        if (this.ID != other.ID) {
            return false;
        }
        if (this.ID_VILLE != other.ID_VILLE) {
            return false;
        }
        if (!Objects.equals(this.NOM, other.NOM)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "AeroportModel{" + "ID=" + ID + ", NOM=" + NOM + ", ID_VILLE=" + ID_VILLE + '}';
    }
    
    
}
