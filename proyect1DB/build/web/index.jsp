<%-- 
    Document   : index
    Created on : 02-oct-2019, 10:10:39
    Author     : DAC_125
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <div>
            <h3>Estudiantes</h3>
            <form action="controlador" method="POST">
                <input type="submit" name="accion" value="Insertar"> 
                <input type="submit" name="accion" value="Modificar">
                <input type="submit" name="accion" value="Eliminar">
                <input type="submit" name="accion" value="Listar">
                
            </form>
        </div>
       
        <div>
            <table border="1">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>nombre</th>
                        <th>carne</th>
                        <th>telefono</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="dato" items="${datos}" >
                        
                        <tr>
                           <th>${dato.getId()}</th>
                            <th>${dato.getCarne()}</th>
                            <th>${dato.getNombre()}</th>
                            <th>${dato.getTelefono()}</th>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            
        </div>
    </center>
    </body>
</html>
