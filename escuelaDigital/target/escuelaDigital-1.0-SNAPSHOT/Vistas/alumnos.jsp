<%-- 
    Document   : alumnos
    Created on : 4 dic. 2021, 22:47:17
    Author     : Miguel
--%>

<%@page import="modelo.AlumnosDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Alumnos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Alumnos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="./css/styles.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    </head>
    <body>
        <h1 class="text-center">Lista de Alumnos</h1>
        <div class="container">
            <div class="row">
                <a class="btn btn-primary w-25 m-3" href="AlumnosController?accion=nuevo"><i class="bi bi-person-plus-fill"></i>Agregar Alumno</a>
                <table class="table table-primary table-bordered border-primary">
                    <thead>
                        <th>Id</th>
                        <th>Nombres</th>
                        <th>Apellidos</th>
                        <th>Email</th>
                        <th>Telefono</th>
                        <th class="text-center">Modificar</th>
                        <th class="text-center">Eliminar</th>
                    </thead>
                    <tbody>
                        <%
                            List<Alumnos> resultado=null;
                            AlumnosDAO alumno = new AlumnosDAO();
                            resultado = alumno.listarAlumnos();
                            
                            for(int a = 0; a < resultado.size(); a++){
                                String ruta ="AlumnosController?accion=modificar&id=" + resultado.get(a).getId();
                                String rutaE ="AlumnosController?accion=eliminar&id=" + resultado.get(a).getId();
                                %>
                                <tr>
                                    <td><%= resultado.get(a).getId()%></td>
                                    <td><%= resultado.get(a).getNombres()%></td>
                                    <td><%= resultado.get(a).getApellidos()%></td>
                                    <td><%= resultado.get(a).getEmail()%></td>
                                    <td><%= resultado.get(a).getTelefono()%></td>
                                    <td class="text-center"><a class="text-success" href=<%= ruta%>><i class="bi bi-pencil-square"></i></a></td>
                                    <td class="text-center"><a class="text-danger" href=<%= rutaE%>><i class="bi bi-trash-fill"></i></a></td>
                                </tr>
                                <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
