package servlet;

import beans.UserBean;
import utils.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");

        String uname = req.getParameter("username");
        String passwd = req.getParameter("password");

        UserBean bean  = new UserBean(uname,passwd);
        User user = new User();
        boolean ok = user.addUser(bean);

        String forward;
        if(ok){
            forward = "login.jsp";
        }else{
            forward = "error.jsp";
        }
        RequestDispatcher rd = req.getRequestDispatcher(forward);
        rd.forward(req,resp);
    }
}
