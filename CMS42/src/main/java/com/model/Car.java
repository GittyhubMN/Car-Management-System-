package com.model;

import java.io.InputStream;
import java.io.Serializable;
import java.sql.Blob;

public class Car implements Serializable {
    private static final long serialVersionUID = 1L;
    int carid;
    String carmodel;
    long carprice;
    Blob carimage;
    private InputStream carimageStream;
    
    public int getCarid() {
        return carid;
    }

    public void setCarid(int carid) {
        this.carid = carid;
    }

    public String getCarmodel() {
        return carmodel;
    }

    public void setCarmodel(String carmodel) {
        this.carmodel = carmodel;
    }

    public long getCarprice() {
        return carprice;
    }

    public void setCarprice(long carprice) {
        this.carprice = carprice;
    }

    public Blob getCarimage() {
        return carimage;
    }

    public void setCarimage(Blob carimage) {
        this.carimage = carimage;
    }
    public InputStream getCarimageStream() {
        return carimageStream;
    }

    public void setCarimageStream(InputStream carimageStream) {
        this.carimageStream = carimageStream;
    }

}
