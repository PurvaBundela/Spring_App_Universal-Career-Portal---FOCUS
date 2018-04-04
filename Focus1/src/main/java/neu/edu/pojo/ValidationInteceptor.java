package neu.edu.pojo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import neu.edu.pojo.*;

public class ValidationInteceptor extends HandlerInterceptorAdapter
{
	 @Override
	 public boolean preHandle(HttpServletRequest request,
	   HttpServletResponse response, Object handler) throws Exception
	 {
	  String uri = request.getRequestURI();
	  if(!uri.endsWith("/focus/") && !uri.endsWith("logout") 
			  &&!uri.contains("submitlogin") && !uri.endsWith("invalidLogin")
			  &&!uri.endsWith("candidatesignup") && !uri.endsWith("signupEmployer")
			  &&!uri.endsWith("Candidatesubmitsignup") && !uri.endsWith("employersubmitsignup"))
	  {
		  Employer employer;
		  Candidate candidate;
		  Employee emp;
		   try
		   {
			   employer = (Employer) request.getSession().getAttribute("employer"); 
		   }
		   catch(Exception ex)
		   {
			   employer=null;
		   }
		   try
		   {
			   candidate=(Candidate) request.getSession().getAttribute("candidate"); 
		   }
		   catch(Exception ex)
		   {
			   candidate=null;
		   }
		   try
		   {
			   emp=(Employee) request.getSession().getAttribute("e"); 
		   }
		   catch(Exception ex)
		   {
			   emp=null;
		   }
		   if(employer == null && candidate==null && emp==null)
		   {
		    response.sendRedirect("/focus/invalidLogin");
		    return false;
		   }   
	  }
	  return true;
	 }
	}
