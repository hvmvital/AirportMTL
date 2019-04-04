
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String NumeroVol2;
    String NumeroVol_placeHolder = null;
    
    if (request.getParameter("numVol2") != null) {
        NumeroVol2 = request.getParameter("numVol2");
        NumeroVol_placeHolder = NumeroVol2;
    } else {
        NumeroVol_placeHolder = "Numero de Vol";
        NumeroVol2 = "";
    }


%>
<!DOCTYPE html>
<html lang="en">


    <!-- HEAD -->
    <jsp:include page="head.jsp" />



    <body>
        <!-- HEADER -->
        <jsp:include page="header.jsp" />

        <!--
         <header>
             <p class="title">Alerte SMS</p>
             <p class="intro">Restez informé en tout temps!</p>
         </header>
        -->

       

        <div class=" flex-container row p-3">

            <div class="section col-12 col-md-8">
                <form action="alertes_sms"  method="GET">
                    <div class="form-row">
                        <div class="form-group  col-12 col-md-5">
                            <input 
                                type="text" 
                                class="form-control" 
                                name="numTelephone" 
                                placeholder="Télephone">
                        </div>
                        <div class="form-group col-12 col-md-5">

                            <input 
                                type="text" 
                                class="form-control" 
                                name="numVol" 
                                placeholder="Numero de Vol"
                                value="<%= NumeroVol2%>" 
                                >
                        </div>
                        <div class="form-group col-12 col-md-2">
                            <button type="submit" class="btn btn-dark w-100">M'inscrire</button>
                        </div>

                    </div>
                </form>
                 <div class="alert alert-danger col-12  ml-auto mr-auto" role="alert">
             ${ ERROR_NUM_TEL }
        </div>
        <div class="alert alert-warning col-12 ml-auto mr-auto" role="alert">
             ${ ERROR_NUM_VOL }
        </div>
            </div>
        </div>


    </body>
</html>

<%
    session.removeAttribute("ERROR_NUM_TEL");
    session.removeAttribute("ERROR_NUM_VOL");
%>