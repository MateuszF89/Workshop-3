package pl.coderslab.users;

import pl.coderslab.utils.entity.User;
import pl.coderslab.utils.entity.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/edit")
public class EditUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        String id = request.getParameter("id");

        UserDao userDao = new UserDao();
        User read = userDao.read(Integer.parseInt(id));

        request.setAttribute("user", read);

        getServletContext().getRequestDispatcher("/users/edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        String userName = request.getParameter("nazwa");
        String email = request.getParameter("email");
        String password = request.getParameter("haslo");
        String id = request.getParameter("id");

        User user = new User();
        user.setUserName(userName);
        user.setEmail(email);
        user.setPassword(password);
        user.setId(Integer.parseInt(id));

        UserDao userDao = new UserDao();
        userDao.update(user);

        response.sendRedirect(request.getContextPath() + "/user/list");
    }
}