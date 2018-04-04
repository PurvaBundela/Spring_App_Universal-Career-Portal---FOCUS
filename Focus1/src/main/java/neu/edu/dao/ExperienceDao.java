package neu.edu.dao;

import neu.edu.pojo.*;

public class ExperienceDao extends DAO {
	
	public boolean saveExp(Experience Exp)
	{
		try{
			getSession().getTransaction().begin();
			getSession().saveOrUpdate(Exp);
			getSession().getTransaction().commit();
			return true;
		}
		catch(Exception ex)
		{
			getSession().getTransaction().rollback();
			return false;
		}
	}
}
