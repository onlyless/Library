package utils;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

import beans.UserBean;

public class User {
    public Random random = new Random();

    public boolean checkUser(UserBean user){
        if(user.username.equals("")||user.username!=null){
            ResultSet rs=null;
            DBConn db=new DBConn();
            rs=db.doSelect("select * from student where userName='"+user.getUsername()+"'");
            try {
                if(rs.next()){
                    if(user.password.equals("")||user.password!=null){
                        rs=db.doSelect("select * from student where userPasswd="+user.password);
                        return true;
                    }
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return false;

    }

    public boolean addUser(UserBean user){
        if(!checkUser(user)) {
            DBConn db = new DBConn();
            String sql = "INSERT INTO student ( userId,userName,userPasswd) VALUES (" + String.valueOf(random
                    .nextInt(34234111)) + ",\"" + user.getUsername() + "\",\"" + user.getPassword() + "\");";
            db.doInsert(sql);
            return true;
        }else
            return false;
    }

    //测试
    public static void main(String[] args) {
//        User user = new User();
//        UserBean bean = new UserBean("test","test");
//        if(user.addUser(bean)){
//            System.out.println("ojbk");
//        }else {
//            System.out.println("no");
//        }
        System.out.println("你好");

    }

}

