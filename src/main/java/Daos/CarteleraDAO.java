package Daos;

import clases.Cartelera;

import java.util.Collection;

import Interface.GenericDAO;
import clases.Publicacion;
public interface CarteleraDAO extends GenericDAO<Cartelera> {
	
	public Collection<Publicacion> publicaciones();
}