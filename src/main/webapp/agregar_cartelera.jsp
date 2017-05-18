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
    <div class="container">
        
        <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
            <div class="panel panel-default">
                <div class="panel-body">
                    <form action="#" method="POST" class="form-horizontal" role="form">
                      	<h4>Agregar Cartelera</h4>
                        <div class="form-group">
                            <label for="ejemplo_email_1">Nombre de la cartelera</label>
                            <input type="email" class="form-control" id="ejemplo_email_1" placeholder="Secretaría Académica" required="required">
                        </div>
                        
                        <div class="form-group">
                            <label for="usuario" class="col-sm-3 control-label">Usuarios:</label>
                            <div class="col-sm-9">
                                <select id="usuario" name="usuario" class="form-control" required>
                                    <option value="value3">Selecciona una opcion</option>
                                    <option value="value3">Ivana Harari</option>
                                    <option value="value1">Laura Fava</option> 
                                    <option value="value2">Jorge Rosso</option>
                                    <option value="value3">Pablo Thomas</option>
                                    <option value="value3">Rodolfo Bertone</option>
                                    <option value="value3">Otros...</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Ubicación de la cartelera:</label>
                            <div class="col-sm-9">
                                <select name="select">
                            	    <option value="value3">General</option>
                              		<option value="value3">1 Año</option>
                              		<option value="value3">2 Año</option>
                          			<option value="value1">3 Año</option> 
                        			<option value="value2">4 Año/</option>
                        			<option value="value3">5 Año</option>
                        			<option value="value3">Administrativa</option>  			
                          		</select>
                            </div>
                        </div>
                    </form>
                    
                </div>
            </div>
        </div>
    </div>
	<jsp:include page="common/footer.jsp" flush="true"></jsp:include>
</body>
</html>