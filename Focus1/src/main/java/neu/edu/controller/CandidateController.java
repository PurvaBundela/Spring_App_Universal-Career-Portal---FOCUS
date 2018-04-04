package neu.edu.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;


import neu.edu.pojo.*;
import neu.edu.dao.*;
@Controller
public class CandidateController {
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private CandidateDao candidateDao;
	
	// Signup Page for Candidates
	@RequestMapping(value = "/candidatesignup", method = RequestMethod.GET)
	public String CandidateSignUp(Model model)
	{
		Candidate Candidate= new Candidate();
		model.addAttribute("candidate",Candidate);
		return "register_user";
	}
	
	//Submitting Signup Page to server
	@RequestMapping(value = "/Candidatesubmitsignup", method = RequestMethod.POST)
	public String candidateSubmitSignUp(Model model,Candidate candidate,HttpSession session) throws Exception
	{
		if(!userDao.checkDuplicateUser(candidate.getEmailId()))
		{
			candidate.setRole("Candidate");
			boolean success=userDao.saveUser(candidate);
			session.setAttribute("candidate", candidate);
			if(success)
			{
				model.addAttribute("messageType","success");
				model.addAttribute("message","Congratulations Account Created successfully, Please login");
				return "candidate_message";
			}
			else
			{
				model.addAttribute("messageType","failure");
				model.addAttribute("message","Sorry Account Creation Failed please try again..");
				return "regionFailed_message";
			}
		}
		else
		{
			model.addAttribute("messageType","failure");
			model.addAttribute("message","Sorry Candidate Allready Present");
			return "regionFailed_message";
		}
	}
	
	//View User Own Profile
	
	@RequestMapping(value = "/myprofile", method = RequestMethod.GET)
	public String candidateProfile(Model model,HttpSession session) throws Exception
	{
		Candidate candidate= (Candidate) session.getAttribute("candidate");
		Experience Exp=candidateDao.getExpDetails(candidate);
		if(Exp==null)
		{
			Exp= new Experience();
		}
		EducationalDetails educationdetails=candidateDao.getEducation(candidate);
		if(educationdetails==null)
		{
			educationdetails= new EducationalDetails();
		}
		model.addAttribute("candidate",candidate);
		model.addAttribute("Exp",Exp);
		model.addAttribute("educationdetails",educationdetails);
		return "candidate_profile";
	}
	
	//User Viewing Jobs
	@RequestMapping(value = "/viewAllJobs", method = RequestMethod.GET)
	public String viewJobs(Model model,HttpServletRequest request) throws Exception
	{	
		Searching scr= new Searching();
		Candidate candidate=(Candidate) request.getSession().getAttribute("candidate");
		int id= candidate.getId();
		candidate = (Candidate) userDao.findUserById(id);
		request.getSession().setAttribute("candidate", candidate);
		model.addAttribute("scr",scr);
		return "candidate_searchJobs";
	}
	
	//User Applying to Job
	@RequestMapping(value = "/applyingJob", method = RequestMethod.GET)
	public String applyToJob(Model model,HttpServletRequest request) throws Exception
	{
		HttpSession session=request.getSession();
		Candidate candidate=(Candidate) session.getAttribute("candidate");
		Application application= new Application();
		int id= candidate.getId();
		int jobid= Integer.parseInt(request.getParameter("id"));
		
		JobInfo job= candidateDao.searchById(jobid);
		application.setUser(candidate);
		application.setJob(job);
		application.setAppStatus("Applied");
		application.setCreationdate(new UpdateDate().toString());
		application.setDateAppStatus(new UpdateDate().toString());
		
		
		if(!candidateDao.checkIfApplied((User)candidate, job))
		{
			boolean success=candidateDao.submitCandidacy(application);
			candidate= (Candidate) userDao.findUserById(id);
			session.setAttribute("candidate", candidate);
			if(success)
			{
				model.addAttribute("messageType","success");
				model.addAttribute("message"," You Have Successfully Already  Applied To This Job");
				return "candidate_message";
			}
			else
			{
				model.addAttribute("messageType","failure");
				model.addAttribute("message","Error In Applying Job, Please try later.");
				return "candidate_message";
			}
		}
		else
		{
			model.addAttribute("messageType","failure");
			model.addAttribute("message","Sorry Application Already Present, Please waitt For Our Reply.");
			return "candidate_message";
		}
	}
	
