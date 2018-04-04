package neu.edu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import neu.edu.pojo.*;
import neu.edu.dao.*;
@Controller
public class AdminController {
	

	@Autowired
	private UserDao userDao;
	
	@Autowired
	private EmployerDao employerDao;
	
	@Autowired
	private EmployeeDao employeeDao;
	
	//Emplyer Signup Page
	@RequestMapping(value = "/signupEmployer", method = RequestMethod.GET)
	public String employerSignup(Model model)
	{
		Employer employer= new Employer();
		model.addAttribute("employer",employer);
		return "register_employer";
	}
	
	
	//Employer Registeration
	@RequestMapping(value = "/employersubmitsignup", method = RequestMethod.POST)
	public String employerSubmitSignUp(Model model,HttpSession session,Employer employer) throws Exception
	{
		
		boolean success=false;
		if(!userDao.checkDuplicateUser(employer.getEmailId()))
		{
			employer.setRole("Employer");
			success=userDao.saveUser(employer);
		}
		else
		{
			model.addAttribute("messageType","failure");
			model.addAttribute("message","Sorry Employeer  Already Present");
			return "regionFailed_message";
		}
		if(success)
		{
			session.setAttribute("employer", employer);
			model.addAttribute("messageType","success");
			model.addAttribute("message","Congratulations Employee Added Successfully");
			return "employer_message";
		}
		else
		{
			model.addAttribute("messageType","failure");
			model.addAttribute("message","Employer Addition Failed");
			return "regionFailed_message";
		}
	}
	
	// Redirecting to Employer profile Submit Page
	@RequestMapping(value = "/updateEmployerProfile", method = RequestMethod.GET)
	public String updateEmployerProfile(Model model,HttpSession session)
	{	
		
		Employer emp=(Employer)session.getAttribute("employer");
		if(emp==null)
		{
			model.addAttribute("messageType","failure");
			model.addAttribute("message","Sorry Employer Not Found!");
			return "employer_layout.Message";	
		}
		model.addAttribute("employer",emp);
		return "employer_updatemyprofile";
	}
	
	//updating the employer profile
	@RequestMapping(value = "/updateEmployerProfileSubmit", method = RequestMethod.POST)
	public String updateEmployerProfileSubmit(Model model,@ModelAttribute("employer") Employer employer,HttpServletRequest request)
	{
		User user=(User)employer;
		boolean success=userDao.saveUser(user);
		if(success)
		{
			model.addAttribute("messageType","success");
			model.addAttribute("message","Congratulations Employer Updated Successfully");
			return "employer_message";
		}
		else
		{
			model.addAttribute("messageType","failure");
			model.addAttribute("message","Sorry Employee Updation Failed");
			return "employer_message";
		}
	}
	
	
	//Logout Screen redirection
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String employerLogout(Model model,HttpServletRequest request)
	{
		request.getSession().invalidate();
		return "index";
	}
	
	//Admin adding new emplyees
	@RequestMapping(value = "/addEmployee", method = RequestMethod.GET)
	public String newEmployeeAdd(Model model) throws Exception
	{
		Employee emp= new Employee();
		model.addAttribute("employee",emp);
		return "employer_addemployee";
	}
	
	//Submiting added employees
	@RequestMapping(value = "/addEmployeeSubmit", method = RequestMethod.POST)
	public String newEmployeeAddSubmit(Model model,Employee employee,HttpSession session) throws Exception
	{
		boolean success=false;
		if(!userDao.checkDuplicateUser(employee.getEmailId()))
		{
			Employer emp=(Employer)session.getAttribute("employer");
			employee.setRole("Employee");
			employee.setCreationdate(new UpdateDate().toString());
			employee.setEmployer(emp);
			emp.setRole("Employer");
			success=userDao.saveUser(employee);
			session.setAttribute("employer",emp);
			if(success)
			{
				model.addAttribute("messageType","success");
				model.addAttribute("message","Congratulations Employee Added Successfully");
				return "employer_message";
			}
			else
			{
				model.addAttribute("messageType","failure");
				model.addAttribute("message","Sorry Employee Addition Failed");
				return "employer_message";
			}
		}
		else
		{
			model.addAttribute("messageType","info");
			model.addAttribute("message","Sorry User Account Already Available.");
			return "employer_message";
		}
		
	}
	
	//Update and manage employees
	@RequestMapping(value = "/manageEmployees", method = RequestMethod.GET)
	public String employeesManager(Model model,Employee employee,HttpSession session) throws Exception
	{
		Employer emp=(Employer)session.getAttribute("employer");
		int id= emp.getId();
		emp=(Employer) userDao.findUserById(id);
		model.addAttribute("employer",emp);
		return "employer_manageemployees";
	}
	
	
	//DEletion of employees
	
//	@RequestMapping(value = "/employeeDeletion", method = RequestMethod.POST)
//	public String employeeDeletion(Model model,HttpServletRequest request) throws Exception
//	{
//		String delemployees[]= request.getParameterValues("deleteselected");
//		
//		if(delemployees.length>0)
//		{
//			boolean success=employerDao.removeEmployees(delemployees);
//			if(!success)
//			{
//				model.addAttribute("messageType","failure");
//				model.addAttribute("message","Sorry employee Deletion Failed");
//				return "employer_message";
//			}
//		}
//		Employer employer=(Employer)request.getSession().getAttribute("employer");
//		model.addAttribute("employer",employer);
//		return "employer_manageemployees";
//	}
	//Ajax function call  to delete
	@RequestMapping(value = "/employeeDeletion", method = RequestMethod.GET, produces = MediaType.TEXT_PLAIN_VALUE)
	public @ResponseBody String employeeDeletion(Model model,HttpServletRequest request) throws Exception
	{
		String delemployees= request.getParameter("aid");
		
		
			boolean success=employerDao.removeEmployees(delemployees);
			if(!success)
			{
				model.addAttribute("messageType","failure");
				model.addAttribute("message","Sorry employee Deletion Failed");
				return "employer_message";
			}

		return delemployees;
	}
	
	
	//updating employees
	@RequestMapping(value = "/employeeUpdation", method = RequestMethod.GET)
	public String employeeUpdation(Model model,HttpServletRequest request)
	{
		String empId= request.getParameter("id");
		Employee emp=null;
		try
		{
			emp= employeeDao.searchEmployeeById(Integer.parseInt(empId));
		}
		catch(Exception ex)
		{
			model.addAttribute("messageType","failure");
			model.addAttribute("message","Sorry Error Fetching Employee.");
			return "employer_message";
		}
		
		if(emp==null)
		{
			model.addAttribute("messageType","failure");
			model.addAttribute("message","Sorry Error Fetching Employee.");
			return "employer_message";
		}
		model.addAttribute("employee",emp);
		
		return "employer_updateemployees";
	}
	
	//Submition of updated employee
	
	@RequestMapping(value = "/submitUpdatedEmployee", method = RequestMethod.POST)
	public String submitUpdatedEmployee(Model model,Employee employee,HttpServletRequest request)
	{
		Employer emp=(Employer) request.getSession().getAttribute("employer");
		employee.setEmployer(emp);
		boolean success=userDao.saveUser(employee);
		if(success)
		{
			model.addAttribute("messageType","success");
			model.addAttribute("message","Congratulations Employee Updated Successfully");
			return "employer_message";
		}
		else
		{
			model.addAttribute("messageType","failure");
			model.addAttribute("message","Sorry Employee Updation Failed");
			return "employer_message";
		}
	}
	
	
	
}

