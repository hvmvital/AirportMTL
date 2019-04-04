
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String NumeroVol2 = null;
    String NumeroVol_placeHolder = null;
    String error_message;

    if (request.getParameter("numVol2") != null) {
        NumeroVol2 = request.getParameter("numVol2");
    } else {
        NumeroVol_placeHolder = "Numero de Vol";
        NumeroVol2 = "";
    }
    
    
    if (session.getAttribute("ERROR_NUM_TEL") != null){
     error_message = session.getAttribute("ERROR_NUM_TEL").toString();
    } else {
     error_message = "error";
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

        <div class="alert alert-danger col-12 w-50 ml-auto mr-auto" role="alert">
            <%= error_message %>
        </div>

        <div class=" flex-container row p-3">

            

            <div class="section col-12 col-md-9">
                <form action="alertes_sms"  method="GET">
                    <div class="form-row">
                        <div class="form-group  col-12 col-md-4">
                            <input 
                                type="text" 
                                class="form-control" 
                                name="numTelephone" 
                                placeholder="Télephone">
                        </div>
                        <div class="form-group col-12 col-md-4">

                            <input 
                                type="text" 
                                class="form-control" 
                                name="numVol" 
                                placeholder="<%= NumeroVol_placeHolder %>"
                                value="<%= NumeroVol2%>" 
                                >
                        </div>
                        <div class="form-group col-12 col-md-4">
                            <button type="submit" class="btn btn-dark">M'inscrire</button>
                        </div>

                    </div>
                </form>
            </div>
        </div>


    </body>
</html>
