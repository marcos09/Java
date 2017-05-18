package clases;
import java.io.Serializable;
/*
import java.util.HashSet;
import java.util.Set;
*/
import javax.persistence.*;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Entity
 
public class Usuario implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id @GeneratedValue
	@Column(name="idUsuario")
	private Long id;
	
	private String usuario;
	private String clave;
	private Integer dni;
	private String email;
	private String estado="Habilitado";

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}


	public Long getId() {
		return id;
	}

	public void setId(Long i) {
		this.id = i;
	}	
		
	public Usuario() {
		super();
	}


	public Usuario(String usuario, String clave) {
		super();
		this.usuario = usuario;
		this.clave = clave;
		
	}
	
	public Integer getDni() {
		return dni;
	}

	public void setDni(Integer dni) {
		this.dni = dni;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getClave() {
		return clave;
	}
	public void setClave(String clave) {
		this.clave = clave;
	}
}
