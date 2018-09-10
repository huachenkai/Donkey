/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import daos.UserDAO;
import java.util.ArrayList;

/**
 *
 * @author apple
 */
public class AddGroup {

    private String bid;
    private String bname;
    private String bnumber;
    private String bpeople;
    private ArrayList<AddGroup> booksList;

    public String getBid() {
        return bid;
    }

    public void setBid(String bid) {
        this.bid = bid;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }

    public String getBnumber() {
        return bnumber;
    }

    public void setBnumber(String bnumber) {
        this.bnumber = bnumber;
    }

    public String getBpeople() {
        return bpeople;
    }

    public void setBpeople(String bpeople) {
        this.bpeople = bpeople;
    }

    public ArrayList<AddGroup> getBooksList() {
        booksList = new UserDAO().getAllBooks();
        return booksList;
    }

    public void setBooksList(ArrayList<AddGroup> booksList) {
        this.booksList = booksList;
    }

}
