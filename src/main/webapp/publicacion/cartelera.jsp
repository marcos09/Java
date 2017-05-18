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
<body class="admin">
    <jsp:include page="../common/navbar.jsp" flush="true" ></jsp:include>
    <jsp:include page="../common/menu.jsp" flush="true" ></jsp:include>
    <div id="main">
    <div class="titlebar">
        <h2>Seleccion de cartelera
        </h2>    
    </div>
    <jsp:include page="../common/list.jsp" flush="true" >
    	<jsp:param name="url" value="/CarteleraVirtual/publicacion/" />
        <jsp:param name="select" value="true" />
      <jsp:param name="firstname" value="Cartelera" />
      <jsp:param name="middlename" value="Detalle" />
      <jsp:param name="lastname" value="Usuario" />
    </jsp:include>
    </div>
    <jsp:include page="../common/footer.jsp" flush="true" ></jsp:include>
</body>
</html>
