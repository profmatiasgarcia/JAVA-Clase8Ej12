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
    <title>Acerca De</title>
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
<h1 align="center"> Acerca De Prof Matias Garcia </h1>
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
        <p class="fst-italic fs-5">
        <%
            String lang = null; 
            if(c !=null){
                for (int i=0; i<c.length; i++){
                    if (c[i].getName().equals("lang"))
                        lang = c[i].getValue();
            }}
            if (lang.equals("es")){
        %>

        Licenciado en Tecnologías, Profesor y Técnico en Informática Aplicada, egresado del Instituto Nacional Superior del Profesorado Técnico de UTN. <br>
        Con mas de 20 años de experiencia en docencia, actualmente ejerce la enseñanza en nivel superior y se especializa en lenguajes de programación, Análisis y Diseño de Sistemas, Base de Datos, IA, Sistemas Operativos, Redes y Software Libre. <br>
        Miembro de Ubuntu-ar, BairesNorte y CaFeLUG, promotor del uso de Software Libre en educación, organiza y participa de eventos para difundir el uso del software libre y el acceso libre a la información y el conocimiento, para lo cual también desarrolla y comparte contenidos en su pagina web y sus redes sociales. <br>
        Ademas cuenta con un emprendimiento para dar soporte IT, desarrollo de software y consultoria en migración a plataformas de Software Libre para empresas e instituciones públicas o privadas. <br>

        <%
            }else {
        %>

        Bachelor of Technology, Professor and Technician in Applied Computing, graduated from the National Higher Institute of Technical Teachers of UTN. <br>
        With more than 20 years of teaching experience, he currently teaches at a higher level and specializes in programming languages, Systems Analysis and Design, Databases, AI, Operating Systems, Networks and Free Software. <br>
        Member of Ubuntu-ar, BairesNorte and CaFeLUG, promoter of the use of Free Software in education, organizes and participates in events to spread the use of free software and free access to information and knowledge, for which it also develops and shares content on your website and social networks. <br>
        It also has a venture to provide IT support, software development and migration consulting to Free Software platforms for companies and public or private institutions.
        
        <%
            }
        %>
        </p>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</body>
</html>