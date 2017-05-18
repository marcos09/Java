<div class="administrarUsuarios" style="display: none;">
		<button type="button" class="btn btn-primary btn-lg" onclick="agregarUsuario();"> Agregar usuario</button>
	
	
	

	
	<div id=table>
	<table class="table table-hover">
		<tr>
			<th>Nombre completo</th>
			<th>Mail</th>
			<th>Número Legajo</th>
			<th>Rol</th>
			<th>Acciones</th>
			
		</tr>
		<tr>
			<td>Jorge Rosso</td>
			<td>jorge@lidi.com</td>
			<td>10493/3</td>
			<td>Profesor</td>
			<td><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modificar">
   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Modificar
</button>

<button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#borrar">
   <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Borrar
</button></td>
			
			

		</tr>
		<tr>
			<td>Laura Fava</td>
			<td>laura@lidi.com</td>
			<td>13123/3</td>
			<td>Profesor</td>
			<td><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modificar">
   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Modificar
</button>

<button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#borrar">
   <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Borrar
</button></td>			
		</tr>
		<tr>
			<td>Marcos Matias Bosnic</td>
			<td>marcos@lidi.com</td>
			<td>13047/7</td>
			<td>Estudiante</td>
			<td><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modificar">
   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Modificar
</button>

<button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#borrar">
   <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Borrar
</button></td>			
		</tr>
		<tr>
			<td>Johana Taus</td>
			<td>yato@live.com</td>
			<td>13005/7</td>
			<td>Estudiante</td>
			<td><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modificar">
   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Modificar
</button>

<button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#borrar">
   <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Borrar
</button></td>			
		</tr>
		<tr>
			<td>Globant</td>
			<td>info@globant.com</td>
			<td>-------</td>
			<td>Publicador</td>
			<td><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modificar">
   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Modificar
</button>

<button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#borrar">
   <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Borrar
</button></td>			
		</tr>
	</table>
	</div>
	<div class="elemento" style="display:none;">
	<div class="col-md-4">
		<form action="#">
						<div class="form-group">
                            <label for="ejemplo_email_1" class="col-sm-3 control-label">Nombre completo:</label>
                                <input type="email" class="form-control" id="ejemplo_email_1" placeholder="Juan Lopez" required="required">
                        </div>
						<div class="form-group">
                            <label for="ejemplo_email_1" class="col-sm-3 control-label">Email:</label>
                                <input type="email" class="form-control" id="ejemplo_email_1" placeholder="Juan Lopez" required="required">
                        </div>                        
						<div class="form-group">
                            <label for="ejemplo_email_1" class="col-sm-3 control-label">Numero Legajo:</label>
                                <input type="email" class="form-control" id="ejemplo_email_1" placeholder="14029/2" required="required">
                        </div>                        
                        <div class="form-group">
                            <label for="usuario" control-label">Rol:</label>
                                <select id="usuario" name="usuario" class="form-control" required>
                                    <option value="value3">Selecciona una opcion</option>
                                    <option value="value3">Profesor</option>
                                    <option value="value1">Estudiante</option> 
                                    <option value="value2">Publicador</option>
                                </select>
                        </div>
                    <button type="button" class="btn btn-default" onclick="finAgregar();" data-dismiss="modal">Cerrar</button>
					<button type="button" class="btn btn-danger" onclick="finAgregar();">Agregar Usuario</button>
		</form>
</div>
</div>

<div class="modal fade" id="modificar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modificar usuario</h4>
      </div>
      <div class="modal-body">
        <form action="#">
						<div class="form-group">
                            <label for="ejemplo_email_1" class="col-sm-3 control-label">Nombre completo:</label>
                                <input type="email" class="form-control" id="ejemplo_email_1" value= "Marcos Matias Bosnic" required="required">
                        </div>
						<div class="form-group">
                            <label for="ejemplo_email_1" class="col-sm-3 control-label">Email:</label>
                                <input type="email" class="form-control" id="ejemplo_email_1" value="marcos@marcos.com" required="required">
                        </div>                        
						<div class="form-group">
                            <label for="ejemplo_email_1" class="col-sm-3 control-label">Numero Legajo:</label>
                                <input type="email" class="form-control" id="ejemplo_email_1" value="14029/2" required="required">
                        </div>                        
                        <div class="form-group">
                            <label for="usuario" control-label">Rol:</label>
                                <select id="usuario" name="usuario" class="form-control" required>
                                    <option value="value3">Selecciona una opcion</option>
                                    <option value="value3">Profesor</option>
                                    <option value="value1" selected>Estudiante</option> 
                                    <option value="value2">Publicador</option>
                                </select>
                        </div>
                    <button type="button" class="btn btn-default" onclick="finAgregar();" data-dismiss="modal">Cerrar</button>
					<button type="button" class="btn btn-danger" onclick="finAgregar();">Modificar Usuario</button>
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary">Modificar Usuario</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="borrar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Borrar usuarios</h4>
      </div>
      <div class="modal-body">
        <p>Relamente deseas borrar al usuario?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
		<button type="button" class="btn btn-danger">Borrar Usuario</button>
      </div>
    </div>
  </div>
</div>

</div>


