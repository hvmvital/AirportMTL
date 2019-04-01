<%@page import="java.util.Calendar"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.FiltreDAO"%>
<%@page import="com.controller.Departs"%>
<%@page import="com.controller.FiltreDeparts"%>
<%@page import="com.model.Vols"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    ArrayList<Vols> departsFList = (ArrayList)request.getAttribute("FILTRE_DEPARTS");
    
    
    
    SimpleDateFormat sdf = new SimpleDateFormat("dd MMM");
    //String date = sdf.format(new Date());
    
    
    Calendar calendar = Calendar.getInstance();
    Date today_date = calendar.getTime();
    String today = sdf.format(today_date);
    
    calendar.add(Calendar.DAY_OF_YEAR, 1);
    Date tomorrow_date = calendar.getTime();
    String tomorrow = sdf.format(tomorrow_date);
%>
<!DOCTYPE html>
<html lang="fr">
    <!-- HEAD -->
    <jsp:include page="head.jsp" />


    <body>
        <!-- HEADER -->
        <header>
            <p id="title-header">Départs</p>
            <p class="intro">Bienvenue! </p>
            
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
                    
                </div>
               
                <!-- VOLS -->
                <div id="vols"  class="mt-1 p-0"> 
                    <table class="table table-dark table-hover">
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
                        <!-- FILTRAGE -->
                        <tbody id="aujourdhui">
                            <tr class="bg-primary text-light">
                                <td colspan="8">
                                    <p class="time p-0 m-0"><%= today %></p>
                                    
                                </td>
                                
                            </tr>
                            <%
                                for (Vols vols : departsFList) {
                            %>
                            
                           <tr >
                                <td>
                                    <p class="time p-0 m-0"><%= vols.getHeure_prevu()%></p>
                                    <%= today %>
                                </td>
                                <td>
                                    <p class="time p-0 m-0"><%= vols.getHEURE_REVISE()%></p>
                                    
                                    <%= sdf.format(vols.getDATE_REVISE()) %>
                                </td>
                                <td><%= vols.getNOM_COMPAGNIE()%></td>
                                <td class="numVol text-info"><%= vols.getNumeroVol()%></td>
                                <td><%= vols.getNOM_AEROPORT()%></td>
                                <td><%= vols.getNOM_STATUT()%></td>
                                <td><%= vols.getPORT()%></td>  
                                <td><a href="/alertes-sms.jsp" >  <!-- servlet SMS a changer -->
                                        <img src="images/sms.png"
                                             width="35"
                                         alt="Notification SMS" 
                                         title="Notification SMS"></a>
                                </td>  
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
