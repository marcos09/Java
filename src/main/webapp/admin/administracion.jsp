<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="../common/head.jsp" flush="true" >
		<jsp:param name="titulo" value="Login"/>
	</jsp:include>
</head>
<body>
	<jsp:include page="../common/navbar.jsp" flush="true" ></jsp:include>
	<div class="container">
	<div class="bienvenida">
		<H3>Bienvenido administrador!</H3>
	
		<h4>Estadísticas de uso de la plataforma</h4>
	
		<ul>
  			<li>493 Usuarios activos
  				<ul>
  					<li>60 Docentes</li>
	  				<li>400 Alumnos</li>
  					<li>3 Administradores</li>
	  				<li>30 Publicadores</li>
  				</ul>
  			</li>
  			<li>22 Carteleras actualmente</li>
	  		<li>40 suscriptores promedio por cartelera</li>
  			<li>6 suscripcions a carteleras por usuario </li>
  			<li>349 Publicaciones</li>
			<li>100 Comentarios</li>
		</ul>
		</div>
		<jsp:include page="usuarios.jsp" flush="true" ></jsp:include>
		<jsp:include page="admin.jsp" flush="true" ></jsp:include>
		<jsp:include page="ultimas.jsp" flush="true" ></jsp:include>
		
		
	</div>
  	<jsp:include page="../common/footer.jsp" flush="true" ></jsp:include>
</body>
</html>
