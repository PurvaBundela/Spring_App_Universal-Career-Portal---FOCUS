package neu.edu.dao;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;



import neu.edu.pojo.*;

public class UserDao extends DAO {
    //Checks login credentials for different users
	public User userLogin(String name, String password)
            throws Exception {
        try {
            Criteria crit = getSession().createCriteria(User.class);
            crit.add(Restrictions.like("emailId", name));
            crit.add(Restrictions.like("password", password));
            //crit.setMaxResults(1);
	        User user=(User)crit.uniqueResult();
            return user;
        } catch (HibernateException e) {
        	close();
            throw new Exception("Could not get User " + name, e);
        }
    }
	// Checks for duplicates users
	public boolean checkDuplicateUser(String name)
            throws Exception {
        try {
            Criteria crit = getSession().createCriteria(User.class);
            crit.add(Restrictions.like("emailId", name.trim()));
	        //crit.setMaxResults(1);
	        User user=(User) crit.uniqueResult();
	        if(user!=null)
	        {
	        	return true;
	        }
	        else
	        {
	        	return false;
	        }
        } catch (HibernateException e) {
        	close();
            throw new Exception("Could not find user " + name, e);
        }
    }
	
	//Search for user
	public User findUserById(int id)
            throws Exception {
        try {
            Criteria crit = getSession().createCriteria(User.class);
            crit.add(Restrictions.like("id", id));
           // crit.setMaxResults(1);
	        User user=(User)crit.uniqueResult();
            return user;
        } catch (HibernateException e) {
        	close();
            throw new Exception("Could not find User " + id, e);
        }
    }
	
	//Save User
	public boolean saveUser(User user)
	{
		try{
			getSession().getTransaction().begin();
			getSession().saveOrUpdate(user);
			getSession().getTransaction().commit();
			return true;
		}
		catch(Exception ex)
		{
			getSession().getTransaction().rollback();
			return false;
		}
	}
	
	//Updating Password for user
	public boolean changePassword(int id, String password) throws Exception
	{
		try{
			getSession().getTransaction().begin();
			Query q = getSession().createQuery("Update User set password = :password where id= :id");
            q.setString("id", String.valueOf(id));
            q.setString("password",password);
            int rowCount=q.executeUpdate();
            getSession().getTransaction().commit();
            if(rowCount>0)
            {
            	return true;
            }
            return false;
		}
		catch(Exception ex)
		{
			getSession().getTransaction().rollback();
			throw new Exception("Could not change user password " + id, ex);
		}
	}
	
	
	
}

