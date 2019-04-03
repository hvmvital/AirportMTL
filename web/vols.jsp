
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="fr">
    <!-- HEAD -->
    <jsp:include page="head.jsp" />


    <body>
        <!-- HEADER -->
        <header>
            <p id="title-header">AÉROPORT DE MONTRÉAL</p>
            <p class="intro"><strong>Groupe 4:</strong> Valentia, Olesea, Ganna, Tatyana, Diallo, Tahiry, Vitaliy</p>
        </header>

        <div class=" flex-container row p-3">

            <div class="section col-12 col-md-9">
                <div class="row p-3 pt-0">
                    <!-- RECHERCHE -->
                    <!-- <div class="input-group input-group-md mt-3 mb-3 p-0 col-12">
                        <input type="text" 
                               class="form-control" 
                               placeholder="Cherchez un vol..." 
                               aria-label="Cherchez un vol..." 
                               aria-describedby="basic-addon2">
                        <div class="input-group-append">-->
                            <!--BTN Chercher
                            <a href="#filtrageDepart" class="btn btn-primary" role="button">Chercher</a>  
                            
                        </div> 
                    </div> -->
                    <!--BTN DÉPARTS-->
                     <a href="/departs" class="btn btn-danger col-6 col-sm-6" role="button">DÉPARTS</a>       
                    
                     <!--BTN ARRIVÉES-->
                     <a href="/arrivees" class="btn btn-warning col-6 col-sm-6" role="button">ARRIVÉES</a>   

                    
                </div>
   
               
 
            </div><!-- END ROW -->
            
        </div><!-- END SECTION -->


    </body>
</html>
