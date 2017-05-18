<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="sidenav" id="sidenav">
    <a href="#" onclick="closeNav();return false;" class="closebtn"
       aria-hidden="true">&times;</a>
    <ul id="nav">
            <li class="divider"></li>
            <li class="selected">
                <a href="<c:url value="/index.jsp"/>">Inicio</a>
            </li>
            <c:choose>
            	<c:when test="${ rol == 1}" >
            		<li class="selected">
		                <a href="<c:url value="/cartelera/list.jsp"/>">Carteleras</a>
		            </li>
		            <li class="selected">
		                <a href="<c:url value="/template/list.jsp"/>">Templates</a>
		            </li>
		            <li class="selected">
		                <a href="<c:url value="/publicacion/cartelera.jsp"/>">Publicaciones</a>
		            </li>
            	</c:when>
				<c:when test="${rol == 2}" >
				<li class="selected">
	                <a href="<c:url value="/publicacion/cartelera.jsp"/>">Publicaciones</a>
	            </li>
				</c:when>
				<c:when test="${rol == 0}" >
				<li class="selected">
	                <a href="<c:url value="/publicacion/cartelera.jsp"/>">Publicaciones</a>
	            </li>
				</c:when>
				</c:choose>
            
            
            
    </ul>
</nav>