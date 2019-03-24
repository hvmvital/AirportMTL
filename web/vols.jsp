
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <!-- HEAD -->
    <jsp:include page="head.jsp" />


    <body>
        <!-- HEADER -->
        <header>
            <p id="title-header">AÉROPORT DE MONTRÉAL <br> VOLES</p>
           <!-- <p class="intro">Bienvenue!</p>-->
        </header>

        <div class=" flex-container row p-3">

            <div class="section col-12 col-md-9">
                <div class="row p-3 pt-0">
                    <!-- RECHERCHE -->
                    <div class="input-group input-group-md mt-3 mb-3 p-0 col-12">
                        <input type="text" 
                               class="form-control" 
                               placeholder="Cherchez un vol..." 
                               aria-label="Cherchez un vol..." 
                               aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-primary " type="button">Chercher</button>
                        </div>
                    </div>
                    <!--BTN DÉPARTS-->
                     <a href="/AirportMTL/departs" class="btn btn-primary col-6 col-sm-6" role="button">DÉPARTS</a>       
                    
                     <!--BTN ARRIVÉES-->
                     <a href="/AirportMTL/arrivees" class="btn btn-secondary col-6 col-sm-6" role="button">ARRIVÉES</a>   

                    
                </div>
               
               
 
            </div><!-- END ROW -->
        </div><!-- END SECTION -->


    </body>
</html>
