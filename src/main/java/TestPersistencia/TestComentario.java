package TestPersistencia;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Daos.*;
import clases.*;



@WebServlet("/TestComentario")
public class TestComentario extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private FactoryDAO fd = new FactoryDAO();

    public TestComentario() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UsuarioDAO userDAO =fd.getUsuarioDAO();
		
		Usuario eliminarId = new UsuarioOnline();
		Usuario eliminarEntidad = new Usuario();
		Usuario dejar = new Admin();
		
		
		eliminarId.setEmail("Usuario se se va a eliminar por id");
		eliminarEntidad.setEmail("Usuario se se va a eliminar por entidad");
		dejar.setEmail("Usuario que no se borra");
		
		userDAO.agregar(eliminarEntidad);
		userDAO.agregar(dejar);
		userDAO.agregar(eliminarId);
		
		userDAO.eliminar(eliminarEntidad);
		//userDAO.eliminar(eliminarId.getId());
		
		
		
		
		response.getWriter().append("Terminé el test");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
