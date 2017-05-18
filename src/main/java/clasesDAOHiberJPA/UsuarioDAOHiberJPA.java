package clasesDAOHiberJPA;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import Daos.UsuarioDAO;
import clases.Usuario;

@Repository
public class UsuarioDAOHiberJPA extends GenericoDAOHibernateJPA<Usuario> implements UsuarioDAO<Usuario> {

	public UsuarioDAOHiberJPA() {
		this.persistentClass = Usuario.class;		
	}


}
