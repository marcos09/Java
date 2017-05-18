package clases;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
/*
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
*/
import javax.persistence.ManyToMany;

import org.springframework.stereotype.Repository;

@Entity
public class PublicadorPermisos extends Usuario{

	
	@ManyToMany(cascade={CascadeType.DETACH, CascadeType.MERGE, CascadeType.REFRESH},fetch=FetchType.EAGER)
	private Set<Cartelera> carteleras =  new HashSet<Cartelera>();

	private static final long serialVersionUID = 1L;

	public PublicadorPermisos(String usuario, String clave) {
		super(usuario, clave);
	}
	
	public Set<Cartelera> getCarteleras() {
		return carteleras;
	}

	public void setCarteleras(Set<Cartelera> carteleras) {
		this.carteleras = carteleras;
	}

	public PublicadorPermisos() {
		super();
	}

}
