<%-- 
    Document   : index
    Created on : 22 dic. 2021, 23:09:07
    Author     : Miguel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="./css/styles.css" rel="stylesheet">
    </head>
    <body>
        <h1 class="text-center">Login</h1>
        <div class="container">
            <div class="row d-flex justify-content-center text-center">
                <form class="p-5 w-50" action="AlumnosController?accion=ingresar" method="POST">
                    <div class="mb-3">
                        <label for="email" class="form-label fw-bold">Email</label>
                        <input type="email" class="form-control text-center" id="email" name="email" placeholder="Ingrese su email"/>
                    </div>
                    <div class="mb-3">
                        <label for="pass" class="form-label fw-bold">Contraseña</label>
                        <input type="password" class="form-control text-center" id="pass" name="pass" placeholder="Ingrese su contraseña"/>
                        <small class="text-muted fw-bold">Olvidaste tu contraseña?</small>
                    </div>
                    <button type="submit" class="btn btn-primary">Ingresar</button>
                </form>
            </div>
           </div>
    </body>
</html>
