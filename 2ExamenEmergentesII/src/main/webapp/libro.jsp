<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.emergentes.clase.Libro"%>
<%@page import="java.util.List"%>

<%
    List<Libro> lista = (List<Libro>) request.getAttribute("lista");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center></center><h1>Libros</h1>
    <a href="LibroController?op=nuevo">Nuevo</a> <br>
    <a href="CategoriaController">Categoria</a>
    <center></center><table border="2" cellspacing="0" class="table-info">
        <tr>
            <th>Id</th>
            <th>Titulo</th>
            <th>Autor</th>
            <th>Disponible</th>
            <th>Categoria</th>
            <th colspan="2">Acciones</th>
        </tr>
        <c:forEach var="item" items="${lista}">
            <tr>
                <td>${item.id}</td>
                <td>${item.titulo}</td>
                <td>${item.autor}</td>
                <td>${item.disponible}</td>
                <td>${item.categoria}</td>
                <td><a href="LibroController?op=eliminar&id=${item.id}"
                       onclick="return(confirm('Eliminar??'))">Eliminar</a></td>
                <td><a href="LibroController?op=editar&id=${item.id}"
                       >Editar</a></td>
            </tr>
        </c:forEach>
    </table>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>   
</body>
</html>
