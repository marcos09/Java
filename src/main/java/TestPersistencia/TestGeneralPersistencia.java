package TestPersistencia;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Daos.*;
import clases.*;


@WebServlet("/TestGeneralPersistencia")
public class TestGeneralPersistencia extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private FactoryDAO fd = new FactoryDAO();
	 
    public TestGeneralPersistencia() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PublicadorPermisos docente = new PublicadorPermisos ();
		
		CarteleraDAO carteleraDAO = fd.getCarteleraDAO();
		ComentarioDAO comentarioDAO = fd.getComentarioDAO();
		UsuarioOnlineDAO userOnlineDAO = fd.getUsuariosOnlineDAO();
		PublicadorPermisosDAO ppDAO = fd.getPublicadorPermisosDAO();
		
		Publicacion publicacion = new Publicacion();
		Publicacion publicacion1 = new Publicacion();
		
		UsuarioOnline user1 = new UsuarioOnline ();
		UsuarioOnline user2 = new UsuarioOnline ();
		UsuarioOnline user3 = new UsuarioOnline ();
		
		Cartelera cartelera1 = new Cartelera ();
		Cartelera cartelera2 = new Cartelera ();
		
		Comentario coment1 = new Comentario ();
		Comentario coment2 = new Comentario ();
		Comentario coment3 = new Comentario ();
		Comentario comentBorra = new Comentario ();
		
		/* Setters Comentarios */
		coment1.setAutorComentario(user1);
		coment1.setTexto("Comentario del user1 en cartelera1");
		
		coment2.setAutorComentario(user2);
		coment2.setTexto("Respuesta del user2 al user1");
		
		coment3.setAutorComentario(user3);
		coment3.setTexto("Comentario del usuario 3");
		
		comentBorra.setAutorComentario(user3);
		comentBorra.setTexto("SE BORRA");
		
		/* Setters Usuarios */
		user1.setEmail("user1@ttps.info");
		user1.setUsuario("user1_ttps");
		user1.setClave("user1_clave");
		user1.setDni(1111);
		
		user2.setEmail("user2@ttps.info");
		user2.setUsuario("user2_ttps");
		user2.setClave("user2_clave");
		user2.setDni(2222);
		
		user3.setEmail("user3@ttps.info");
		user3.setUsuario("user3_ttps");
		user3.setClave("user3_clave");
		user3.setDni(3333);
		
		docente.setEmail("docente@ttps.info");
		docente.setUsuario("docenteUniversitario");
		docente.setClave("docente_ttps");
		docente.setDni(4444);
		
		/* Setters Publicaciones */
		publicacion.setAutorPublicacion(docente);
		publicacion.setTitulo("Publicacion del docente");
		publicacion.agregarComentario(coment1);
		publicacion.agregarComentario(coment2);
		
		publicacion1.setAutorPublicacion(user3);
		publicacion1.setTitulo("Publicacion del user3");
		publicacion1.agregarComentario(coment3);
		
		/* Setters Carteleras */
		cartelera1.setNombreCartelera("Cartelera del docente con comentarios del user1 y 2");
		cartelera1.agregarSuscriptores(docente);
		cartelera1.agregarSuscriptores(user1);
		cartelera1.agregarSuscriptores(user2);
		cartelera1.agregarPublicacion(publicacion);
		
		cartelera2.setNombreCartelera("Cartelera del user3");
		cartelera2.agregarSuscriptores(user3);
		cartelera2.agregarPublicacion(publicacion1);
		
		/* DAOS  */
		carteleraDAO.agregar(cartelera1);
		carteleraDAO.agregar(cartelera2);
		
		
		//Ver este borrado. Ver bien las cascadas
		//comentarioDAO.agregar(comentBorra); 
		comentarioDAO.eliminar(comentBorra);		
		response.getWriter().append("Termine el test General de Persistencia");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}