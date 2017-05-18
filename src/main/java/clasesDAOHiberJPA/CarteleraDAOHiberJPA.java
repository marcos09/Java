package clasesDAOHiberJPA;

import java.util.Collection;
import java.util.List;

import javax.persistence.Query;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import Daos.CarteleraDAO;
import clases.Cartelera;
import clases.Publicacion;
@Repository
public class CarteleraDAOHiberJPA extends GenericoDAOHibernateJPA<Cartelera> implements CarteleraDAO {
	
	public CarteleraDAOHiberJPA() {
		this.persistentClass = Cartelera.class;		
	}

	public Collection<Publicacion> publicaciones() {
		//Por ahora esto no sirve. Después se verá
		Query consulta= em.createQuery("from " + getPersistentClass().getSimpleName() + "as cartelera inner join Publicacion.class");
		List<Publicacion> resultado = consulta.getResultList();
		if (resultado.isEmpty()){
			return null;
		}
		return resultado;	

	}
	
}
