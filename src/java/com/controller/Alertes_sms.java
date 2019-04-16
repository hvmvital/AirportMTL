/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.dao.AlertesSmsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Alertes_sms extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();
        session.setAttribute("PAGE_TITLE", "Alerte SMS");

        String telephone = request.getParameter("numTelephone");
        String numeroVol = request.getParameter("numVol");
        

        //String error_message_tel = "Le numero de telephone cellulaire est invalide ou manquant!";
        //String error_message_vol = "Le numero de vol est invalide ou manquant!";

        //session.setAttribute("ERROR_NUM_TEL_VISIBILITY", "hidden");
       // session.setAttribute("ERROR_NUM_VOL_VISIBILITY", "hidden");
        //session.setAttribute("CHECK_VALUES", "0");
        
        Boolean telTrue = true;
        Boolean volTrue = true;

        
        
      //if (session.getAttribute("CHECK_VALUES").equals("1")) {
            if (telephone == null || "".equals(telephone)) {

                //request.setAttribute("ERROR_NUM_TEL", error_message_tel);
               // session.setAttribute("ERROR_NUM_TEL", error_message_tel);
               // session.setAttribute("ERROR_NUM_TEL_VISIBILITY", "visible");
                telTrue = false;
            }
            if (numeroVol == null || "".equals(numeroVol)) {

                //request.setAttribute("ERROR_NUM_VOL", error_message_vol);
                //session.setAttribute("ERROR_NUM_VOL", error_message_vol);
                //session.setAttribute("ERROR_NUM_VOL_VISIBILITY", "visible");
                volTrue = false;
            }
            if (volTrue && telTrue) {
                AlertesSmsDAO dao = new AlertesSmsDAO();
                dao.inscrire(telephone, numeroVol);
                
            }
      // } 

        request.getRequestDispatcher("/alertes-sms.jsp").forward(request, response);

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
        try {
            processRequest(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(Alertes_sms.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(Alertes_sms.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
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
