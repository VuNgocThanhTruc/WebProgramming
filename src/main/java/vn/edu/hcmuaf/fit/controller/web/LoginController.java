package vn.edu.hcmuaf.fit.controller.web;

import vn.edu.hcmuaf.fit.dao.UserDAO;
import vn.edu.hcmuaf.fit.model.User;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.System.*;

@WebServlet("/login")
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginController() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        String action = request.getParameter("action");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println("doget: " + action);
        if (action == null) {

            System.out.println("Khong thuc hien duoc gi het");

        } else if (action.equals("logout")) {
            HttpSession session = request.getSession();
            session.invalidate();
//                response.sendRedirect("signin");
            response.sendRedirect("signin");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        String action = request.getParameter("action");

        System.out.println("dopost: " + action);
        HttpSession session = request.getSession();
        session.setAttribute("mess", null);
        if (action == null) {
            System.out.println("Khong thuc hien duoc gi het");
            session.setAttribute("mess", null);
        } else if (action.equals("login")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            int checkUserName = new UserDAO().checkLogin(username, password);
            int checkEmail = new UserDAO().checkLoginbyEmail(username, password);

            if (checkUserName == 1) {

                User user = UserDAO.loadUsername().get(username);
                session.setAttribute("userlogin", user);
                session.setAttribute("mess", null);
                response.sendRedirect("home");

            } else if (checkEmail == 1) {
                User userEmail = UserDAO.loadEmail().get(username);
                session.setAttribute("userlogin", userEmail);
                session.setAttribute("mess", null);
                response.sendRedirect("home");

            } else if (checkUserName == 2) {
                User user = UserDAO.loadUsername().get(username);
                session.setAttribute("userlogin", user);
                session.setAttribute("mess", null);
                response.sendRedirect("admin/index");

            } else if (checkEmail == 2) {
                User user = UserDAO.loadUsername().get(username);
                session.setAttribute("userlogin", user);
                session.setAttribute("mess", null);
                response.sendRedirect("admin/index");

            } else {
                session.setAttribute("mess", "errorsignin");
                response.sendRedirect("signin");
            }
        } else if (action.equals("logout")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String hovaten = request.getParameter("hovaten");
            String email = request.getParameter("email");
            String dob = request.getParameter("dob");
            int sex = Integer.parseInt(request.getParameter("sex"));
            int check = new UserDAO().checksignup(hovaten, username,email, password);
            if (check == 1) {
                new UserDAO().signup(hovaten, sex, dob, email, username, password);
                request.getRequestDispatcher("/view/web/signin.jsp").forward(request, response);
            } else if (check == 2) {
                session.setAttribute("mess", "errornull");
                response.sendRedirect("signup");
            } else {
                session.setAttribute("mess", "errorsignup");
                response.sendRedirect("signup");
            }
        } else {
            request.getRequestDispatcher("/view/web/signin.jsp").forward(request, response);
            session.setAttribute("mess", null);
        }

    }
}