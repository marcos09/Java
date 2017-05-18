package clasesDAOHiberJPA;


import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import Daos.UsuarioOnlineDAO;
import clases.UsuarioOnline;

@Repository
public class UsuarioOnlineDAOHiberJPA extends GenericoDAOHibernateJPA<UsuarioOnline> implements UsuarioOnlineDAO {

	public UsuarioOnlineDAOHiberJPA() {
		this.persistentClass = UsuarioOnline.class;		
	}


}
