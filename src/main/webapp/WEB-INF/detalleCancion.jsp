<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalle Cancion</title>
</head>
<body>
	<h1> Detalle de ${cancion.titulo} </h1>
		<ul>
			<li>Artista: ${cancion.artista} </li>
			<li>Album: ${cancion.album} </li>
			<li>Genero: ${cancion.genero} </li>
			<li>Idioma: ${cancion.idioma} </li>
		</ul>
		<form action="/canciones/formulario/editar/${cancion.id}" method="GET">
		<button> Editar Cancion</button>
		</form>
		<form action="/canciones/eliminar/${cancion.id}" method="POST">
		<input type="hidden" name="_method" value="DELETE"  />
		<button> Eliminar Cancion</button>
		</form>
		<a href="/canciones">Volver a la lista de canciones</a>
</body>
</html>