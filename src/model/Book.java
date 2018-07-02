package model;

import beans.BookBean;
import utils.DBConn;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Random;

public class Book {
    Random random = new Random();

    public boolean checkBook(BookBean bookBean){
        if(bookBean.getIsbn()!=null||!bookBean.getIsbn().equals("")){
            ResultSet rs = null;
            DBConn dbConn = new DBConn();
            String sql;
            sql = "select * from book where isbn = \""+bookBean.getIsbn()+"\";";
            rs = dbConn.doSelect(sql);
            try {
                if(rs.next()){
                    return true;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return false;
        }
        return false;
    }

    public ArrayList<BookBean> getBooks() throws SQLException {
        ResultSet rs = null;
        DBConn dbConn = new DBConn();
        String sql = "select * from book";
        rs = dbConn.doSelect(sql);

        ArrayList<BookBean> list = new ArrayList<>();
        while(rs.next()) {
            BookBean temp = new BookBean();
            temp.setName(rs.getString("name"));
            temp.setPublisher(rs.getString("publisher"));
            temp.setAuthor(rs.getString("author"));
            temp.setIsbn(rs.getString("isbn"));
            temp.setPrice(Float.parseFloat(rs.getString("price")));
            list.add(temp);
        }

        return list;
    }

    public boolean addBook(BookBean bookBean){
        if(!checkBook(bookBean)){
            DBConn dbConn = new DBConn();
            String sql = "INSERT INTO book (isbn,name,author,publisher,price) VALUES (\""+bookBean.getIsbn()+"\"," +
                    "\""+bookBean.getName()+"\",\""+bookBean.getAuthor()+"\",\""+bookBean.getPublisher()+"\"," +
                    "\""+bookBean
                    .getPrice()+"\");";
            dbConn.doInsert(sql);
            return true;
        }else
            return false;
    }

    public static void main(String[] args) {
        Book book = new Book();
//        BookBean bookBean = new BookBean();
//        bookBean.setIsbn("9787513330459");
//        bookBean.setAuthor("余秀华");
//        bookBean.setName("无端欢喜");
//        bookBean.setPublisher("新经典文化/新星出版社");
//        book.addBook(bookBean);
        ArrayList<BookBean> bookBeans = null;
        try {
            bookBeans = book.getBooks();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        for(BookBean b:bookBeans){
            System.out.println(b.getIsbn()+" "+b.getName());
        }
    }
}
