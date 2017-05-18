package clasesDAOHiberJPA;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import Daos.PublicacionDAO;
import clases.Publicacion;

@Repository
public class PublicacionDAOHiberJPA extends GenericoDAOHibernateJPA<Publicacion> implements PublicacionDAO {

	public PublicacionDAOHiberJPA() {
		this.persistentClass = Publicacion.class;		
	}


}
