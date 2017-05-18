package clases;
import javax.persistence.*;

import org.springframework.stereotype.Repository;
 
@Entity
public class Admin extends Usuario{
	

	private static final long serialVersionUID = 1L;

	public Admin(String usuario, String clave) {
		super(usuario, clave);
	}

	public void agregarCartelera(Cartelera car){
		
	}
	
	public Admin() {
		super();
	}

}
