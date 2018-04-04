package neu.edu.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import neu.edu.dao.*;
import neu.edu.pojo.*;



@Controller
public class UserLoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserLoginController.class);
	
	
@Autowired
private UserDao userDao;
	
@Autowired
private EmployerDao employerDao;

@Autowired
private EmployeeDao employeeDao;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return "index";
	}
	@RequestMapping(value = "/submitlogin", method = RequestMethod.POST)
	public String loginsubmit(Model model,HttpServletRequest request) throws Exception {
		String userType=request.getParameter("userType");
		String emailid=request.getParameter("emailid");
		String password=request.getParameter("password");
		User candidate=(User)userDao.userLogin(emailid, password);
		if(userType.equalsIgnoreCase("candidate"))
		{
			//Candidate candidate=(Candidate)userDao.userLogin(emailid, password);
			if(candidate.getRole().equalsIgnoreCase("candidate"))
			{
				model.addAttribute("candidate",candidate);
				request.getSession().setAttribute("candidate", candidate);
				return "candidate_login";
			}
			else
			{
				return "invalidLogin";
			}
			
		}
		else if(userType.equalsIgnoreCase("employer"))
		{
			Employer employer=employerDao.employerLogin(emailid, password);
			if(employer==null)
			{
				return "invalidLogin";
			}
			model.addAttribute("employer",employer);
			request.getSession().setAttribute("employer", employer);
			return "employer_login";
		}
		
		else if(userType.equalsIgnoreCase("employee"))
		{
			Employee employee=(Employee)employeeDao.employeeLogin(emailid, password);
			if(employee!=null)
			{
				if(employee.getDepartment().equalsIgnoreCase("hr"))
				{
					model.addAttribute("e",employee);
					request.getSession().setAttribute("e", employee);
					return "employee_login";
				}
			}
			else
			{
				return "invalidLogin";	
			}
		}
		return "index";
	}
	@RequestMapping(value = "/invalidlogin", method = RequestMethod.GET)
	public String invalidLogin(Model model,HttpServletRequest request) throws Exception {
		return "invalidLogin";
	}
}
