
<%-- 
    Document   : login
    Created on : 06-oct-2019, 20:49:49
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
        <form action="controlador" method="POST">
            <div id="cuadro">

                <div id="cuerpo">
                    <form>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Usuario</label>
                            <input type="usuario" class="form-control" id="Usuario"  placeholder="Usuario">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                        </div>
                        <div class="btns">
                            <button  class="btn btn-secondary" type="submit" name="accion" value="componentesadmin1">Ingresar como Administrador</button>
                            <button  class="btn btn-secondary" type="submit" name="accion" value="componentesadmin1">Ingrsear como Cliente</button>

                        </div>
                    </form>
                </div>
            </div>

        </form>

    </body>
</html>
