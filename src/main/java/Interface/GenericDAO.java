package Interface;

import java.util.List;

public interface GenericDAO<T> {
	public void agregar(T cartelera); 
	public T actualizar(T Objeto); 
	public void eliminar(T entity);
	public T eliminar(int id);
	public void recuperar(T Objeto);
	public List<T> recuperar(); 
	public T buscar(String nombre);
	public T buscar(Long idBusqueda);

}
