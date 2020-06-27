package com.hnevc.service;

import com.hnevc.dao.ScoreEntryDao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Service {
    ScoreEntryDao sed = new ScoreEntryDao();
    public boolean findAccount(String username,String password){
        try {
            return  sed.findAccount(username,password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    public List<List<String>> findScore(){

        try {
            return sed.findScore();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
