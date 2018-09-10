/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author apple
 */
public class Util {

    public static SessionFactory getSessionFactory() {
        Configuration config = new Configuration().configure();
        if (config == null) {
            return null;
        }
        return config.buildSessionFactory();
    }
}
