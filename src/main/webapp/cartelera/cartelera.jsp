<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="../common/head.jsp" flush="true" >
        <jsp:param name="titulo" value="Login"/>
    </jsp:include>
    <script src="<c:url value="/assets/js/cartelera.js"/>"></script>
    <script src="<c:url value="/assets/js/jquery.paginate.js"/>"></script>
    <link rel="stylesheet" href="<c:url value="/assets/css/comentarios.css"/>">
</head>
<body>
    <jsp:include page="../common/navbar.jsp" flush="true" ></jsp:include>
    <div class="titlebar">
        <h2>Cartelera 
        <small class="pull-right">
            <a href="#" data-toggle="modal" data-target="#myModalHorizontal" class="btn btn-primary">Suscribirme</a>
        </small>
        </h2>    
    </div>
    <jsp:include page="../default/suscripcion.jsp" flush="true" ></jsp:include>
    <jsp:include page="../common/publicaciones.jsp" flush="true" ></jsp:include>
	<jsp:include page="../common/footer.jsp" flush="true" ></jsp:include>


</body>
</html>
