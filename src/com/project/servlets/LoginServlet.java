package com.project.servlets;

import com.project.metier.IConx;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.Naming;
import java.rmi.NotBoundException;
//
//@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uid = "";
        String password = "";
        String type = "";

        uid =  request.getParameter("username") != null ? request.getParameter("username") : uid;
        password =  request.getParameter("password") != null ? request.getParameter("password") : password;
        type =  request.getParameter("type") != null ? request.getParameter("type") : type;
        try {
            IConx cnx = (IConx) Naming.lookup("rmi://localhost/cnx");
            if (cnx.checkcnx(uid,password,type)){
                HttpSession session = request.getSession();
                session.setAttribute("username", uid);
                session.setAttribute("type", type);
                session.setAttribute("Auth", "s");
                System.out.println(cnx.checkcnx(uid,password,type));

                if (type.equalsIgnoreCase("client")){
                    response.sendRedirect("clientMenu.jsp");
                }else {
                    response.sendRedirect("grossisteMenu.jsp");

                }
            }
            else{
                HttpSession session = request.getSession();
                session.setAttribute("Auth", "e");
                response.sendRedirect("index.jsp");
            }
        } catch (NotBoundException e) {
            e.printStackTrace();
        }




    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/");
        dispatcher.forward(request, response);
    }
}