	// update Personal Information
	
	@RequestMapping(value = "/personalInfoUpdation", method = RequestMethod.POST)
	public String candidatePersonalInformation(Model model, Candidate candidate, HttpSession session) throws Exception
	{
		Candidate c=(Candidate)session.getAttribute("candidate");
		candidate.setPassword(c.getPassword());
		candidate.setRole("Candidate");
		int id= candidate.getId();
		userDao.saveUser(candidate);
		candidate=(Candidate)userDao.findUserById(id);
		session.setAttribute("candidate", candidate);
		Experience Exp=candidateDao.getExpDetails(candidate);
		if(Exp==null)
		{
			Exp= new Experience();
		}
		EducationalDetails educationdetails=candidateDao.getEducation(candidate);
		if(educationdetails==null)
		{
			educationdetails= new EducationalDetails();
		}
		model.addAttribute("candidate",candidate);
		model.addAttribute("educationdetails",educationdetails);
		model.addAttribute("Exp",Exp);
		
		return "candidate_profile";
	}
	
	//update work experiencing details
	
	@RequestMapping(value = "/workExpUpdate", method = RequestMethod.POST)
	public String candidateWorkExDetails(Model model, Experience Exp, HttpSession session) throws Exception
	{
		Candidate candidate= (Candidate) session.getAttribute("candidate");
		int id= candidate.getId();
		candidate.setRole("Candidate");
		Exp.setUser(candidate);
		Exp.setCreationdate(new UpdateDate().toString());
		candidateDao.saveExperience(Exp);
		candidate=(Candidate)userDao.findUserById(id);
		session.setAttribute("candidate", candidate);
		Exp=candidateDao.getExpDetails(candidate);
		if(Exp==null)
		{
			Exp= new Experience();
		}
		EducationalDetails educationdetails=candidateDao.getEducation(candidate);
		if(educationdetails==null)
		{
			educationdetails= new EducationalDetails();
		}
		model.addAttribute("candidate",candidate);
		model.addAttribute("Exp",Exp);
		model.addAttribute("educationdetails",educationdetails);
		return "candidate_profile";
	}
	

	
	//update Educational Details
	
	@RequestMapping(value = "/educationalInfoUpdate", method = RequestMethod.POST)
	public String candidateEducationalDetails(Model model, EducationalDetails educationdetails1, HttpSession session) throws Exception
	{
		Candidate candidate= (Candidate) session.getAttribute("candidate");
		int id= candidate.getId();
		candidate.setRole("Candidate");
		educationdetails1.setUser(candidate);
		candidateDao.saveEducation(educationdetails1);
		
		
		candidate=(Candidate)userDao.findUserById(id);
		session.setAttribute("candidate", candidate);
		Experience Exp=candidateDao.getExpDetails(candidate);
		if(Exp==null)
		{
			Exp= new Experience();
		}
		EducationalDetails educationdetails=candidateDao.getEducation(candidate);
		if(educationdetails==null)
		{
			educationdetails= new EducationalDetails();
		}
		model.addAttribute("candidate",candidate);
		model.addAttribute("Exp",Exp);
		model.addAttribute("educationdetails",educationdetails);
		return "candidate_profile";
	}
	
	//Search job
	
