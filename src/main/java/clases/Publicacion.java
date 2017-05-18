package clases;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="Publicacion")
 

public class Publicacion implements Serializable{
	
	private static final long serialVersionUID = 1L;

	@Id @GeneratedValue
	private Long id;
	private String titulo;
	
	private String descripcion;
	
	
	
	private String estado="Habilitado";
	
	@OneToOne(cascade={CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.DETACH})
	private Usuario autorPublicacion;
	
	@ManyToOne
	private Cartelera cartelera;
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	private Set<Comentario> comentarios= new HashSet<Comentario>();
	
	private boolean comentariosHab = true;
		
	public Publicacion() {
		super();
	}
		
	public void agregarComentario(Comentario c){
		comentarios.add(c);
	}
	
	public void eliminarComentario(Comentario c){
		comentarios.remove(c);
	}

	/*********************Getters & setters ***************************/
	
	public Cartelera getCartelera() {
		return cartelera;
	}

	public void setCartelera(Cartelera cartelera) {
		this.cartelera = cartelera;
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

	public boolean isComentariosHab() {
		return comentariosHab;
	}

	public void setComentariosHab(boolean comentariosHab) {
		this.comentariosHab = comentariosHab;
	}

	public Set<Comentario> getComentarios() {
		return comentarios;
	}

	public void setComentarios(Set<Comentario> comentarios) {
		this.comentarios = comentarios;
	}

	public String getTitulo() {
		return titulo;
	}
	
	public void setTitulo(String nombrePublicacion) {
		this.titulo = nombrePublicacion;
	}
	
	public Usuario getAutorPublicacion() {
		return autorPublicacion;
	}
	
	public void setAutorPublicacion(Usuario autor) {
		this.autorPublicacion = autor;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	

}
