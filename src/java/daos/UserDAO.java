/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import models.User;
import utils.Util;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import models.AddGroup;
import models.BookHotel;
import models.Feedback;
import models.Groups;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {

    //注册
    public String addUser(User user) {
        SessionFactory factory = Util.getSessionFactory();
        if (factory == null) {
            return "configIsNull";
        }
        Session session = factory.openSession();
        Transaction trans = session.beginTransaction();
        Serializable object = session.save(user);
        trans.commit();
        session.close();
        if (object == null) {
            return "addFail";
        }
        return "addSuccess";
    }

    //预定酒店
    public String bookHotel(BookHotel bookhotel) {
        SessionFactory factory = Util.getSessionFactory();
        if (factory == null) {
            return "configIsNull";
        }
        Session session = factory.openSession();
        Transaction trans = session.beginTransaction();
        Serializable object = session.save(bookhotel);
        trans.commit();
        session.close();
        if (object == null) {
            return "bookFail";
        }
        return "bookSuccess";
    }

    //删除用户
    public String deleteUser(User user) {
        SessionFactory factory = Util.getSessionFactory();
        if (factory == null) {
            return "configIsNull";
        }
        Session session = factory.openSession();
        Transaction trans = session.beginTransaction();
        session.delete(user);
        trans.commit();
        session.close();
        return "deleteSuccess";
    }

    //删除旅行团
    public String deleteGroups(Groups groups) {
        SessionFactory factory = Util.getSessionFactory();
        if (factory == null) {
            return "configIsNull";
        }
        Session session = factory.openSession();
        Transaction trans = session.beginTransaction();
        session.delete(groups);
        trans.commit();
        session.close();
        return "deleteSuccess";
    }

    //删除反馈信息
    public String deleteFeedback(Feedback feedback) {
        SessionFactory factory = Util.getSessionFactory();
        if (factory == null) {
            return "configIsNull";
        }
        Session session = factory.openSession();
        Transaction trans = session.beginTransaction();
        session.delete(feedback);
        trans.commit();
        session.close();
        return "deleteSuccess";
    }

    //删除旅行团预定信息
    public String deleteAddGroup(AddGroup addgroup) {
        SessionFactory factory = Util.getSessionFactory();
        if (factory == null) {
            return "configIsNull";
        }
        Session session = factory.openSession();
        Transaction trans = session.beginTransaction();
        session.delete(addgroup);
        trans.commit();
        session.close();
        return "deleteSuccess";
    }

    //删除酒店预定信息
    public String deleteBookHotel(BookHotel bookhotel) {
        SessionFactory factory = Util.getSessionFactory();
        if (factory == null) {
            return "configIsNull";
        }
        Session session = factory.openSession();
        Transaction trans = session.beginTransaction();
        session.delete(bookhotel);
        trans.commit();
        session.close();
        return "deleteSuccess";
    }

    //更新用户信息
    public String updateUser(User user) {
        SessionFactory factory = Util.getSessionFactory();
        if (factory == null) {
            return "configIsNull";
        }
        Session session = factory.openSession();
        Transaction trans = session.beginTransaction();
        session.update(user);
        trans.commit();
        session.close();
        return "updateSuccess";
    }

    //更新旅行团信息
    public String updateGroups(Groups groups) {
        SessionFactory factory = Util.getSessionFactory();
        if (factory == null) {
            return "configIsNull";
        }
        Session session = factory.openSession();
        Transaction trans = session.beginTransaction();
        session.update(groups);
        trans.commit();
        session.close();
        return "updateSuccess";
    }

    //更新旅行团信息
    public Groups getGroupsById(String id) {
        SessionFactory factory = Util.getSessionFactory();
        if (factory == null) {
            return null;
        }
        Session session = factory.openSession();
        Transaction trans = session.beginTransaction();
        Criteria criteria = session.createCriteria(Groups.class).add(Restrictions.eq("id", id));
        List<Groups> list = criteria.list();
        trans.commit();
        session.close();
        return list.isEmpty() ? null : list.get(0);
    }
    
//    public static void main(String[] args) {
//        UserDAO dao = new UserDAO();
//        Groups g = new Groups();
//        g.setGid("G09");
//        g.setGnumber("20");
//        dao.updateGroups(g);
//    }

    //用户反馈
    public String addFeedback(Feedback feedback) {
        SessionFactory factory = Util.getSessionFactory();
        if (factory == null) {
            return "configIsNull";
        }
        Session session = factory.openSession();
        Transaction trans = session.beginTransaction();
        Serializable object = session.save(feedback);
        trans.commit();
        session.close();
        if (object == null) {
            return "addFeedbackFail";
        }
        return "addFeedbackSuccess";
    }

    //用户预订旅行团
    public String addGroup(AddGroup addgroup) {
        SessionFactory factory = Util.getSessionFactory();
        if (factory == null) {
            return "configIsNull";
        }
        Session session = factory.openSession();
        Transaction trans = session.beginTransaction();
        Serializable object = session.save(addgroup);
        trans.commit();
        session.close();
        if (object == null) {
            return "addAddGroupFail";
        }
        return "addAddGroupSuccess";
    }

    //登录
    public String getUser(String name, String password) {
        SessionFactory factory = Util.getSessionFactory();
        if (factory != null) {
            Session session = factory.openSession();
            Transaction trans = session.beginTransaction();
            Criteria criteria = session.createCriteria(User.class);
            criteria = criteria.add(Restrictions.eq("name", name));
            criteria = criteria.add(Restrictions.eq("pass", password));
            List list = criteria.list();
            if (list.isEmpty()) {
                System.out.println("Fail");
                return "noUser";
            }
            System.out.println("Success");
            return "UserOk";
        }
        return "ConfigISnull";
    }

    //通过id获取user
    public User getUserById(String id) {
        SessionFactory factory = Util.getSessionFactory();
        if (factory != null) {
            Session session = factory.openSession();
            Transaction trans = session.beginTransaction();
            Criteria criteria = session.createCriteria(User.class);
            criteria = criteria.add(Restrictions.eq("id", id));
            List<User> list = criteria.list();
            return list.get(0);
        }
        return null;
    }

    //获取User
    public User getUserByNameAndPass(String name, String password) {
        SessionFactory factory = Util.getSessionFactory();
        if (factory != null) {
            Session session = factory.openSession();
            Transaction trans = session.beginTransaction();
            Criteria criteria = session.createCriteria(User.class);
            criteria = criteria.add(Restrictions.eq("name", name));
            criteria = criteria.add(Restrictions.eq("pass", password));
            List<User> list = criteria.list();
            return list.get(0);
            
        }
        return null;
    }

    //显示所有用户信息
    public ArrayList<User> getAllUsers() {
        SessionFactory factory = Util.getSessionFactory();
        if (factory != null) {
            Session session = factory.openSession();
            Transaction trans = session.beginTransaction();
            String queryString = "from User";
            Query query = session.createQuery(queryString);
            ArrayList<User> list = (ArrayList<User>) query.list();
            if (list.isEmpty()) {
                return null;
            }
            return list;
        }
        return null;
    }

    //显示所有反馈信息
    public ArrayList<Feedback> getAllFeedback() {
        SessionFactory factory = Util.getSessionFactory();
        if (factory != null) {
            Session session = factory.openSession();
            Transaction trans = session.beginTransaction();
            String queryString = "from Feedback";
            Query query = session.createQuery(queryString);
            ArrayList<Feedback> lista = (ArrayList<Feedback>) query.list();
            if (lista.isEmpty()) {
                return null;
            }
            return lista;
        }
        return null;
    }

    //显示所有旅行团信息
    public ArrayList<Groups> getAllGroups() {
        SessionFactory factory = Util.getSessionFactory();
        if (factory != null) {
            Session session = factory.openSession();
            Transaction trans = session.beginTransaction();
            String queryString = "from Groups";
            Query query = session.createQuery(queryString);
            ArrayList<Groups> listb = (ArrayList<Groups>) query.list();
            if (listb.isEmpty()) {
                return null;
            }
            return listb;
        }
        return null;
    }

    //显示所有报团信息
    public ArrayList<AddGroup> getAllBooks() {
        SessionFactory factory = Util.getSessionFactory();
        if (factory != null) {
            Session session = factory.openSession();
            Transaction trans = session.beginTransaction();
            String queryString = "from AddGroup";
            Query query = session.createQuery(queryString);
            ArrayList<AddGroup> listc = (ArrayList<AddGroup>) query.list();
            if (listc.isEmpty()) {
                return null;
            }
            return listc;
        }
        return null;
    }

    //显示所有预定酒店信息
    public ArrayList<BookHotel> getAllBookHotel() {
        SessionFactory factory = Util.getSessionFactory();
        if (factory != null) {
            Session session = factory.openSession();
            Transaction trans = session.beginTransaction();
            String queryString = "from BookHotel";
            Query query = session.createQuery(queryString);
            ArrayList<BookHotel> listd = (ArrayList<BookHotel>) query.list();
            if (listd.isEmpty()) {
                return null;
            }
            return listd;
        }
        return null;
    }
}
