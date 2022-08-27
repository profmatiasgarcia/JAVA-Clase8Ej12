/**
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
**/
package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Enumeration;

public class LoginServlet extends HttpServlet {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String params = null;
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Datos pasados por request</title>");
            out.println("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n"
                    + "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n"
                    + "    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx\" crossorigin=\"anonymous\">\n"
                    + "<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa\" crossorigin=\"anonymous\"></script>");
            out.println("</head>");
            out.println("<body style=\"background-color: ");
            if (null != request.getParameter("mode")) {
                switch (request.getParameter("mode")) {
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
            }
            out.println(navBar());

            Enumeration e = request.getParameterNames();

            out.println("<div class=\"container px-5 \">");
            out.println("<table class=\"table table-striped table-hover\">");
            out.println("<thead>");
            out.println("<tr><th> Parametro </th>"
                    + "<th> Valor </th>");
            out.println("</thead>");
            out.println("<tbody>");
            while (e.hasMoreElements()) {
                params = (String) e.nextElement();
                if (params != null) {
                    out.println("<tr><td><b>" + params + "</td>");
                    out.println("<td>" + request.getParameter(params) + "</td></tr>");
                    Cookie c = new Cookie(params, request.getParameter(params));
                    c.setMaxAge(30 * 60);
                    response.addCookie(c);
                }
            }
            out.println("</tbody>\n"
                    + "    </table>");
            out.println("</div>");
           
            out.println("<div class=\"container px-5\">");
            out.println("<h4>");
            if ("es".equals(request.getParameter("lang")))
                out.println(txtES());
            else
                out.println(txtEN());
            out.println("</h4>");
            out.println("</div>");
            
            out.println("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\"\n"
                    + "        integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\"\n"
                    + "        crossorigin=\"anonymous\"></script>");
            out.println("</body>");
            out.println("</html>");
        }
     
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    public String navBar() {
        
        String code = "<div class=\"container-fluid\">\n"
                + "    <a class=\"navbar-brand\" href=\"https://www.profmatiasgarcia.com.ar\">Prof Matias Garcia</a>\n"
                + "    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarColor01\" aria-controls=\"navbarColor01\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n"
                + "      <span class=\"navbar-toggler-icon\"></span>\n"
                + "    </button>\n"
                + "    <div class=\"collapse navbar-collapse\" id=\"navbarColor01\">\n"
                + "      <ul class=\"navbar-nav me-auto\">\n"
                + "        <li class=\"nav-item\">\n"
                + "          <a class=\"nav-link active\" href=\"index.html\">Inicio\n"
                + "            <span class=\"visually-hidden\">(current)</span>\n"
                + "          </a>\n"
                + "        </li>\n"
                + "        <li class=\"nav-item\">\n"
                + "          <a class=\"nav-link\" href=\"Tutoriales.jsp\">Tutoriales</a>\n"
                + "        </li>\n"
                + "        <li class=\"nav-item\">\n"
                + "          <a class=\"nav-link\" href=\"Ejercicios.jsp\">Ejercicios</a>\n"
                + "        </li>\n"
                + "        <li class=\"nav-item\">\n"
                + "          <a class=\"nav-link\" href=\"AcercaDe.jsp\">Acerca de</a>\n"
                + "        </li>\n"
                + "      </ul>\n"
                + "      <form class=\"d-flex\" action=\"LogoutServlet\" method=\"POST\">\n"
                + "        <button class=\"btn btn-secondary my-2 my-sm-0\" type=\"submit\">Cerrar Sesion</button>\n"
                + "      </form>\n"
                + "    </div>\n"
                + "  </div>\n"
                + "</nav>\n";

        return code;
    }

    public String txtES() {
        String txt = "El protocolo de transferencia de hipertexto es el encargado de transmitir páginas web por las redes TCP/IP. Toda la programación de aplicaciones se basa en el uso de este protocolo. Mediante HTTP el proceso de petición y respuesta de datos sería:<br>\n"
                + "    <br>1. Un cliente establece conexión por un puerto (normalmente el 80) con un servidor web. En formato de texto envía una petición\n"
                + "    <br>2. El servidor analiza la petición y localiza el recurso solicitado\n"
                + "    <br>3. El servidor envía una copia del recurso al cliente\n"
                + "    <br>4. El servidor cierra la conexión<br>\n"
                + "<br>Los servidores web no recuerdan ningún dato de las peticiones anteriores, cada petición es independiente. Esto supone un serio problema al programar aplicaciones mediante este protocolo. Para evitar este problema se puede hacer que el servidor nos de un número de sesión que el cliente almacenará y enviará junto a las siguientes peticiones para que el servidor recuerde.";
        return txt;
    }

    public String txtEN() {
        String txt = "The hypertext transfer protocol is responsible for transmitting web pages over TCP/IP networks. All application programming is based on the use of this protocol. Using HTTP, the data request and response process would be:<br>\n"
                + "     <br>1. A client establishes a port connection (usually 80) with a web server. In text format send a request\n"
                + "     <br>2. The server analyzes the request and locates the requested resource\n"
                + "     <br>3. The server sends a copy of the resource to the client\n"
                + "     <br>4. The server closes the connection<br>\n"
                + "<br>Web servers do not remember any data from previous requests, each request is independent. This is a serious problem when programming applications using this protocol. To avoid this problem, you can make the server give us a session number that the client will store and send along with the following requests so that the server remembers.";
        return txt;
    }

}
