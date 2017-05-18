package clasesDAOHiberJPA;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import Daos.PublicadorPermisosDAO;
import clases.PublicadorPermisos;

@Repository
public class PublicadorPermisosDAOHiberJPA extends GenericoDAOHibernateJPA<PublicadorPermisos> implements PublicadorPermisosDAO {

	public PublicadorPermisosDAOHiberJPA() {
		this.persistentClass = PublicadorPermisos.class;		
	}


}
