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
<c:if test="${not empty rol}">
		<c:if test="${rol < 3}">
		<jsp:include page="common/navbar.jsp" flush="true" >
				<jsp:param name="titulo" value="Login"/>
			</jsp:include>
			<div class="w3-row-padding w3-center w3-padding-64" id="pricing">

<div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-hover-shadow">
        <li class="w3-theme-l2">
          <p class="w3-xlarge">Publicacion 1</p>
        </li>
        <li class="w3-padding-16"><b>Novedad</b> novedad 2</li>
        <div class="w3-container">
			  <p>Blablabla</p>
			  <p>Blablabla</p>
			  <p>Blablabla</p>
		</div>
         <li class="w3-theme-l5 w3-padding-24">              
        <button class="w3-btn w3-teal w3-padding-small"><i class="fa fa-check"></i> Modificar</button>
        <a href="Publicacion/Publicacion.jsp"><button class="w3-btn w3-teal w3-padding-small"><i class="fa fa-check"></i> Ver más</button></a>
          <button class="w3-btn w3-teal w3-padding-small"><i class="fa fa-check"></i> Borrar</button>
        </li>
      </ul>
    </div>
    <div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-hover-shadow">
        <li class="w3-theme-l2">
          <p class="w3-xlarge">Publicacion 2</p>
        </li>
        <li class="w3-padding-16"><b>Novedad</b> novedad 2</li>
        <div class="w3-container">
			  <p>Blablabla</p>
			  <p>Blablabla</p>
			  <p>Blablabla</p>
		</div>
         <li class="w3-theme-l5 w3-padding-24">
        <button class="w3-btn w3-teal w3-padding-small"><i class="fa fa-check"></i> Modificar</button>
        <a href="Publicacion/Publicacion.jsp"><button class="w3-btn w3-teal w3-padding-small"><i class="fa fa-check"></i> Ver más</button></a>
          <button class="w3-btn w3-teal w3-padding-small"><i class="fa fa-check"></i> Borrar</button>
        </li>
      </ul>
    </div>
    <div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-hover-shadow">
        <li class="w3-theme-l2">
          <p class="w3-xlarge">Publicacion 3</p>
        </li>
        <li class="w3-padding-16"><b>Novedad</b> novedad 2</li>
        <div class="w3-container">
			  <p>Blablabla</p>
			  <p>Blablabla</p>
			  <p>Blablabla</p>
		</div>
         <li class="w3-theme-l5 w3-padding-24">
        <button class="w3-btn w3-teal w3-padding-small"><i class="fa fa-check"></i> Modificar</button>
          <a href="Publicacion/Publicacion.jsp"><button class="w3-btn w3-teal w3-padding-small"><i class="fa fa-check"></i> Ver más</button></a>
          <button class="w3-btn w3-teal w3-padding-small"><i class="fa fa-check"></i> Borrar</button>
        </li>
      </ul>
    </div>
    <div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-hover-shadow">
        <li class="w3-theme-l2">
          <p class="w3-xlarge">Publicacion 4</p>
        </li>
        <li class="w3-padding-16"><b>Novedad</b> novedad 2</li>
        <div class="w3-container">
			  <p>Blablabla</p>
			  <p>Blablabla</p>
			  <p>Blablabla</p>
		</div>
         <li class="w3-theme-l5 w3-padding-24">
        <button class="w3-btn w3-teal w3-padding-small"><i class="fa fa-check"></i> Modificar</button>
          <a href="Publicacion/Publicacion.jsp"><button class="w3-btn w3-teal w3-padding-small"><i class="fa fa-check"></i> Ver más</button></a>
          <button class="w3-btn w3-teal w3-padding-small"><i class="fa fa-check"></i> Borrar</button>
        </li>
      </ul>
    </div>
    <div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-hover-shadow">
        <li class="w3-theme-l2">
          <p class="w3-xlarge">Publicacion 5</p>
        </li>
        <li class="w3-padding-16"><b>Novedad</b> novedad 2</li>
        <div class="w3-container">
			  <p>Blablabla</p>
			  <p>Blablabla</p>
			  <p>Blablabla</p>
		</div>
         <li class="w3-theme-l5 w3-padding-24">
        <button class="w3-btn w3-teal w3-padding-small"><i class="fa fa-check"></i> Modificar</button>
          <a href="Publicacion/Publicacion.jsp"><button class="w3-btn w3-teal w3-padding-small"><i class="fa fa-check"></i> Ver más</button></a>
          <button class="w3-btn w3-teal w3-padding-small"><i class="fa fa-check"></i> Borrar</button>
        </li>
      </ul>
    </div>
    <div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-hover-shadow">
        <li class="w3-theme-l2">
          <p class="w3-xlarge">Publicacion 6</p>
        </li>
        <li class="w3-padding-16"><b>Novedad</b> novedad 2</li>
        <div class="w3-container">
			  <p>Blablabla</p>
			  <p>Blablabla</p>
			  <p>Blablabla</p>
		</div>
         <li class="w3-theme-l5 w3-padding-24">
        <button class="w3-btn w3-teal w3-padding-small"><i class="fa fa-check"></i> Modificar</button>
          <a href="Publicacion/Publicacion.jsp"><button class="w3-btn w3-teal w3-padding-small"><i class="fa fa-check"></i> Ver más</button></a>
          <button class="w3-btn w3-teal w3-padding-small"><i class="fa fa-check"></i> Borrar</button>
        </li>
      </ul>
    </div>
    <div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-hover-shadow">
        <li class="w3-theme-l2">
          <p class="w3-xlarge">Publicacion 7</p>
        </li>
        <li class="w3-padding-16"><b>Novedad</b> novedad 2</li>
        <div class="w3-container">
			  <p>Blablabla</p>
			  <p>Blablabla</p>
			  <p>Blablabla</p>
		</div>
         <li class="w3-theme-l5 w3-padding-24">
        <button class="w3-btn w3-teal w3-padding-small"><i class="fa fa-check"></i> Modificar</button>
          <a href="Publicacion/Publicacion.jsp"><button class="w3-btn w3-teal w3-padding-small"><i class="fa fa-check"></i> Ver más</button></a>
          <button class="w3-btn w3-teal w3-padding-small"><i class="fa fa-check"></i> Borrar</button>
        </li>
      </ul>
    </div>
    </div>
		</c:if>
		<c:if test="${rol >= 3}">
			<jsp:forward page="index.jsp" />    	
		</c:if>
    </c:if>

    </body>
</html>
