package TestPersistencia;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Daos.*;
import clases.*;

@WebServlet("/TestUsuarios")
public class TestUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private FactoryDAO fd = new FactoryDAO();
    
    public TestUsuarios() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		Usuario user = new Usuario();
		user.setClave("password");
		user.setDni(12312312);
		user.setEmail("juan@prueba.com");
		UsuarioDAO ud = fd.getUsuarioDAO();
		ud.agregar(user);
		
		user.setDni(1234);
		ud.actualizar(user);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);

	}

}
