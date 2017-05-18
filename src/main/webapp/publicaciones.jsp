<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="common/head.jsp" flush="true" >
		<jsp:param name="titulo" value="Login"/>
	</jsp:include>
</head>
<body>
	<jsp:include page="common/navbar.jsp" flush="true" ></jsp:include>
	<jsp:include page="default/news.jsp" flush="true" ></jsp:include>
	<jsp:include page="default/events.jsp" flush="true" ></jsp:include>
	<jsp:include page="default/works.jsp" flush="true" ></jsp:include>

    <div class="col-sm-8 col-sm-offset-2 ">
        <p>Usuario Admin</p>
        <p>Dni : 1</p>
        <p>Pass: 1234</p>
        <p>Usuario Otro</p>
        <p>Dni : 2</p>
        <p>Pass: 1234</p>
        <p>Usuario Alumno</p>
        <p>Dni : 3</p>
        <p>Pass: 1234</p>
        <p>Usuario Docente</p>
        <p>Dni : 4</p>
        <p>Pass: 1234</p>
    </div>
  	<jsp:include page="common/footer.jsp" flush="true" ></jsp:include>
</body>
</html>