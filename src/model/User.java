package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

import beans.UserBean;
import utils.DBConn;

public class User {
    public Random random = new Random();

    public boolean checkUser(UserBean user){
        if(!user.getUsername().equals("")|| user.getUsername() !=null){
            ResultSet rs=null;
            DBConn db=new DBConn();
            rs=db.doSelect("select * from user where username='"+user.getUsername()+"'");
            try {
                if(rs.next()){
                    if(user.getPassword().equals("")|| user.getPassword() !=null){
                        rs=db.doSelect("select * from user where password="+ user.getPassword());
                        return true;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return false;

    }

    public boolean addUser(UserBean user){
        if(!checkUser(user)) {
            DBConn db = new DBConn();
            String sql = "INSERT INTO user ( id,username,password) VALUES (" + String.valueOf(random
                    .nextInt(99999999)) + ",\"" + user.getUsername() + "\",\"" + user.getPassword() + "\");";
            db.doInsert(sql);
            return true;
        }else
            return false;
    }

    //测试
    public static void main(String[] args) {
        User user = new User();
        UserBean bean = new UserBean("test","test");
        if(user.addUser(bean)){
            System.out.println("ojbk");
        }else {
            System.out.println("no");
        }

    }

}

