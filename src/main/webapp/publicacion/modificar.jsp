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
        <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 alta">
            <div class="panel alta-container panel-default">
                <div class="panel-body">
                    <form action="#" method="POST" class="form-horizontal" role="form">
                    	<h4>Modificar Cartel</h4>


                    	<div class="form-group">
                        	<label class="col-sm-3 control-label">Título reducido:</label>
                            <div class="col-sm-9">
                        	<input type="text" class="form-control">
                        	<p class="help-block" id="p"> Título que se mostrará en la miniatura del cartel</p>
                            </div>

                        </div>
                        
                        <div class="form-group">
                        	<label class="col-sm-3 control-label">Título Completo:</label>
                            <div class="col-sm-9">
                        	<input type="text" class="form-control">
                            </div>
                        </div>

                    	<div class="form-group">
                        	<label class="col-sm-3 control-label">Descripción:</label>
                            <div class="col-sm-9">
                    		<textarea class="form-control" rows="3"></textarea>    
                            </div>
                    	</div>    
                    	<div class="form-group">
                        	<label class="col-sm-3 control-label">Recurso online:</label>
                            <div class="col-sm-9">
                        	<input type="url" class="form-control">
                            </div>

                    	</div>    
                    	<div class="form-group">
                        	<label class="col-sm-3 control-label">Video</label> 
                            <div class="col-sm-9">
                        	<input type="url" class="form-control">
                    	   	<p class="help-block" id="p">Introducir solamente videos de youtube para que puedan ser visualizados en la publicación</p>
                            </div>
                    	</div>

                    	<div class="form-group">
                        	<label class="col-sm-4 control-label">Habilitar comentarios</label>
                            <div class="col-sm-8">
                          		<input type="checkbox">
                            </div>
                      </div>

                      <button type="submit" class="btn pull-right btn-default">Publicar cartel</button>
                   
                    </form>
                      </div>
                </div>
            </div>
        </div>
        </div>
	<jsp:include page="../common/footer.jsp" flush="true" ></jsp:include>
</body>
</html>