
<header >
    <nav id="navbarID" class="navbar navbar-expand-md navbar-dark pl-5 pr-5">
        <div class="d-flex w-50 mr-auto pt-3">
        <a href="/vols" class=" mr-auto">
            <img width="80"
                 height="80"
                 align="center" 
                 alt="Accueil" 
                 title="Accueil" 
                 src='images/vols.png' 
                 onmouseover="this.src = 'images/vols1.png'" 
                 onmouseout="this.src = 'images/vols.png'">
                            
                        </a>
            </div>
        <button class="navbar-toggler" 
                type="button" 
                data-toggle="collapse" 
                data-target="#collapsingNavbar" 
                aria-controls="collapsingNavbar" 
                aria-expanded="false" 
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        

        <div class="navbar-collapse collapse w-100 " id="collapsingNavbar">
            <ul class="navbar-nav w-100 justify-content-center">
            <li id="title-header" class="nav-item text-light title">

                ${ PAGE_TITLE }

            </li>

            </ul>

            <ul  class="nav navbar-nav ml-auto w-100 justify-content-center pr-0">
                

                <li class="nav-item">
                    <a class="nav-link  text-light mr-2" href="/departs">Départs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link  text-light ml-2" href="/arrivees">Arrivées</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link  text-light ml-2 pr-0" href="/alertes_sms">Alertes SMS</a>
                </li>
            </ul>

        </div>
    </nav>

</header>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

