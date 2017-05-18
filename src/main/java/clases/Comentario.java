package clases;
import java.io.Serializable;
//import java.sql.Date;
import java.util.Set;

import javax.persistence.*;

import org.springframework.stereotype.Repository;

@Entity
@Table(name="Cometario")
 

public class Comentario implements Serializable {

	public Comentario() {
		super();
	}
	private static final long serialVersionUID = 1L;
	
	@Id @GeneratedValue
	@Column(name="idComentario")
	private Long id;

	@OneToOne(cascade={CascadeType.DETACH, CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH})
	private Usuario autorComentario;
	
	private String texto;
	
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	@JoinColumn(name="Comentario")
	private Set<Comentario> respuestas;
	
	private String estado="Habilitado";
	
	
	@OneToOne(optional=true)
	private Comentario respondeA;
	
	
	
	public void agregarRespuesta(Comentario respuesta){
		respuestas.add(respuesta);
	}
	
	public void eliminarRespuesta(Comentario respuesta){
		respuestas.remove(respuesta);
	}
	
	
	/******************Getters & setters ********************/
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

	public String getTexto() {
		return texto;
	}
	
	public void setTexto(String texto) {
		this.texto = texto;
	}
	
	public Set<Comentario> getRespuestas() {
		return respuestas;
	}
	
	public void setRespuestas(Set<Comentario> respuestas) {
		this.respuestas = respuestas;
	}
	
	public Usuario getAutorComentario() {
		return autorComentario;
	}
	
	public void setAutorComentario(Usuario autorComentario) {
		this.autorComentario = autorComentario;
	}
}
