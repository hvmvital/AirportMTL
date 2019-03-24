
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />

        <title>AirportMTL</title>
        <!--<meta name="description" content="CV d'un développeur web full-stack : développement de sites, applications, crawlers. PHP, NodeJS, MySQL, MongoDB, POO, MVC, React, JQuery, Semantic UI, Bootstrap, RWD, UX, SEO...">
        -->

        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link rel="stylesheet" href="bootstrap-4.1.3-dist/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="bootstrap-4.1.3-dist\js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/style.css" />

    </head>


    <body>
        <!-- HEADER -->
        <header>
            <p id="title-header">Aéroport de Montréal</p>
           <!-- <p class="intro">Bienvenue!</p>-->
        </header>

        <div class=" flex-container row p-3">

            <!-- SIDEBAR -->
            <div id="sidebar" class="col-12 col-md-3" >
                <ul class="nav ">
                    
                    <li class="nav-item"><a class="nav-link" href="/AirportMTL/departs">Départs</a></li>
                    <li class="nav-item"><a class="nav-link" href="/AirportMTL/arrivees">Arrivées</a></li>
                    <li class="nav-item"><a class="nav-link" href="/AirportMTL/alertes_sms">Alertes SMS</a></li>
                </ul>
            </div>
            <div class="section col-12 col-md-9">
                <div class="row p-3 pt-0 mt-0">
                    <!--BTN AUJOURDHUI-->
                    <button class="btn btn-primary col-6 col-sm-6">AUJOURDHUI</button>

                    <!--BTN AUJOURDHUI-->
                    <button class="btn btn-secondary col-6 col-sm-6">DEMAIN</button>

                    <!-- RECHERCHE -->
                    <div class="input-group input-group-md mt-3 mb-0 p-0 col-12">
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
                <div id="vols"  class="mt-1 pl-0"> 
                    <table class="table table-dark">
                        <thead>
                            <tr>
                                <th scope="col">PRÉVU</th>
                                <th scope="col">RÉVISÉ</th>
                                <th scope="col">VOL</th>
                                <th scope="col">#</th>
                                <th scope="col">DESTINATION</th>
                                <th scope="col">ÉTAT</th>
                                <th scope="col">PORTE</th>
                                <th scope="col">SUIVRE</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>14:25<br>23 Mar.</td>
                                <td>18:00<br>23 Mar.</td>
                                <td>AIR CANADA</td>
                                <td>AC1768</td>
                                <td>Miami</td>
                                <td>Retardé</td>
                                <td>C81</td>
                                <td>SMS</td>

                            </tr>
                            <tr>
                                <td>14:25<br>23 Mar.</td>
                                <td>18:00<br>23 Mar.</td>
                                <td>AIR CANADA</td>
                                <td>AC1768</td>
                                <td>Miami</td>
                                <td>Retardé</td>
                                <td>C81</td>
                                <td>SMS</td>                               
                            </tr>



                        </tbody>
                    </table>
                </div>
            </div>
        </div>


    </body>
</html>
