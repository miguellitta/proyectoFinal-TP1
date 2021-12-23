<%-- 
    Document   : modificar
    Created on : 6 dic. 2021, 03:13:10
    Author     : Miguel
--%>

<%@page import="modelo.AlumnosDAO"%>
<%@page import="modelo.Alumnos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Alumnos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="./css/styles.css" rel="stylesheet">
    </head>
    <body>
        <% 
            String id = request.getParameter("id");
            int mid;
            mid = Integer.parseInt(id);
            Alumnos resultado=null;
            AlumnosDAO alumno = new AlumnosDAO();
            resultado = alumno.mostrarAlumno(mid);
        %>
        
        <h1 class="text-center">Modificar Alumno</h1>
        <div class="container">
            <div class="row d-flex justify-content-center text-center fw-bold">
                <form class="p-5 w-50" action="AlumnosController?accion=actualizar" method="POST">
                    <div class="mb-3">
                        <label for="id" class="form-label"></label>
                        <input type="hidden" class="form-control" id="id" name="id" value="<%= resultado.getId()%>" />
                    </div>
                    <div class="mb-3">
                        <label for="nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control text-center" id="nombre" name="nombre" value="<%= resultado.getNombres() %>" />
                    </div>
                    <div class="mb-3">
                        <label for="apellido" class="form-label">Apellido</label>
                        <input type="text" class="form-control text-center" id="apellido" name="apellido" value="<%= resultado.getApellidos() %>" />
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="text" class="form-control text-center" id="email" name="email" value="<%= resultado.getEmail() %>" />
                    </div>
                    <div class="mb-3">
                        <label for="telefono" class="form-label">Telefono</label>
                        <input type="text" class="form-control text-center" id="telefono" name="telefono" value="<%= resultado.getTelefono() %>" />
                    </div>
                    <button type="submit" class="btn btn-primary">Modificar</button>
                </form>
            </div>
        </div>
    </body>
</html>
