<%-- 
    Document   : index
    Created on : 05-oct-2019, 1:35:32
    Author     : DAC_125
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>

        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div id="header">
                        <h1>header</h1>
                    </div>
                </div>
            </div>

            <div class="content col-sm-10 col-sm-offset-1">
                <div class="row">
                    <div>
                        <div id="slider" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#slider" data-slide-to="0" class="active"></li>
                                <li data-target="#slider" data-slide-to="1"></li>
                                <li data-target="#slider" data-slide-to="2"></li>
                            </ol>


                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img src="images/1.jpg" alt="techonology"/>
                                    <div class="carousel-caption">
                                        <h1></h1>
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="images/2.jpg" alt="techonology"/>
                                    <div class="carousel-caption">
                                        <h1></h1>
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="images/3.jpg" alt="techonology"/>
                                    <div class="carousel-caption">
                                        <h1></h1>
                                    </div>
                                </div>
                            </div>

                            <a class="left carousel-control" href="#slider" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#slider" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>

                        </div>
                    </div>



                    <div class="articulos">
                        <tbody>
                            <% for (int i = 0; i < 9; i += 1) {%>
                            <tr>      
                        <div class="article col-sm-4">
                            <img class="image" src="images/articulos/1.jpg" />
                            <h4 class="title">Articulo</h4>
                            <p class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>

                            <span class="price">$000</span>
                            <button class="btn btn-primary" data-toggle="modal" data-target="#articulo">Mas Informacion</button>
                        </div>                            </tr>
                        <% }%>

                        <div class="modal" tabindex="-1" role="dialog" id="articulo">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5>Articulo</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <img class="image" src="images/articulos/1.jpg" />
                                        <p class='text'>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                                            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                        </p>
                                        <span class="price">$000</span>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>



                    </div>


                </div>
            </div>

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
            <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
