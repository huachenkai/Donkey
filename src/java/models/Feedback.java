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
public class Feedback {

    private String usuggest;
    private ArrayList<Feedback> feedbackList;

    public String getUsuggest() {
        return usuggest;
    }

    public void setUsuggest(String usuggest) {
        this.usuggest = usuggest;
    }

    public ArrayList<Feedback> getFeedbackList() {
        feedbackList = new UserDAO().getAllFeedback();
        return feedbackList;
    }

    public void setFeedbackList(ArrayList<Feedback> feedbackList) {
        this.feedbackList = feedbackList;
    }

}
