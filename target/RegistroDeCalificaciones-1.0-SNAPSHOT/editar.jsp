<%@page import="com.emergentes.Personas"%>
<%
   Personas reg = (Personas) request.getAttribute("miobjper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Persona</title>
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
                margin-top: 20px;
            }
            table, th, td {
                border: 1px solid #999;
            }
            th, td {
                padding: 10px;
                text-align: left;
            }
            input[type="text"] {
                width: 100%;
                padding: 8px;
                margin: 5px 0;
                box-sizing: border-box;
                border: 2px solid #ccc;
                border-radius: 4px;
            }
            input[type="submit"] {
                background-color: #4CAF50;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }
            input[type="submit"]:hover {
                background-color: #45a049;
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
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%= reg.getId() %>" size="2" readonly></td>
                </tr>
                 <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="nombre" value="<%= reg.getNombre() %>"></td>
                </tr>
                 <tr>
                    <td>Primer_Parcial</td>
                    <td><input type="text" name="primer_parcial" value="<%= reg.getPrimer_parcial()%>"></td>
                </tr>
                 <tr>
                    <td>Segundo_Parcial</td>
                    <td><input type="text" name="segundo_parcial" value="<%= reg.getSegundo_parcial() %>"></td>
                </tr>
                 <tr>
                    <td>Examen_final</td>
                    <td><input type="text" name="examen_final" value="<%= reg.getExamen_final() %>"></td>
                </tr>
                 <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
