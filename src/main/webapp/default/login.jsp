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
        <div class="row">
            <div class="login col-xs-12 col-sm-6 col-sm-push-3 col-md-4 col-md-push-4">
                <div class="panel">
                    <div class="panel-body">
                        <form action="<c:url value="/Login"/>" method="POST">
                            <div class="form-group">
                                <label for="dni">DNI:</label>
                                <input type="number" class="form-control" autofocus="autofocus" required name="dni" id="dni" placeholder="Ingrese su DNI" value="">
                            </div>
                            <div class="form-group">
                                <label for="password">Contraseña:</label>
                                <input type="password" class="form-control" id="password" required name="password" placeholder="Ingrese su contraseña">
                            </div>
                            <c:if test="${error != null}">
								<p>${error}</p>
							</c:if>
                            <button type="submit" class="btn btn-primary btn-block" style="background:#009688">
                                Ingresar al sistema
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<jsp:include page="../common/footer.jsp" flush="true" ></jsp:include>
</body>
</html>
