package servlets;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;
import Daos.UsuarioDAO;
import clases.*;

@RestController
public class PublicacionesRestController {
	
	@Autowired
	private UsuarioDAO publicacionDAO;
	
	public UsuarioDAO getCarteleraDAO() {
		return publicacionDAO;
	}
	
	public void setUsuarioaDAO(UsuarioDAO publicacionDAO) {
		this.publicacionDAO = publicacionDAO;
	}

    
	@RequestMapping(value = "/publicaciones", method = RequestMethod.GET)
	
	public ResponseEntity<List<Usuario>> listado() {

		List<Usuario> publicaciones = publicacionDAO.recuperar();
		if(publicaciones == null){
			return new ResponseEntity<List<Usuario>>(HttpStatus.NO_CONTENT);

		}
		else{
			return new ResponseEntity<List<Usuario>>(publicaciones, HttpStatus.OK);
		}
		
	
	}
	@RequestMapping(value = "/AltaPublicacion", method = RequestMethod.POST)
	public ResponseEntity<Void> crearPublicacion(@RequestParam(value="titulo", required=true) String titulo,@RequestParam(value="descripcion", required=true) String descripcion, @RequestParam(value="idAutor") int idAutor, @RequestParam(value="idCartelera", required=true) int idCartelera, @RequestParam(value="habComent") boolean habComent,
			UriComponentsBuilder ucBuilder) {
		
		//Nombre parámetros POST: titulo, descripcion, idAutor, idCartelera, habComent 
	
		Publicacion p = new Publicacion();
		p.setTitulo(titulo);
		p.setDescripcion(descripcion);
		//p.setAutorPublicacion(idAutor);
		//p.setCartelera(idCartelera);
		p.setComentariosHab(habComent);
		publicacionDAO.agregar(p);
		
		return new ResponseEntity<Void>(HttpStatus.CREATED);
	}
    /*
     	/nombre, autor, cartelera, coment
 
      
    
    
    @RequestMapping(value = "/ModificarPublicacion.htm", method = RequestMethod.PUT)
	public ResponseEntity<Void> modificarCartelera(@RequestParam(value="nombre", required=true) String nombre, @RequestParam(value="nombreCartelera", required=true) String nombreCartelera,
			UriComponentsBuilder ucBuilder) {

		return new ResponseEntity<Void>(HttpStatus.OK);
	}
      
     
    @RequestMapping(value = "/EliminarCartelera.htm", method = RequestMethod.DELETE)
	public ResponseEntity<Void> eliminarCartelera(@RequestParam(value="nombreCartelera", required=true) String nombreCartelera,
			UriComponentsBuilder ucBuilder) {

    	Publicacion c = publicacionDAO.buscar(nombreCartelera);
    	publicacionDAO.eliminar(c);

		return new ResponseEntity<Void>(HttpStatus.OK);
	}
    
    @RequestMapping(value = "/EliminarCarteleraPorId.htm", method = RequestMethod.DELETE)
	public ResponseEntity<Void> deleteCartelera(@RequestParam(value="idCartelera", required=true) Long idCartelera,
			UriComponentsBuilder ucBuilder) {

    	Publicacion c = publicacionDAO.buscar(idCartelera);
    	publicacionDAO.eliminar(c);

		return new ResponseEntity<Void>(HttpStatus.OK);
	}

    @RequestMapping(value = "/ModificarCarteleraPorId.htm", method = RequestMethod.PUT)
	public ResponseEntity<Void> updateCartelera(@RequestParam(value="nombre", required=true) String nombre, @RequestParam(value="idCartelera", required=true) Long idCartelera,
			UriComponentsBuilder ucBuilder) {

    	Publicacion c = publicacionDAO.buscar(idCartelera);
    	
    	//c.setNombreCartelera(nombre);
		publicacionDAO.actualizar(c);

		return new ResponseEntity<Void>(HttpStatus.OK);
	}
    
    @RequestMapping(value="/checkLogin")
    public ResponseEntity<Void> checkLogin(@RequestParam(value="userName",required=true) String userName, @RequestParam(value="password", required=true) String pass){
		
    	return new ResponseEntity<Void>(HttpStatus.OK);

    }
    */
	    
}