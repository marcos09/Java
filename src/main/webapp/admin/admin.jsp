	
		<div class="administrarCartelera" style="display:none">
		
		<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#agregarCartelera"> Agregar cartelera</button>
		
	<table class="table table-hover">
		<tr>
			<th>Título</th>
			<th>Sección</th>
			<th>Acciones</th>
		</tr>
		<tr>
			<td>1° Año</td>
			<td>Información Académica</td>
			<td><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modificarCartelera">
   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Modificar
</button>

<button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#borrarCartelera">
   <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Borrar
</button></td>			
		</tr>
		<tr>
			<td>2° Año</td>
			<td>Información Académica</td>
			<td><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modificarCartelera">
   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Modificar
</button>

<button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#borrarCartelera">
   <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Borrar
</button></td>
		</tr>
		<tr>
			<td>3° Año</td>
			<td>Información Académica</td>
			<td><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modificarCartelera">
   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Modificar
</button>

<button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#borrarCartelera">
   <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Borrar
</button></td>
		</tr>
		<tr>
			<td>4° Año</td>
			<td>Información Académica</td>
			<td><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modificarCartelera">
   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Modificar
</button>

<button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#borrarCartelera">
   <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Borrar
</button></td>
		</tr>
		<tr>
			<td>5° Año</td>
			<td>Información Académica</td>
			<td><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modificarCartelera">
   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Modificar
</button>

<button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#borrarCartelera">
   <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Borrar
</button></td>
		</tr>
		
		
		<tr>
			<td>Eventos</td>
			<td>Información Institucional</td>
			<td><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modificarCartelera">
   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Modificar
</button>

<button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#borrarCartelera">
   <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Borrar
</button></td>
		</tr>
		<tr>
			<td>Posgrado</td>
			<td>Información Académica</td>
			<td><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modificarCartelera">
   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Modificar
</button>

<button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#borrarCartelera">
   <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Borrar
</button></td>
		</tr>
		<tr>
			<td>Ofertas Laborales</td>
			<td>Anuncios externos</td>
			<td><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modificarCartelera">
   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Modificar
</button>

<button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#borrarCartelera">
   <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Borrar
</button></td>
		</tr>
		<tr>
			<td>Anuncios administrativos</td>
			<td>Información Institucional</td>
			<td><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modificarCartelera">
   <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Modificar
</button>

<button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#borrarCartelera">
   <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Borrar
</button></td>
		</tr>		
	
	</table>
	
	
	
<div class="modal fade" id="modificarCartelera" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Modificar Cartelera</h4>
      </div>
      <div class="modal-body">
      <form action="#" method="POST" class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="ejemplo_email_1" class="col-sm-3 control-label">Nombre de la cartelera</label>
                            <div class="col-sm-9">
                                <input type="email" class="form-control" id="ejemplo_email_1" value="Secretaría Académica" required="required">
                            </div>
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
                                    <option value="value3" selected>Marcelo Naiouf</option>
                                    <option value="value3">Otros...</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="cartelera"  class="col-sm-3 control-label">Ubicación de la cartelera:</label>
                            <div class="col-sm-9">
                                <select  id="cartelera" name="cartelera" class="form-control" required>
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
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Modificar Cartelera</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>



<div class="modal fade" id="agregarCartelera" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Agregar Cartelera</h4>
      </div>
      <div class="modal-body">
   <form action="#" method="POST" class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="ejemplo_email_1" class="col-sm-3 control-label">Nombre de la cartelera</label>
                            <div class="col-sm-9">
                                <input type="email" class="form-control" id="ejemplo_email_1" placeholder="Secretaría Académica" required="required">
                            </div>
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
                            <label for="cartelera"  class="col-sm-3 control-label">Ubicación de la cartelera:</label>
                            <div class="col-sm-9">
                                <select  id="cartelera" name="cartelera" class="form-control" required>
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
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary">Agregar Cartelera</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>
</div>