	@RequestMapping(value = "/searchJobSubmit", method = RequestMethod.POST)
	public String viewJobs(Model model,Searching srch,HttpServletRequest request) throws Exception
	{
		Candidate candidate=(Candidate) request.getSession().getAttribute("candidate");
		int id= candidate.getId();
		candidate= (Candidate) userDao.findUserById(id);
		candidate.setRole("candidate");
		request.getSession().setAttribute("candidate", candidate);
		model.addAttribute("scr",srch);
		ArrayList<JobInfo> jobInfo= candidateDao.searchJobsByInfo(srch);
		model.addAttribute("scrResults",jobInfo);
		return "candidate_searchJobs";
	}
	
	
	//Upload the resume
	@RequestMapping(value = "/resumeUpload", method = RequestMethod.GET)
	public String uploadResume(Model model,HttpServletRequest request) throws Exception
	{
		Candidate candidate= (Candidate) request.getSession().getAttribute("candidate");
		if(candidate.getResumePath()!=null && !candidate.getResumePath().equalsIgnoreCase(""))
		{
			model.addAttribute("id","Yes");
		}
		else
		{
			model.addAttribute("id","NAvail");
		}
		return "candidate_resumeUpload";
	}
	
	
	//Submit the uploaded resume
	@RequestMapping(value = "/resumeSubmit", method = RequestMethod.POST)
	public String candidateSubmitResume(Model model,HttpServletRequest request, @RequestParam("file") CommonsMultipartFile resume) throws Exception
	{
		Candidate candidate= (Candidate) request.getSession().getAttribute("candidate");
		int id=candidate.getId();
		boolean success=false;
		File localFile=null;
		try{
			System.out.println(request.getSession().getServletContext().getRealPath("/webapps/"));
			String rootPath = System.getProperty("catalina.home");
            File dir = new File(rootPath + File.separator + "Focus"+File.separator+"Candidate"+File.separator+"Resume"+File.separator+candidate.getId()+File.separator);
            if (!dir.exists())
                dir.mkdirs();
			localFile = new File(dir.getAbsoluteFile(), String.valueOf(candidate.getId())+".pdf");
			resume.transferTo(localFile);
			success=true;
		}
		catch(Exception ex)
		{
			success=false;
		}
		if(success)
		{
			candidate=(Candidate) userDao.findUserById(id);
			candidate.setResumePath(localFile.getPath());
			userDao.saveUser(candidate);
			request.getSession().setAttribute("candidate", candidate);
			model.addAttribute("messageType","success");
			model.addAttribute("message","Congrats Resume Uploaded Successfully");
			return "candidate_message";
		}
		else
		{
			model.addAttribute("messageType","failure");
			model.addAttribute("message","Sorry Upload failed.");
			return "candidate_message";
		}
	}
	
	
	//View the information for jobs
	@RequestMapping(value = "/jobInfoView", method = RequestMethod.GET)
	public String candidatejobDetails(Model model,HttpServletRequest request) throws Exception
	{
		int jid=Integer.parseInt(request.getParameter("id"));
		JobInfo j= candidateDao.searchById(jid);
		model.addAttribute("job", j);
		String nShow=request.getParameter("noShow");
		if(nShow!=null && nShow.equalsIgnoreCase("yes"))
		{
			model.addAttribute("noShow",nShow);
		}
		else
		{
			model.addAttribute("noShow", "no");
		}
		Candidate candidate=(Candidate) request.getSession().getAttribute("candidate");
		int id= candidate.getId();
		candidate= (Candidate) userDao.findUserById(id);
		request.getSession().setAttribute("candidate", candidate);
		return "viewJobInfoVelocity";
	}

	//View ALL APPLICATIONS
	
	@RequestMapping(value = "/viewapplications", method = RequestMethod.GET)
	public String viewapplications(Model model,HttpServletRequest request) throws Exception {
		
		Candidate candidate= (Candidate) request.getSession().getAttribute("candidate");
		model.addAttribute("applications",candidate.getApplications());
		return "candidate_applications";
	}

	
	@RequestMapping(value = "/download", method = RequestMethod.GET)
	public void downloadOldResume(Model model,HttpServletRequest request,HttpServletResponse response) throws Exception
	{
		Candidate Candidate= (Candidate) request.getSession().getAttribute("candidate");
		File f= new File(Candidate.getResumePath());
		FileInputStream fis= new FileInputStream(f);
		response.setHeader("Expires", "0");
        response.setHeader("Cache-Control","must-revalidate, post-check=0,precheck=0");
        response.setHeader("Pragma", "public");
        response.setContentType("application/pdf");
        response.setContentLength((int) f.length());
        OutputStream os = response.getOutputStream();
        IOUtils.copy(fis, os);
        os.flush();
        os.close(); 
	}
	
	
	
}
