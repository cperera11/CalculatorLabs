/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cpj.calculatorlabs.controller;

import com.cpj.calculatorlabs.model.CalculatorLabService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author CPere
 */
@WebServlet(name = "Lab3Controller", urlPatterns = {"/Lab3Controller"})
public class Lab3Controller extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        CalculatorLabService labServ = null;
        String calcType = request.getParameter("calcType");
        String rectanglemsg = "";
        String circlemsg = "";
        String trianglemsg = "";
        try {
            labServ = new CalculatorLabService();

            request.setAttribute("calcType", calcType);
            if (calcType.equals("rectangle")) {
                String lStr = request.getParameter("length");
                int length = Integer.parseInt(lStr);
                String wStr = request.getParameter("width");
                int width = Integer.parseInt(wStr);
                rectanglemsg = labServ.calculateRectangleArea(length, width);
                request.setAttribute("rectanglemsg", rectanglemsg);
            } else if (calcType.equals("circle")) {
                String rStr = request.getParameter("radius");
                int radius = Integer.parseInt(rStr);
                circlemsg = labServ.calculateAreaOfaCircle(radius);
                request.setAttribute("circlemsg", circlemsg);
            } else {
                String aStr = request.getParameter("adjacent");
                int adjacent = Integer.parseInt(aStr);
                String oStr = request.getParameter("opposite");
                int opposite = Integer.parseInt(oStr);
                trianglemsg = labServ.calculateHypotenuseOfaTriangle(adjacent, opposite);
                request.setAttribute("trianglemsg", trianglemsg);
            }

        } catch (Exception e) {
            request.setAttribute("errMsg", e.getMessage());

        }

        RequestDispatcher view = request.getRequestDispatcher("lab3.jsp");
        view.forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
