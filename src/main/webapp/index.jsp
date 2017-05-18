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
	
	<jsp:include page="default/events.jsp" flush="true" >
		<jsp:param name= 'titulo' value= "Próximos eventos"/>
		<jsp:param name="subtitulo" value="Detalles a cerca de los últimos y más innovadores eventos que ocurrirán en las instalaciones. No te quedes con las ganas de formar parte de lo mejor"/>
	</jsp:include>
	<jsp:include page="default/works.jsp" flush="true" ></jsp:include>
  	<jsp:include page="common/footer.jsp" flush="true" ></jsp:include>
</body>
</html>