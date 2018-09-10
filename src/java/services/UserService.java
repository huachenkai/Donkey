/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import daos.RepositoryDAO;
import daos.UserDAO;
import java.util.List;
import models.AddGroup;
import models.BookHotel;
import models.Feedback;
import models.Groups;
import models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserDAO dao;
    @Autowired
    private RepositoryDAO repository;

    public String addUser(User u) {
        return dao.addUser(u);
    }

    public String bookHotel(BookHotel bh) {
        return dao.bookHotel(bh);
    }

    public String deleteUser(User u) {
        return dao.deleteUser(u);
    }

    public String deleteGroups(Groups g) {
        return dao.deleteGroups(g);
    }

    public String deleteFeedback(Feedback fb) {
        return dao.deleteFeedback(fb);
    }

    public String deleteAddGroup(AddGroup ag) {
        return dao.deleteAddGroup(ag);
    }

    public String deleteBookHotel(BookHotel bh) {
        return dao.deleteBookHotel(bh);
    }

    public String addFeedback(Feedback f) {
        return dao.addFeedback(f);
    }

    public String addGroup(AddGroup ag) {
        return dao.addGroup(ag);
    }

    public String userLogin(String name, String password) {
        return dao.getUser(name, password);
    }

    public List<User> getAllUsers() {
        return dao.getAllUsers();
    }

    public List<Feedback> getAllFeedback() {
        return dao.getAllFeedback();
    }

    public List<Groups> getAllGroups() {
        return dao.getAllGroups();
    }

    public List<AddGroup> getAllBooks() {
        return dao.getAllBooks();
    }

    public List<BookHotel> getAllBookHotel() {
        return dao.getAllBookHotel();
    }

    public User getUserByNameAndPass(String name, String password) {
        return dao.getUserByNameAndPass(name, password);
    }

    public User getUserById(String id) {
        return dao.getUserById(id);
    }

    public void updateUser(User user) {
        dao.updateUser(user);
    }

    public Groups getGroupsById(String id) {
        return dao.getGroupsById(id);
    }

    public void updateGroups(Groups groups) {
        dao.updateGroups(groups);
    }

    public void setUser(User user) {
        repository.setUser(user);
    }

    public User getUser() {
        return repository.getUser();
    }

}
