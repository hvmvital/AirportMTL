
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

    //session.setAttribute("CHECK_VALUES", "1");

%>
<!DOCTYPE html>
<html lang="en">


    <!-- HEAD -->
    <jsp:include page="head.jsp" />



    <body>
        <!-- HEADER -->
        <jsp:include page="header.jsp" />


        <div>
            <p class="intro">Restez informé en tout temps!</p>
        </div>




        <div class=" flex-container row p-3">
            <div class="section col-12 col-md-8">


                <form class="needs-validation" action="alertes_sms"  method="GET" novalidate>
                    <div class="form-row">
                        <div class="form-group  col-12 col-md-5">

                            <input type="text" 
                                   class="form-control" 
                                   id="validationCustom01" 
                                   name="numTelephone" 
                                   placeholder="Télephone"
                                   required>
                            
                        </div>
                        <div class="form-group  col-12 col-md-5">

                            <input type="text" 
                                   class="form-control" 
                                   id="validationCustom02" 
                                   name="numVol" 
                                    placeholder="Numero de Vol"
                                    value="<%= NumeroVol2%>"
                                   required >

                            
                        </div>
                        <div class="form-group col-12 col-md-2">     
                            <button type="submit" class="btn btn-dark w-100">M'inscrire</button>
                        </div>
                    </div>

                </form>
            </div>


                                   <!--

            <div class="section col-12 col-md-8">
                <form  action="alertes_sms"  method="GET">
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
                            <input type="hidden" 
                                   id="checkValues" 
                                   name="checkValues" 
                                   value="1"
                                   >
                        </div>


                        <div class="form-group col-12 col-md-2">
                            <button type="submit" class="btn btn-dark w-100">M'inscrire</button>
                        </div>

                    </div>
                </form>

                <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

                <div class="alert alert-danger col-12  ml-auto mr-auto" 
                     role="alert" style="visibility: ${ ERROR_NUM_TEL_VISIBILITY }">
                    ${ ERROR_NUM_TEL } 
                </div>
                <div class="alert alert-warning col-12 ml-auto mr-auto" 
                     role="alert" style="visibility: ${ ERROR_NUM_VOL_VISIBILITY }">
                    ${ ERROR_NUM_VOL }
                </div>
            </div>
        </div>
-->

    </body>
</html>
<script>
    (function () {
        'use strict';
        window.addEventListener('load', function () {
// Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
// Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function (form) {
                form.addEventListener('submit', function (event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();
</script>
<%
    session.removeAttribute("ERROR_NUM_TEL");
    session.removeAttribute("ERROR_NUM_VOL");
    session.setAttribute("ERROR_NUM_TEL_VISIBILITY", "hidden");
    session.setAttribute("ERROR_NUM_VOL_VISIBILITY", "hidden");
%>