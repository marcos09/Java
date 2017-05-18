package clasesDAOHiberJPA;

import javax.persistence.Query;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import Daos.CarteleraDAO;
import clases.Cartelera;
@Repository
public class CarteleraDAOHiberJPA extends GenericoDAOHibernateJPA<Cartelera> implements CarteleraDAO {
	
	public CarteleraDAOHiberJPA() {
		this.persistentClass = Cartelera.class;		
	}
	
}
