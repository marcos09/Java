function agregarSelectUsuario(){
	$( ".usuarios" ).append( "<select name='select'> <option value='value3'>Selecciona una opción</option>    		<option value='value3'>Ivana Harari</option>			<option value='value1'>Laura Fava</option>   			<option value='value2'>Jorge Rosso</option>  			<option value='value3'>Pablo Thomas</option>  			<option value='value3'>Rodolfo Bertone</option> <option value='value3'>Otros...</option> </select>" );
}
function agregarUsuario(){
	$('#table').addClass("col-md-8");
	$('.elemento').show();
}
function usuarios(){
	$('.administrarUsuarios').show();
	$('.bienvenida').hide();
	$('.administrarCartelera').hide();
	$('.ultimasPublicaciones').hide();
}
function carteleras(){
	$('.administrarUsuarios').hide();
	$('.bienvenida').hide();
	$('.administrarCartelera').show();
	$('.ultimasPublicaciones').hide();

}

function ultimasPublicaciones(){
	$('.administrarUsuarios').hide();
	$('.bienvenida').hide();
	$('.administrarCartelera').hide();
	$('.ultimasPublicaciones').show();

}
function finAgregar(){
	$('#table').removeClass("col-md-8");
	$('.elemento').hide();

}