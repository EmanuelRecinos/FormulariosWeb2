<%-- 
    Document   : index
    Created on : 1/10/2023, 12:13:06
    Author     : emanuelrecinos
--%>
<%@page import ="modelo.Puesto"%>
<%@page import ="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleados</title>
        
        
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
        
        <h1>Formulario Empleados</h1>
        <div class "container">
            <form action = "" method="post" class="form-group">
                
                <label for="lbl_codigo"><b>Codigo:</b> </label><br>
                <input type="text" name ="txt_codigo" id="txt_codigo"class"="form-control" placeholder="Ejemplo: E001" required> <br>
                
                <label for="lbl_nombres"><b>Nombres:</b> </label> <br>
                <input type="text" name ="txt_nombres" id="txt_nombres"class"="form-control" placeholder="Ejemplo: Nombre 1 Nombre 2" required> <br>
                
                <label for="lbl_apellidos"><b>Direccion:</b> </label><br>
                <input type="text" name ="txt_apellidos" id="txt_direccion"class"="form-control" placeholder="Ejemplo: # Casa Calle Zona Ciudad " required> <br>
                
                <label for="lbl_apellidos"><b>Telefono:</b> </label><br>
                <input type="number" name ="txt_telefono" id="txt_telefono"class"="form-control" placeholder="Ejemplo:88888888" required> <br>
                
                <label for="lbl_fn"><b>Fecha Nacimiento:</b> </label><br>
                <input type="date" name ="txt_fn" id="txt_apellidos"class"="form-control" placeholder="Ejemplo: " required> <br>
                <label for="lbl_puesto"><b> Puesto</b> </label>
                <select name ="drop_puesto" id="drop_puesto" class="form-control">
                    
                    <%
                        
                        Puesto puesto = new Puesto();
                        HashMap<String, String> drop = puesto.drop_sangre();
                        for (String i: drop.keySet()){
                            out.println("<option value = '"+ i +"'>" + drop.get(i)+" </option>");
                        }
                    %>
                    
                </select>
                    <br> 
               
                 <button type="button" name="btn_agregar" id="btn_agregar"class="btn btn-primary">Agregar</button>
            </form>
            
            
        </div>
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
