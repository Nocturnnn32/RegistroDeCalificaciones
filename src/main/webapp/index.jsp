<%@page import="com.emergentes.Personas"%>
<%@page import="java.util.ArrayList"%>
<% 
    if (session.getAttribute("listaper")==null){
        ArrayList<Personas> lisaux = new ArrayList<Personas>();
        session.setAttribute("listaper", lisaux);
    }
    ArrayList<Personas> lista = (ArrayList<Personas>) session.getAttribute("listaper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Calificaciones</title>
        <style>
            body {
                font-family: 'Arial', sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 20px;
            }
            h1 {
                color: #333;
            }
            table {
                width: 100%;
                border-collapse: collapse;
            }
            table, th, td {
                border: 1px solid #999;
            }
            th {
                background-color: #f2f2f2;
                color: #333;
            }
            th, td {
                padding: 10px;
                text-align: left;
            }
            a {
                color: #06c;
                text-decoration: none;
            }
            a:hover {
                text-decoration: underline;
            }
            .header {
                background-color: #333;
                color: white;
                padding: 10px 0;
                text-align: center;
            }
            .header p {
                margin: 0;
            }
        </style>
    </head>
    <body>
        <div class="header">
            <p>PRIMER PARCIAL TEM-742</p>
            <p>Nombre: Ruben Condori Cosme</p>
            <p>Carnet: 7092342 L.P</p>
        </div>
        <h1>Registro de Calificaciones</h1>
        <a href="MainServlet?op=nuevo">Nuevo</a>
        <table>
            <tr>
                <th>id</th>
                <th>Nombre</th>
                <th>P1(30)</th>
                <th>P2(30)</th>
                <th>EF(40)</th>
                <th>Nota</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if (lista!= null){
                    for(Personas item : lista){
                        int notaFinal = item.getPrimer_parcial() + item.getSegundo_parcial() + item.getExamen_final();
            %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getNombre()%></td>
                <td><%= item.getPrimer_parcial()%></td>
                <td><%= item.getSegundo_parcial()%></td>
                <td><%= item.getExamen_final()%></td>
                <td><%= notaFinal %></td>
                <td>
                    <a href="MainServlet?op=Editar&id=<%=item.getId()%>">Editar</a>
                </td>
                <td>
                    <a href="MainServlet?op=eliminar&id=<%=item.getId()%>"
                        onclick="return(confirm('¿Está seguro de eliminar?'))"
                        >Eliminar</a>
                </td>
            </tr>
            <%
                    }
                }
            %>
        </table>
    </body>
</html>
