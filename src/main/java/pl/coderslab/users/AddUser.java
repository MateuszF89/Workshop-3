package pl.coderslab.users;

import pl.coderslab.utils.entity.User;
import pl.coderslab.utils.entity.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/add")
public class AddUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/users/add.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        String userName = request.getParameter("nazwa");
        String email = request.getParameter("email");
        String password = request.getParameter("haslo");

        User user = new User();

        user.setUserName(userName);
        user.setEmail(email);
        user.setPassword(password);

        UserDao userDao = new UserDao();
        userDao.create(user);

        response.sendRedirect(request.getContextPath() + "/user/list");



    }
}