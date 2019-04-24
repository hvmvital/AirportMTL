<%@page import="java.util.Calendar"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.DepartsDAO"%>
<%@page import="com.controller.Arrivees"%>
<%@page import="com.model.Vols"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    ArrayList<Vols> arriveesList = (ArrayList) request.getAttribute("ARRIVEES");
    ArrayList<Vols> arriveesListDemain = (ArrayList) request.getAttribute("ARRIVEES_DEMAIN");

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
        <jsp:include page="header.jsp" />
        
        <!--
        <header>
            <p class="title">Arrivées</p>
             <p class="intro">Bienvenue!</p>
        </header>
        -->
        
        <div class="section row p-3">
            <!-- RECHERCHE -->                  
            <div class="input-group mb-3 p-0 col-12 ">
                <form class="input-group" action="arrivees" method="GET">
                    <input class="form-control"
                           type="text" 
                           name="filtre"
                           placeholder="Cherchez un vol..." 
                           aria-label="Cherchez un vol..." 
                           aria-describedby="basic-addon2"
                           >
                    <div class="input-group-append">
                        <button 
                            type="submit" 
                            class="btn btn-danger" >Chercher
                        </button> 
                    </div>
                </form>
            </div>
            
            
                    <!--BTN AUJOURD'HUI-->
                    <a  href="#" id="bntToday" class="btn btn-primary col-3 col-sm-3" role="button">AUJOURD'HUI</a>       

                    <!--BTN DEMAIN-->
                    <a href="#" id="bntTomorrow" class="btn btn-warning col-3 col-sm-3" role="button">DEMAIN</a> 
            
                <!-- VOLS -->
                <div id="vols"  class="mt-1 p-0"> 
                    <table class="table table-dark">
                        <thead>
                            <tr>
                                <th scope="col">PRÉVU</th>
                                <th scope="col">RÉVISÉ</th>
                                <th scope="col">COMPAGNIE</th>
                                <th scope="col">VOL</th>
                                <th scope="col">PROVENANCE</th>
                                <th scope="col">ÉTAT</th>
                                <th scope="col">SUIVRE</th>
                            </tr>
                        </thead>
                        <!-- AUJOURDHUI -->
                        <tbody id="aujourdhui">
                            <tr class="bg-primary text-light">
                                <td colspan="8">
                                    <p class="time p-0 m-0"><%= today%></p>
                                </td>

                            </tr>
                            <%
                                for (Vols vols : arriveesList) {
                            %>

                            <tr>
                                <td>
                                    <p class="time p-0 m-0"><%= vols.getHeure_prevu()%></p>
                                    <%= today%>
                                </td>
                                <td>
                                    <p class="time p-0 m-0"><%= vols.getHEURE_REVISE()%></p>
                                    <%= sdf.format(vols.getDATE_REVISE())%>
                                </td>
                                <td><%= vols.getNOM_COMPAGNIE()%></td>
                                <td class="numVol text-info"><%= vols.getNumeroVol()%></td>
                                <td><%= vols.getNOM_AEROPORT()%></td>
                                <td><%= vols.getNOM_STATUT()%></td>
                                <td><a href="alertes_sms?numVol2=<%= vols.getNumeroVol()%>" >  <!-- servlet SMS a changer -->
                                       <img src="images/sms.png"
                                            width="35"
                                            alt="Notification SMS"
                                            title="Notification SMS"></a>
                               </td>                                
                            </tr>
                            <% }
                            %>
                        </tbody>
                        <!-- DEMAIN -->

                        <tbody id="demain"  >
                            <tr class="bg-warning text-dark">
                                <td colspan="8">
                                    <p class="time p-0 m-0"><%= tomorrow%></p>

                                </td>

                            </tr>
                            <%
                                for (Vols vols : arriveesListDemain) {
                            %>

                            <tr>
                                <td>
                                    <p class="time p-0 m-0"><%= vols.getHeure_prevu()%></p>
                                    <%= today%>
                                </td>
                                <td>
                                    <p class="time p-0 m-0"><%= vols.getHEURE_REVISE()%></p>
                                    <%= tomorrow %>
                                </td>
                                <td><%= vols.getNOM_COMPAGNIE()%></td>
                                <td class="numVol text-info"><%= vols.getNumeroVol()%></td>
                                <td><%= vols.getNOM_AEROPORT()%></td>
                                <td><%= vols.getNOM_STATUT()%></td>
                                <td><a href="alertes_sms?numVol2=<%= vols.getNumeroVol()%>" >  <!-- servlet SMS a changer -->
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
