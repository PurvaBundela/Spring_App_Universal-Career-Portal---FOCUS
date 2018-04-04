package neu.edu.dao;
import org.hibernate.Criteria;
import java.util.ArrayList;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.criterion.*;
import neu.edu.pojo.*;

public class CandidateDao extends DAO {
	
	//LoginCandidates
	public Candidate LoginCandidate(String name, String password)
            throws Exception {
        try {
            Criteria crit= getSession().createCriteria(Candidate.class);
	        crit.add(Restrictions.like("emailId", name));
	        crit.add(Restrictions.like("password", password));
	        crit.setMaxResults(1);
	        Candidate Candidate=(Candidate)crit.uniqueResult();
            return Candidate;
        } catch (HibernateException e) {
            throw new Exception("Could not fetch Candidate " + name, e);
        }
    }
	
	//Fetch Education Details
	
	public EducationalDetails getEducation(User user) throws Exception
	{
		try {
            Criteria crit= getSession().createCriteria(EducationalDetails.class);
	        crit.add(Restrictions.like("user", user));
	        crit.setMaxResults(1);
	        EducationalDetails EducationalDetails=(EducationalDetails)crit.uniqueResult();
            return EducationalDetails;
        } catch (HibernateException e) {
            throw new Exception("Could not fetch  Eductaion Info" + user.getName().getFirstName(), e);
        }
	}
	
	//Save Educational DEtails
	public boolean saveEducation(EducationalDetails educationalDetails)
	{
		try{
			getSession().getTransaction().begin();
			getSession().saveOrUpdate(educationalDetails);
			getSession().getTransaction().commit();
			return true;
		}
		catch(Exception ex)
		{
			getSession().getTransaction().rollback();
			return false;
		}
	}
	
	//Fetch Experience Details
	public Experience getExpDetails(User user) throws Exception
	{
		try {
            Criteria crit= getSession().createCriteria(Experience.class);
	        crit.add(Restrictions.like("user", user));
	        crit.setMaxResults(1);
	        Experience Exp=(Experience)crit.uniqueResult();
            return Exp;
        } catch (HibernateException e) {
            throw new Exception("Could not fetch Experience" + user.getName().getFirstName(), e);
        }
	}
	
	//Save Work Experience
	
	public boolean saveExperience(Experience Exp)
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
	
	//Candidate Submit The Candidacy
	public boolean submitCandidacy(Application application)
	{
		try{
			getSession().getTransaction().begin();
			getSession().saveOrUpdate(application);
			getSession().getTransaction().commit();
			return true;
		}
		catch(Exception ex)
		{
			getSession().getTransaction().rollback();
			return false;
		}
	}
	
	//PreCheck If Already Applied
	public boolean checkIfApplied(User user, JobInfo job) throws Exception
	{
		try {
            Criteria crit= getSession().createCriteria(Application.class);
            crit.add(Restrictions.eq("user", user));
            crit.add(Restrictions.eq("job", job));
            crit.setProjection(Projections.rowCount());
            crit.setMaxResults(1);
            Long count = (Long) crit.uniqueResult();
            if(count>0)
            {
            	return true;
            }
            else
            {
            	return false;
            }
        } catch (HibernateException e) {
            throw new Exception("Could not fetch Job Information ", e);
        }
	}
	//Searching Jobs By ID
	public JobInfo searchById(int id) throws Exception
	{
		try {
            Criteria crit= getSession().createCriteria(JobInfo.class);
            crit.add(Restrictions.eq("id", id));
            crit.setMaxResults(1);
            JobInfo job=(JobInfo)crit.uniqueResult();
            return job;
        } catch (HibernateException e) {
            throw new Exception("Could not get Job Details ", e);
        }
	}
	
	//Searching Jobs Info Via Other DEtails//And 1=1
	public ArrayList<JobInfo> searchJobsByInfo(Searching srch) throws Exception
	{
		
		try{
			String query;
			query= "From JobInfo where jobTitle like :jobTitle ";
			
			if(!srch.getState().equalsIgnoreCase(""))
            {
				query=query+" and state=:state";
            }
			if(!srch.getCity().equalsIgnoreCase(""))
			{
				query=query+" And city=:city";
			}
			Query q = getSession().createQuery(query);
			q.setString("jobTitle",srch.getJobTitle()+"%");
			if(!srch.getCity().equalsIgnoreCase(""))
			{
				q.setString("city",srch.getCity()+"%");
			}
			if(!srch.getState().equalsIgnoreCase(""))
            {
				q.setString("state",srch.getState()+"%");
            }
            
            ArrayList<JobInfo> jobs=(ArrayList<JobInfo>)q.list();
            return jobs;
		}
		catch(Exception e)
		{
			throw new Exception("Could not fetch Job Information ", e);
		}
		
	}
	
	
	
	
	
	
	
	
	
}
