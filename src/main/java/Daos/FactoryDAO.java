package Daos;

import clasesDAOHiberJPA.*;


public class FactoryDAO {
	
	private static CarteleraDAOHiberJPA carteleraDAOHiberJPA = new CarteleraDAOHiberJPA();  
	private static UsuarioOnlineDAOHiberJPA usuarioOnlineDAOHiberJPA = new UsuarioOnlineDAOHiberJPA();
	private static UsuarioDAOHiberJPA usuarioDAOHiberJPA = new UsuarioDAOHiberJPA();
	private static PublicadorPermisosDAOHiberJPA ppDAOHiberJPA = new PublicadorPermisosDAOHiberJPA();
	private static AdminDAOHiberJPA adminDAOHiberJPA = new AdminDAOHiberJPA();
	private static ComentarioDAOHiberJPA comentarioDAOHiberJPA = new ComentarioDAOHiberJPA();
	private static PublicacionDAOHiberJPA publicacionDAOHiberJPA = new PublicacionDAOHiberJPA();
	
	public FactoryDAO() {		
	}
	
	public UsuarioOnlineDAO getUsuariosOnlineDAO(){
		return (UsuarioOnlineDAO) usuarioOnlineDAOHiberJPA;
	}
	
	public PublicadorPermisosDAO getPublicadorPermisosDAO(){
		return (PublicadorPermisosDAO) ppDAOHiberJPA;
	}
	
	public AdminDAO getUsuarioAdminDAO(){
		return (AdminDAO) adminDAOHiberJPA;
	}
	
	public UsuarioDAO getUsuarioDAO(){
		return (UsuarioDAO) usuarioDAOHiberJPA;
	}
	
	public CarteleraDAO getCarteleraDAO(){
		return (CarteleraDAO) carteleraDAOHiberJPA;
	}
	
	public PublicacionDAO getPublicacionDAO(){
		return (PublicacionDAO) publicacionDAOHiberJPA;
	}
		
	public ComentarioDAO getComentarioDAO(){
		return (ComentarioDAO) comentarioDAOHiberJPA;
	}
}
