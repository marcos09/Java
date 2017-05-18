package TestPersistencia;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Daos.*;
import clases.*;


/**
 * Servlet implementation class PruebaPersistencia
 */
@WebServlet("/PruebaPersistencia")
public class PruebaPersistencia extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private FactoryDAO fd = new FactoryDAO();


    public PruebaPersistencia() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Comienzo la ejecución");
		
		//Instanciación
		Publicacion publicacion = new Publicacion();
		Usuario user = new Usuario();
		Publicacion p = new Publicacion();
		Cartelera cartelera = new Cartelera();
		
		CarteleraDAO carteleraDao =fd.getCarteleraDAO();
		PublicacionDAO publiDAO = fd.getPublicacionDAO();
		UsuarioDAO ud = fd.getUsuarioDAO();
		
		//Seteo de parámetros
		
		user.setClave("password");
		user.setDni(12312312);
		user.setEmail("juan@prueba.com");
		
		publicacion.setAutorPublicacion(user);
		publicacion.setNombrePublicacion("Bienvenidos a la cartelera virtual");
		
		
		p.setNombrePublicacion("Esta es una publicacion");
		
		cartelera.setNombreCartelera("Cartelera");
		cartelera.agregarPublicacion(p);

		ud.agregar(user);
		carteleraDao.agregar(cartelera);
		user.setDni(4444);
		ud.actualizar(user);
		publiDAO.agregar(publicacion);
		publiDAO.agregar(p);
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
