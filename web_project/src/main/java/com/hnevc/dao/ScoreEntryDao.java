package com.hnevc.dao;
import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.sql.DataSource;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class ScoreEntryDao {
    private static  Connection connection = null ;
    static {
        Properties properties = new Properties();
        InputStream is = ScoreEntryDao.class.getClassLoader().getResourceAsStream("druid.properties");
        try {
            properties.load(is);
        } catch (IOException e) {
            System.out.println("配置文件加载出错");
        }
        DataSource source = null;
        try {
            source = DruidDataSourceFactory.createDataSource(properties);
        } catch (Exception e) {
            System.out.println("连接池出错");
        }
        try {
             connection = source.getConnection();
        } catch (SQLException e) {
            System.out.println("获取连接池出错");
        }
    }
    public boolean findAccount(String username,String password) throws SQLException {
        PreparedStatement preparedStatement = connection.prepareStatement("select * from account where username = ? and password =?");
        preparedStatement.setString(1,username);
        preparedStatement.setString(2,password);
        ResultSet resultSet = preparedStatement.executeQuery();
        return resultSet.next();
    }
    public List<List<String>> findScore() throws SQLException {
        PreparedStatement pre = connection.prepareStatement("select distinct a.id,a.name,c.name,s.type,s.score\n" +
                "from students as a\n" +
                "inner join score s on a.id = s.s_id\n" +
                "inner join course c on s.c_id = c.id;");
        ArrayList<List<String>> al = new ArrayList<>();
        ResultSet resultSet = pre.executeQuery();
        while (resultSet.next()){
            ArrayList<String> list = new ArrayList<>();
            for (int i = 1; i <=5 ; i++) {
                list.add(resultSet.getString(i));
            }
            al.add(list);
        }
        return al;
    }
}
