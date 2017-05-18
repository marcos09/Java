package clasesDAOHiberJPA;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import Daos.ComentarioDAO;
import clases.Comentario;
@Repository
public class ComentarioDAOHiberJPA extends GenericoDAOHibernateJPA<Comentario> implements ComentarioDAO {

	public ComentarioDAOHiberJPA() {
		this.persistentClass = Comentario.class;		
	}

}