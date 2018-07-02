package servlet;

import beans.BookBean;
import model.Book;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddBookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        String name = req.getParameter("name");
        String isbn = req.getParameter("isbn");
        String author = req.getParameter("author");
        String publisher = req.getParameter("publisher");
        String price = req.getParameter("price");

        BookBean bookBean = new BookBean();
        bookBean.setAuthor(author);
        bookBean.setIsbn(isbn);
        bookBean.setName(name);
        bookBean.setPublisher(publisher);
        bookBean.setPrice(Float.parseFloat(price));

        Book book = new Book();
        boolean ok = book.addBook(bookBean);

        String forward;
        if(ok){
            forward = "success.jsp";
        }else {
            forward = "error.jsp";
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher(forward);
        requestDispatcher.forward(req,resp);
    }
}
