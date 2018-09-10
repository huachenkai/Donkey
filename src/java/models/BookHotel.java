/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import daos.UserDAO;
import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author apple
 */
public class BookHotel {

    private String hid;
    private String hrt;
    private String hname;
    private Date cid;
    private Date cod;
    private String hnumber;
    private String hpeople;
    private ArrayList<BookHotel> bookhotelList;

    public String getHid() {
        return hid;
    }

    public void setHid(String hid) {
        this.hid = hid;
    }

    public String getHrt() {
        return hrt;
    }

    public void setHrt(String hrt) {
        this.hrt = hrt;
    }

    public String getHname() {
        return hname;
    }

    public void setHname(String hname) {
        this.hname = hname;
    }

    public Date getCid() {
        return cid;
    }

    public void setCid(Date cid) {
        this.cid = cid;
    }

    public Date getCod() {
        return cod;
    }

    public void setCod(Date cod) {
        this.cod = cod;
    }

    public String getHnumber() {
        return hnumber;
    }

    public void setHnumber(String hnumber) {
        this.hnumber = hnumber;
    }

    public String getHpeople() {
        return hpeople;
    }

    public void setHpeople(String hpeople) {
        this.hpeople = hpeople;
    }

    public ArrayList<BookHotel> getBookhotelList() {
        bookhotelList = new UserDAO().getAllBookHotel();
        return bookhotelList;
    }

    public void setBookhotelList(ArrayList<BookHotel> bookhotelList) {
        this.bookhotelList = bookhotelList;
    }

}
