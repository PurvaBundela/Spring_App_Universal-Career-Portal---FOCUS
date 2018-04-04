package neu.edu.controller;

import java.io.File;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import javax.servlet.http.HttpSession;
import java.io.FileInputStream;
import java.io.OutputStream;
import org.apache.commons.io.IOUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import neu.edu.pojo.*;
import neu.edu.dao.*;

@Controller
public class EmployeeController {
	
	
	@Autowired
	private JobsDao jobsDao;
	
	@Autowired
	private UserDao userDao;
	
	//Redirecting to Post job view
	@RequestMapping(value = "/emppostJob", method = RequestMethod.GET)
	public String employeePostJob(Model model) {
		JobInfo jobInfo= new JobInfo();
		model.addAttribute("job",jobInfo);
		return "employee_postjob";
	}
	
	//Submiting posted job
	@RequestMapping(value = "/emppostJobSubmit", method = RequestMethod.POST)
	public String employeePostJobSubmit(Model model,JobInfo job, HttpSession session) throws Exception {
		Employee e=(Employee) session.getAttribute("e");
		int id= e.getId();
		job.setUser(e);
		job.setEmployer(e.getEmployer());
		boolean success= jobsDao.saveJobDetail(job);
		e=(Employee)userDao.findUserById(id);
		session.setAttribute("e", e);
		if(success)
		{
			model.addAttribute("messageType","success");
			model.addAttribute("message","Congratulations Job Added Successfully");
			return "employee_message";
		}
		else
		{
			model.addAttribute("messageType","failure");
			model.addAttribute("message","Sorry Job Addition Failed");
			return "employee_message";
		}
	}
	
	//redirecting to employee profile
	@RequestMapping(value = "/empprofile", method = RequestMethod.GET)
	public String empProfileView(Model model,HttpSession session) throws Exception {
		Employee emp=(Employee) session.getAttribute("e");
		model.addAttribute("employee",emp);
		return "employee_myprofile";
	}
	
	
	//Updation of profile of Employee
	
	@RequestMapping(value = "/updateEmpProfile", method = RequestMethod.POST)
	public String updateEmpProfile(Model model,HttpSession session, Employee employee) throws Exception {
		Employee e=(Employee) session.getAttribute("e");
		employee.setEmployer(e.getEmployer());
		int id= e.getId();
		User u=(User)employee;
		boolean success=userDao.saveUser(u);
		e=(Employee)userDao.findUserById(id);
		session.setAttribute("e", e);
		if(success)
		{
			model.addAttribute("messageType","success");
			model.addAttribute("message","Congratulations Profile Updated Successfully");
			return "employee_message";
		}
		else
		{
			model.addAttribute("messageType","failure");
			model.addAttribute("message","Sorry Profile Updation Failed");
			return "employee_message";
		}
	}
	
	//Viewing Jobs
	@RequestMapping(value = "/employeeViewJobs", method = RequestMethod.GET)
	public String employeeViewJobs(Model model,HttpSession session) throws Exception {
		Employee e=(Employee) session.getAttribute("e");
		ArrayList<JobInfo> jobsinfo=jobsDao.getJobs(e);
		model.addAttribute("jobs",jobsinfo);
		return "employee_viewjobs";
	}
	
	//Updating Jobs
	@RequestMapping(value = "/jobUpdate", method = RequestMethod.GET)
	public String jobUpdate(Model model,HttpServletRequest request) throws Exception
	{
		int id=Integer.parseInt(request.getParameter("id"));
		JobInfo job= jobsDao.getJob(id);
		model.addAttribute("job",job);
		return "employee_updatejob";
	}
	
	
	//Submitting updated jobs
	@RequestMapping(value = "/submitUpdatedJob", method = RequestMethod.POST)
	public String submitUpdatedJob(Model model,JobInfo jobInfo,HttpSession session) throws Exception
	{
		Employee e=(Employee) session.getAttribute("e");
		int id= e.getId();
		jobInfo.setUser(e);
		jobInfo.setEmployer(e.getEmployer());
		boolean success= jobsDao.saveJobDetail(jobInfo);
		e=(Employee)userDao.findUserById(id);
		session.setAttribute("e", e);
		if(success)
		{
			model.addAttribute("messageType","success");
			model.addAttribute("message","Congratulations Job Updated Successfully");
			return "employee_message";
		}
		else
		{
			model.addAttribute("messageType","failure");
			model.addAttribute("message","Sorry Job Updation Failed");
			return "employee_message";
		}
	}
	
	//Viewing Candidate Resume
	@RequestMapping(value = "/viewCandidateResume", method = RequestMethod.GET)
	public void viewCandidateResume(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception
	{
		int id=Integer.parseInt(request.getParameter("candidateId"));
		Candidate candidate= (Candidate) userDao.findUserById(id);
		File f= new File(candidate.getResumePath());
		FileInputStream finstm= new FileInputStream(f);
		response.setHeader("Expires", "0");
        response.setHeader("Cache-Control","must-revalidate, post-check=0,precheck=0");
        response.setHeader("Pragma", "public");
        response.setContentType("application/pdf");
        response.setContentLength((int) f.length());
        OutputStream ostm = response.getOutputStream();
        IOUtils.copy(finstm, ostm);
        ostm.flush();
        ostm.close(); 
	}
	
	//Viewing Apllications
	@RequestMapping(value = "/viewApplications", method = RequestMethod.GET)
	public String viewCandidateApplication(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception
	{
		int jobId=Integer.parseInt(request.getParameter("jobId"));
		JobInfo jobInfo= jobsDao.getJob(jobId);
		model.addAttribute("applications",jobInfo.getApplications());
		return "viewapplicationsrecieved";
	}
	
	//viewing candidate Details
	@RequestMapping(value = "/viewCandidateDetails", method = RequestMethod.GET)
	public String viewCandidateDetails(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception
	{
		int candidateId=Integer.parseInt(request.getParameter("candidateId"));
		Candidate candidate=(Candidate) userDao.findUserById(candidateId);
		model.addAttribute("candidate",candidate);
		return "employeeviewapplicantdetailsFreemarker";
	}
	
	//Sending Emails
	@RequestMapping(value = "/sendEmail", method = RequestMethod.GET)
	public String sendingEmail(Model model,HttpServletRequest request) throws Exception
	{
		int candidateId=Integer.parseInt(request.getParameter("candidateId"));
		Candidate candidate=(Candidate) userDao.findUserById(candidateId);
		User user= (User) request.getSession().getAttribute("e");
		
		Emails emails= new Emails();
		emails.setFrom(user.getName().getFirstName()+" "+user.getName().getLastName());
		emails.setToName(candidate.getName().getFirstName()+" "+candidate.getName().getLastName());
		emails.setTo(candidate.getEmailId());
		model.addAttribute("emails",emails);
		return "employee_sendmail";
	}
	
	
	
	//Submiit after sending emails
	@RequestMapping(value = "sendingEmailSubmit", method = RequestMethod.POST)
	public String sendingEmailSubmit(Model model,Emails emails,HttpServletRequest request) throws Exception
	{
		if(emails.getBody().length()<=0)
		{
			model.addAttribute("messageType","failure");
			model.addAttribute("message","Sorry No Data in email body");
			return "employee_message";
		}
		boolean success=Emailconfig.sendCandidateMail(emails);
		if(success)
		{
			model.addAttribute("messageType","success");
			model.addAttribute("message","Great Email Sent Successfully");
			return "employee_message";
		}
		else
		{					
			model.addAttribute("messageType","failure");
			model.addAttribute("message","Problem in Sending Email, Please try after some time .");
			return "employee_message";
		}
	}
}



