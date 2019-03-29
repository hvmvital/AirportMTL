<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.DepartsDAO"%>
<%@page import="com.controller.Departs"%>
<%@page import="com.model.Vols"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    ArrayList<Vols> departsList = (ArrayList)request.getAttribute("DEPARTS");
    SimpleDateFormat sdf = new SimpleDateFormat("dd MMM");
    String date = sdf.format(new Date());
%>
<!DOCTYPE html>
<html lang="fr">
    <!-- HEAD -->
    <jsp:include page="head.jsp" />


    <body>
        <!-- HEADER -->
        <header>
            <p id="title-header">Départs</p>
            <p class="intro">Bienvenue!</p>
        </header>

        <div class=" flex-container row p-3">

            <!-- SIDEBAR -->
            <jsp:include page="sidebar.jsp" />

            <div class="section col-12 col-md-9">
                <div class="row pr-3 pl-3 pb-1 pt-0 mt-0">
                    <!-- RECHERCHE -->
                    <div class="input-group input-group-md mt-0 mb-2 p-0 col-12">
                        <input type="text" 
                               class="form-control" 
                               placeholder="Cherchez un vol..." 
                               aria-label="Cherchez un vol..." 
                               aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">Chercher</button>
                        </div>
                    </div>
                    <!--BTN AUJOURD'HUI-->
                    <a href="#g" class="btn btn-primary col-6 col-sm-6" role="button">AUJOURD'HUI</a>       

                    <!--BTN DEMAIN-->
                    <a href="#s" class="btn btn-secondary col-6 col-sm-6" role="button">DEMAIN</a> 
                </div>
                <!-- VOLS -->
                <div id="vols"  class="mt-1 p-0"> 
                    <table class="table table-dark">
                        <thead>
                            <tr>
                                <th scope="col">PRÉVU</th>
                                <th scope="col">RÉVISÉ</th>
                                <th scope="col">COMPAGNIE</th>
                                <th scope="col">VOL</th>
                                <th scope="col">DESTINATION</th>
                                <th scope="col">ÉTAT</th>
                                <th scope="col">PORTE</th>
                                <th scope="col">SUIVRE</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                for (Vols vols : departsList) {
                            %>
                           <tr>
                                <td><p class="time p-0 m-0"><%= vols.getHeure_prevu()%></p><%= date %></td>
                                <td><br></td>
                                <td><%= vols.getNOM_COMPAGNIE()%></td>
                                <td><%= vols.getNumeroVol()%></td>
                                <td><%= vols.getNOM_AEROPORT()%></td>
                                <td><%= vols.getNOM_STATUT()%></td>
                                <td><%= vols.getPORT()%></td>  
                                <td>SMS</td> 
                            </tr>
                            <% }
                            %>
                        </tbody>
                    </table>
                </div><!-- END VOLS -->
            </div><!-- END ROW -->
        </div><!-- END SECTION -->     
    </body>
</html>
