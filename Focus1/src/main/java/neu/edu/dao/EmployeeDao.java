package neu.edu.dao;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import neu.edu.pojo.*;

public class EmployeeDao extends DAO{
	
	//Employee Login
	public Employee employeeLogin(String name, String password)
            throws Exception {
		
        try {
            Criteria crit= getSession().createCriteria(Employee.class);
	        crit.add(Restrictions.like("emailId", name));
	        crit.add(Restrictions.like("password", password));
	        crit.setMaxResults(1);
	        Employee employee=(Employee)crit.uniqueResult();
            return employee;
        } catch (HibernateException e) {
        	close();
            throw new Exception("Could not fetch Employee " + name, e);
        }
    }
	// Search By Id
	public Employee searchEmployeeById(int id) throws Exception
	{
		try
		{
			String query;
			getSession().getTransaction().begin();
			query= "From Employee where id like :id ";
			Query q = getSession().createQuery(query);
			q.setInteger("id", id);
	        Employee employee=(Employee) q.uniqueResult();
	        getSession().getTransaction().commit();
	        return employee;
		}
		catch(Exception ex)
		{
			getSession().close();
			throw new Exception("Could not fetch Employee id=" + id);
		}
		
	}
}
