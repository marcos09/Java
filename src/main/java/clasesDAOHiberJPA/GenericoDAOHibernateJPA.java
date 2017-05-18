package clasesDAOHiberJPA;

import java.util.List;
import javax.persistence.*;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import Interface.GenericDAO;



@Transactional
public class GenericoDAOHibernateJPA<T> implements GenericDAO<T>{	
	
	protected EntityManager em;
	
	
	
	public EntityManager getEm() {
		return em;
	}

	@PersistenceContext
	public void setEntityManager(EntityManager entityManager){
		em = entityManager;
	}
	public void setEm(EntityManager em) {
		this.em = em;
	}

	protected Class<T> persistentClass;
	
	public Class<T> getPersistentClass() {
		return persistentClass;
	}

	public void setPersistentClass(Class<T> persistentClass) {
		this.persistentClass = persistentClass;
	}
	public void agregar(Object cartelera){
		
		em.persist(cartelera);
		
	}
	
	
	
	@Override
	public T actualizar(T objetoPersistible) {
		em.merge(objetoPersistible);
		return objetoPersistible;
	}

	
	public void eliminar(T entity) {
		em.remove(em.merge(entity));
		
	}

	public List<T> recuperar(){
		Query consulta= em.createQuery("from " + getPersistentClass().getSimpleName());
		List<T> resultado = consulta.getResultList();
		if (resultado.isEmpty()){
			return null;
		}
		return resultado;	

	}

	
	public T eliminar(int id) {
		T entity = em.find(this.getPersistentClass(), id);
		if (entity != null) {
			this.eliminar(entity);
		}		
		return entity;
	}
	

	@Override
	public void recuperar(T Objeto) {
		
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public T buscar(String nombre) {
		
		//Generalizar para las entidades diferentes a cartelera
		Query consulta= em.createQuery("select e from " +
				getPersistentClass().getSimpleName()+" e where e.nombreCartelera = '" + nombre +"'");
		List<T> resultado = (List<T>)consulta.getResultList();
		em.close();
		if (resultado.isEmpty()){
			return null;
		}
		return resultado.get(0);	
	}
	
	public T buscar(Long idBusqueda) {
		
		Query consulta= em.createQuery("select e from " +
				getPersistentClass().getSimpleName()+" e where e.id = " + idBusqueda);
		List<T> resultado = (List<T>)consulta.getResultList();
		
		if (resultado.isEmpty()){
			return null;
		}
		return resultado.get(0);	
	}


	
}
