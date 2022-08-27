<%--
 * @author Prof Matias Garcia.
 * <p> Copyright (C) 2022 para <a href = "https://www.profmatiasgarcia.com.ar/"> www.profmatiasgarcia.com.ar </a>
 * - con licencia GNU GPL3.
 * <p> Este programa es software libre. Puede redistribuirlo y/o modificarlo bajo los términos de la
 * Licencia Pública General de GNU según es publicada por la Free Software Foundation, 
 * bien con la versión 3 de dicha Licencia o bien (según su elección) con cualquier versión posterior. 
 * Este programa se distribuye con la esperanza de que sea útil, pero SIN NINGUNA GARANTÍA, 
 * incluso sin la garantía MERCANTIL implícita o sin garantizar la CONVENIENCIA PARA UN PROPÓSITO
 * PARTICULAR. Véase la Licencia Pública General de GNU para más detalles.
 * Debería haber recibido una copia de la Licencia Pública General junto con este programa. 
 * Si no ha sido así ingrese a <a href = "http://www.gnu.org/licenses/"> GNU org </a>
--%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Tutoriales</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</head>
<%
    Cookie c[] = request.getCookies(); 
%>
<%
    out.println("<body style=\"background-color: ");
    String mode = null; 
    if(c !=null){
        for (int i=0; i<c.length; i++){
            if (c[i].getName().equals("mode"))
                mode = c[i].getValue();
    }}
    
    switch (mode) {
        case "1":
            out.println("#5E6B71;\">");
            out.println("<nav class=\"navbar navbar-expand-lg navbar-dark bg-secondary\">");
            break;
        case "2":
            out.println("#F5FBFE;\">");
            out.println("<nav class=\"navbar navbar-expand-lg navbar-dark bg-primary\">");
            break;
        case "3":
            out.println("#EA73F0;\">");
            out.println("<nav class=\"navbar navbar-expand-lg navbar-light\" style=\"background-color: #B837E8;\">");
            break;
        case "4":
            out.println("#32981D;\">");
            out.println("<nav class=\"navbar navbar-expand-lg navbar-dark bg-success\">");
            break;
        default:
            break;
    }
%>

    <div class="container-fluid">
        <a class="navbar-brand" href="https://www.profmatiasgarcia.com.ar">Prof Matias Garcia</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarColor01">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="index.html">Inicio
                            <span class="visually-hidden">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Tutoriales.jsp">Tutoriales</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="Ejercicios.jsp">Ejercicios</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="AcercaDe.jsp">Acerca de</a>
                    </li>
                    </ul>
                    <form class="d-flex" action="LogoutServlet" method="POST">
                        <button class="btn btn-secondary my-2 my-sm-0" type="submit">Cerrar Sesion</button>
                    </form>
            </div>
    </div>
</nav>
<h1 align="center"> Tutoriales y Apuntes </h1>
    <div class="container px-5">
        <table class="table table-striped table-hover">
            <thead>
                <tr>    
                    <th> Nombre Cookie </th>
                    <th> Valor </th>
                </tr>
            </thead>
            <tbody>
                <%
                    if(c !=null){
                        for (int i=0; i<c.length; i++){
                        out.println("<tr><td><b>" + c[i].getName() + "</td>");
                        out.println("<td>" + c[i].getValue()  + "</td></tr>");
                    }}
                %>
            </tbody>
        </table>
    </div>
<div class="container my-4">
    <div class="border border-light p-3 mb-4">
        <div class="list-group">
        <%
            String lang = null; 
            if(c !=null){
                for (int i=0; i<c.length; i++){
                    if (c[i].getName().equals("lang"))
                        lang = c[i].getValue();
            }}
            if (lang.equals("es")){
        %>
        
        <a href="https://profmatiasgarcia.com.ar/uploads/tutoriales/ClaseTeoricaJAVA1.pdf" class="list-group-item list-group-item-action">Clase teórica 1 - Elementos del Lenguaje JAVA</a>
        <a href="https://profmatiasgarcia.com.ar/uploads/tutoriales/ClaseTeoricaJAVA2.pdf" class="list-group-item list-group-item-action list-group-item-warning">Clase teórica 2 - Clases y Objetos</a>
        <a href="https://profmatiasgarcia.com.ar/uploads/tutoriales/ClaseTeoricaJAVA3.pdf" class="list-group-item list-group-item-action">Clase teórica 3 - Excepciones</a>
        <a href="https://profmatiasgarcia.com.ar/uploads/tutoriales/ClaseTeoricaJAVA4.pdf" class="list-group-item list-group-item-action list-group-item-warning">Clase teórica 4 - Interfaces Gráficas</a>
        <a href="https://profmatiasgarcia.com.ar/uploads/tutoriales/ClaseTeoricaJAVA5.pdf" class="list-group-item list-group-item-action">Clase teórica 5 - Threads</a>
        <a href="https://profmatiasgarcia.com.ar/uploads/tutoriales/ClaseTeoricaJAVA6.pdf" class="list-group-item list-group-item-action list-group-item-warning">Clase teórica 6 - Bases de Datos</a>
        <a href="https://profmatiasgarcia.com.ar/uploads/tutoriales/ClaseTeoricaJAVA7.pdf" class="list-group-item list-group-item-action">Clase teórica 7 - Hibernate Framework</a>
        <a href="https://profmatiasgarcia.com.ar/uploads/tutoriales/ClaseTeoricaJAVA8.pdf" class="list-group-item list-group-item-action list-group-item-warning">Clase teórica 8 - Servlets y JSP - JakartaEE</a>
        <%
            }else {
        %>

        <a href="https://profmatiasgarcia.com.ar/uploads/tutoriales/ClaseTeoricaJAVA1.pdf" class="list-group-item list-group-item-action">Theory class 1 - Elements of the JAVA Language</a>
        <a href="https://profmatiasgarcia.com.ar/uploads/tutoriales/ClaseTeoricaJAVA2.pdf" class="list-group-item list-group-item-action list-group-item-warning">Theory class 2 - Classes and Objects</a>
        <a href="https://profmatiasgarcia.com.ar/uploads/tutoriales/ClaseTeoricaJAVA3.pdf" class="list-group-item list-group-item-action">Theory class 3 - Exceptions</a>
        <a href="https://profmatiasgarcia.com.ar/uploads/tutoriales/ClaseTeoricaJAVA4.pdf" class="list-group-item list-group-item-action list-group-item-warning">Theory class 4 - Graphic Interfaces</a>
        <a href="https://profmatiasgarcia.com.ar/uploads/tutoriales/ClaseTeoricaJAVA5.pdf" class="list-group-item list-group-item-action">Theory class 5 - Threads</a>
        <a href="https://profmatiasgarcia.com.ar/uploads/tutoriales/ClaseTeoricaJAVA6.pdf" class="list-group-item list-group-item-action list-group-item-warning">Theory class 6 - Databases</a>
        <a href="https://profmatiasgarcia.com.ar/uploads/tutoriales/ClaseTeoricaJAVA7.pdf" class="list-group-item list-group-item-action">Theory class 7 - Hibernate Framework</a>
        <a href="https://profmatiasgarcia.com.ar/uploads/tutoriales/ClaseTeoricaJAVA8.pdf" class="list-group-item list-group-item-action list-group-item-warning">Theory class 8 - Servlets and JSP - JakartaEE</a>
   
        <%
            }
        %>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</body>
</html>