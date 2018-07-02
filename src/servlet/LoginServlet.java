package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.User;
import beans.UserBean;

public class LoginServlet extends HttpServlet {

    /**
     *
     */
    private static final long serialVersionUID = 7381169134016556647L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //设置HTTP响应的文档类型,此处为Text/html,如果更改为application\msword则设置为word文档格式
        response.setContentType("text/html");
        //设置响应所采用的编码方式
        response.setCharacterEncoding("UTF-8");
        //取得参数username的值
        String uname=request.getParameter("username");
        String passwd=request.getParameter("password");


        UserBean user=new UserBean();
        user.setUsername(uname);
        user.setPassword(passwd);
        User cku=new User();
        boolean bool=cku.checkUser(user);

        String forward;
        if(bool){
            forward="success.jsp";

        }else{
            forward="error.jsp";
        }
        RequestDispatcher rd=request.getRequestDispatcher(forward);
        rd.forward(request,response);
    }


}