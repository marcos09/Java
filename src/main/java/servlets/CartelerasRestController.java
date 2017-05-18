package servlets;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;
import Daos.CarteleraDAO;
import Daos.FactoryDAO;
import Daos.PublicacionDAO;
import Daos.UsuarioDAO;
import clases.*;

@RestController
public class CartelerasRestController {
	
	@Autowired
	private CarteleraDAO carteleraDAO;
	
	public CarteleraDAO getCarteleraDAO() {
		return carteleraDAO;
	}
	
	public void setCarteleraDAO(CarteleraDAO carteleraDAO) {
		this.carteleraDAO = carteleraDAO;
	}

	@RequestMapping(value = "/AltaCartelera.htm", method = RequestMethod.POST)
	public ResponseEntity<Void> crearCartelera(@RequestParam(value="nombre", required=true) String nombre,
			UriComponentsBuilder ucBuilder) {
		
		Cartelera c = new Cartelera();
		c.setNombreCartelera(nombre);
		carteleraDAO.agregar(c);		
		return new ResponseEntity<Void>(HttpStatus.CREATED);
	}
    
	@RequestMapping(value = "/prueba", method = RequestMethod.GET)
	public ResponseEntity<Void> crearCartelera1(){
	
		Publicacion publicacion = new Publicacion();
		Usuario user = new Usuario();
		Publicacion p = new Publicacion();
		Cartelera cartelera = new Cartelera();
		
		user.setClave("password");
		user.setDni(12312312);
		user.setEmail("juan@prueba.com");
		
		publicacion.setAutorPublicacion(user);
		publicacion.setTitulo("Bienvenidos a la cartelera virtual");
		
		
		p.setTitulo("Esta es una publicacion");
		
		cartelera.setNombreCartelera("Cartelera prueba relación");
		cartelera.agregarPublicacion(p);

		carteleraDAO.agregar(cartelera);		
		return new ResponseEntity<Void>(HttpStatus.CREATED);
	}
	
    @RequestMapping(value = "/ModificarCartelera.htm", method = RequestMethod.PUT)
	public ResponseEntity<Void> modificarCartelera(@RequestParam(value="nombre", required=true) String nombre, @RequestParam(value="nombreCartelera", required=true) String nombreCartelera,
			UriComponentsBuilder ucBuilder) {

    	Cartelera c = carteleraDAO.buscar(nombreCartelera);
    	
    	c.setNombreCartelera(nombre);
		carteleraDAO.actualizar(c);

		return new ResponseEntity<Void>(HttpStatus.OK);
	}
    
	@RequestMapping(value = "/carteleras", method = RequestMethod.GET)
	
	public ResponseEntity<List<Cartelera>> listado() {

		List<Cartelera> carteleras = carteleraDAO.recuperar();
		if(carteleras == null){
			return new ResponseEntity<List<Cartelera>>(HttpStatus.NO_CONTENT);

		}
		else{
			return new ResponseEntity<List<Cartelera>>(carteleras, HttpStatus.OK);
		}
		
	
	}
    
    @RequestMapping(value = "/EliminarCartelera.htm", method = RequestMethod.DELETE)
	public ResponseEntity<Void> eliminarCartelera(@RequestParam(value="nombreCartelera", required=true) String nombreCartelera,
			UriComponentsBuilder ucBuilder) {

    	Cartelera c = carteleraDAO.buscar(nombreCartelera);
    	carteleraDAO.eliminar(c);

		return new ResponseEntity<Void>(HttpStatus.OK);
	}
    
    @RequestMapping(value = "/EliminarCarteleraPorId.htm", method = RequestMethod.DELETE)
	public ResponseEntity<Void> deleteCartelera(@RequestParam(value="idCartelera", required=true) Long idCartelera,
			UriComponentsBuilder ucBuilder) {

    	Cartelera c = carteleraDAO.buscar(idCartelera);
    	carteleraDAO.eliminar(c);

		return new ResponseEntity<Void>(HttpStatus.OK);
	}

    @RequestMapping(value = "/ModificarCarteleraPorId.htm", method = RequestMethod.PUT)
	public ResponseEntity<Void> updateCartelera(@RequestParam(value="nombre", required=true) String nombre, @RequestParam(value="idCartelera", required=true) Long idCartelera,
			UriComponentsBuilder ucBuilder) {

    	Cartelera c = carteleraDAO.buscar(idCartelera);
    	
    	c.setNombreCartelera(nombre);
		carteleraDAO.actualizar(c);

		return new ResponseEntity<Void>(HttpStatus.OK);
	}
	    
}
