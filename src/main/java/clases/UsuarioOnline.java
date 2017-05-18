package clases;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

import org.springframework.stereotype.Component;

@Entity
public class UsuarioOnline extends Usuario {
	

	private static final long serialVersionUID = 1L;

	@ManyToMany(cascade={CascadeType.DETACH, CascadeType.MERGE, CascadeType.REFRESH}, fetch=FetchType.EAGER)
	private Set<Cartelera> carteleras =  new HashSet<Cartelera>();

	public UsuarioOnline(String usuario, String clave) {
		super(usuario, clave);
	}
	
	public UsuarioOnline() {
		super();
	}

	public void suscribirCartelera(Cartelera cartelera){
		carteleras.add(cartelera);
		
	}
	
	public void eliminarSuscripcion(Cartelera cartelera){
		carteleras.remove(cartelera);
	}
	
	
	public Set<Cartelera> getCarteleras() {
		return carteleras;
	}

	public void setCarteleras(Set<Cartelera> carteleras) {
		this.carteleras = carteleras;
	}


}
