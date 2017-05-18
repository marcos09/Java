package clases;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

import org.springframework.stereotype.Repository;

@Entity
@Table(name="cartelera")

public class Cartelera implements Serializable{
	
	public Cartelera() {
		super();
	}
	private static final long serialVersionUID = 1L;

	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	private Set<Publicacion> publicaciones = new HashSet<Publicacion>();
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	private Set<Cartelera> carteleras = new HashSet<Cartelera>();
	
	@ManyToOne(cascade={CascadeType.DETACH, CascadeType.MERGE, CascadeType.REFRESH})
	private Cartelera padre;
	
	@Id @GeneratedValue
	@Column(name="idCartelera")
	private Long id;
	
	
	@Column(name="nombre")
	private String nombreCartelera;
	
	private String estado="Hablitado";

	@ManyToMany(cascade={CascadeType.DETACH, CascadeType.MERGE, CascadeType.REFRESH},fetch=FetchType.EAGER)
	private Set<Usuario> participantes = new HashSet<Usuario>();
	
	
	public void agregarParticipante(Usuario u){
		participantes.add(u);
	}
	
	public void eliminarParticipante(Usuario u){
		participantes.remove(u);
	}
	
	public void agregarSuscriptores(Usuario u){
		participantes.add(u);
	}
	
	public void agregarCartelera(Cartelera c){
		carteleras.add(c);
	}
	public void eliminarCartelera(Cartelera c){
		carteleras.remove(c);
	}

	public void agregarPublicacion(Publicacion p){
		publicaciones.add(p);
	}
	
	public void eliminarPublicacion(Publicacion p){
		publicaciones.remove(p);
	}

	/*******************Getters y Setters ************************/
	public Set<Usuario> getSuscriptores() {
		return participantes;
	}

	public void setSuscriptores(Set<Usuario> suscriptores) {
		this.participantes = suscriptores;
	}
	
	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	
	public Set<Cartelera> getCarteleras() {
		return carteleras;
	}

	public void setCarteleras(Set<Cartelera> carteleras) {
		this.carteleras = carteleras;
	}

	public String getNombreCartelera() {
		return nombreCartelera;
	}

	public void setNombreCartelera(String nombreCartelera) {
		this.nombreCartelera = nombreCartelera;
	}

	public Set<Publicacion> getPublicaciones() {
		return publicaciones;
	}

	public void setPublicaciones(Set<Publicacion> publicaciones) {
		this.publicaciones = publicaciones;
	}
	
	public Cartelera getPadre() {
		return padre;
	}

	public void setPadre(Cartelera padre) {
		this.padre = padre;
	}

	public Set<Usuario> getParticipantes() {
		return participantes;
	}

	public void setParticipantes(Set<Usuario> participantes) {
		this.participantes = participantes;
	}

}
