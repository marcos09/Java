<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<div class="listados">
	<table class="table table-hover">
		<thead>
			<tr>
				<th>${param.firstname}</th>
				<th>${param.middlename}</th>
				<th>${param.lastname}</th>
				<th>Acciones</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach begin="1" end="50" var="i">
				<tr>
					<td>Ejemplo</td>
					<td>Ejemplo</td>
					<td>Ejemplo</td>
					<td>
						<c:choose>
						<c:when test="${ empty param.select}" >
							<a href="#">Eliminar</a>
							<a href="${param.url}modificar.jsp">Modificar</a>
						</c:when>
						<c:when test="${not empty param.select}" >
							<a href="${param.url}list.jsp">Seleccionar</a>
						</c:when>
						</c:choose>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>