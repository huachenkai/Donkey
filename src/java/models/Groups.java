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
public class Groups {

    private String gid;
    private String gscenic;
    private String gstart;
    private String gtime;
    private String gcharge;
    private String gnumber;
    private String gway;
    private ArrayList<Groups> groupsList;

    public String getGid() {
        return gid;
    }

    public void setGid(String gid) {
        this.gid = gid;
    }

    public String getGscenic() {
        return gscenic;
    }

    public void setGscenic(String gscenic) {
        this.gscenic = gscenic;
    }

    public String getGtime() {
        return gtime;
    }

    public void setGtime(String gtime) {
        this.gtime = gtime;
    }

    public String getGcharge() {
        return gcharge;
    }

    public void setGcharge(String gcharge) {
        this.gcharge = gcharge;
    }

    public String getGway() {
        return gway;
    }

    public void setGway(String gway) {
        this.gway = gway;
    }

    public ArrayList<Groups> getGroupsList() {
        groupsList = new UserDAO().getAllGroups();
        return groupsList;
    }

    public void setGroupsList(ArrayList<Groups> groupsList) {
        this.groupsList = groupsList;
    }

    public String getGnumber() {
        return gnumber;
    }

    public void setGnumber(String gnumber) {
        this.gnumber = gnumber;
    }

    public String getGstart() {
        return gstart;
    }

    public void setGstart(String gstart) {
        this.gstart = gstart;
    }

}
