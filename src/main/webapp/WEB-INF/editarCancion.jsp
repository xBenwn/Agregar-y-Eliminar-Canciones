<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Canción</title>
</head>
<body>
	<h1> Edita ${cancion.titulo}</h1>
	<form:form method="POST" action="/canciones/procesa/editar/${cancion.id}" modelAttribute="cancion">
	<input type="hidden" name="_method" value="PUT"/>
		<div>
			<form:label path="titulo">Titulo: </form:label>
			<form:input path="titulo" />
			<form:errors path="titulo" />
		</div>
		<div>
			<form:label path="artista">Artista: </form:label>
			<form:input path="artista" id="artista" />
			<form:errors path="artista" />
		</div>
		<div>
			<form:label path="album">Album: </form:label>
			<form:input path="album" />
			<form:errors path="album" />
		</div>
		<div>
			<form:label path="genero">Genero: </form:label>
			<form:input path="genero" />
			<form:errors path="genero" />
		</div>
		<div>
			<form:label path="idioma">Idioma: </form:label>
			<form:input path="idioma" />
			<form:errors path="idioma" />
		</div>
		<button> Guardar Cancion </button>
	</form:form>
		<a href="/canciones">Volver a la lista de canciones</a>
</body>
</html>