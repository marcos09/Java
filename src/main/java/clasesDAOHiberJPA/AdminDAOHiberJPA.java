package clasesDAOHiberJPA;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import Daos.AdminDAO;
import clases.Admin;

@Repository
public class AdminDAOHiberJPA extends GenericoDAOHibernateJPA<Admin> implements AdminDAO {

		public AdminDAOHiberJPA() {
			this.persistentClass = Admin.class;		
		}
}
