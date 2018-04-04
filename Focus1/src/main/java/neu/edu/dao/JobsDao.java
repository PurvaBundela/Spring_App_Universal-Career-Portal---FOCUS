package neu.edu.dao;

import java.util.ArrayList;
import neu.edu.pojo.*;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;

public class JobsDao extends DAO {

    //Get Job Info
	public JobInfo getJob(int id) throws Exception
	{
		try {
            Criteria cr = getSession().createCriteria(JobInfo.class);
            cr.add(Restrictions.like("id", id));
            JobInfo job=(JobInfo)cr.uniqueResult();
            return job;
        } catch (HibernateException e) {
            throw new Exception("Could not get Job id:" + id, e);
        }
	}
	
	//Save Job Details
	public boolean saveJobDetail(JobInfo job)
	{
		try{
			getSession().getTransaction().begin();
			getSession().saveOrUpdate(job);
			getSession().getTransaction().commit();
			return true;
		}
		catch(Exception ex)
		{
			getSession().getTransaction().rollback();
			return false;
		}
	}
	
	// Get All The jobs
	public ArrayList<JobInfo> getJobs(Employee emp) throws Exception
	{
		
		try{
			Query q = getSession().createQuery("From JobInfo where user = :user and employer=:employer");
            q.setEntity("user",emp);
            q.setEntity("employer", emp.getEmployer());
            ArrayList<JobInfo> jobs=(ArrayList<JobInfo>)q.list();
            return jobs;
		}
		catch(Exception e)
		{
			getSession().getTransaction().rollback();
			throw new Exception("Could not get User " + emp.getName().getFirstName(), e);
		}
		
	}
	
	
	
}

