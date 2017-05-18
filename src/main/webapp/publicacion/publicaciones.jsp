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
    <div class="titlebar">
        <h2>Publicaciones
        <small class="pull-right">
            <a href="<c:url value="/publicacion/alta.jsp"/>" class="btn btn-primary">Agregar</a>
        </small>
        </h2>    
    </div>
	<jsp:include page="../common/publicaciones.jsp" flush="true" ></jsp:include>
    <jsp:include page="../common/footer.jsp" flush="true" ></jsp:include>
</body>
</html>
