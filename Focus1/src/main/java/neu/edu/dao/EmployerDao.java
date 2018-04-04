package neu.edu.dao;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;
import neu.edu.pojo.*;

public class EmployerDao extends DAO {
	//Login Employer
	public Employer employerLogin(String name, String password)
            throws Exception {
        try {
            Criteria crit= getSession().createCriteria(Employer.class);
	        crit.add(Restrictions.like("emailId", name));
	        crit.add(Restrictions.like("password", password));
	        crit.setMaxResults(1);
	        Employer employer=(Employer)crit.uniqueResult();
            return employer;
        } catch (HibernateException e) {
        	close();
            throw new Exception("Could not fetch Employer " + name, e);
        }
    }
	
	//Delete Employees
	public boolean removeEmployees(String empId)
	{
		try{
			
			

				Criteria crit= getSession().createCriteria(Employee.class);
		        crit.add(Restrictions.like("id", Integer.parseInt(empId)));
		        Employee e=(Employee) crit.uniqueResult();
		        getSession().getTransaction().begin();
		        getSession().delete(e);
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