package neu.edu.pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "JOBDETAILS")
public class JobInfo implements Serializable{
	private static final long serialVersionUID = 1L;
	private int id;
	private String title;
	private String type;
	private String description;
	private String skills;
	private int positions;
	private String hourlyWage;
	private String city;
	private String state;
	private String country;
	private String from;
	private String to;
	private String creationdate;
	private User user;			//Person who posted the job
	private Employer employer;		//Employer id
	private Set<Application> applications;
	
	@Id
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	@Column(name = "ID", unique = true, nullable = false)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@OneToOne
	@JoinColumn(name="EMPLOYEE_FK")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	@OneToOne
	@JoinColumn(name="EMPLOYER_FK")
	public Employer getEmployer() {
		return employer;
	}
	public void setEmployer(Employer employer) {
		this.employer = employer;
	}
	
	
	@Column(name = "DESCRIPTION")
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	@Column(name = "SKILLS")
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	
	@Column(name = "HOURLYWAGE")
	public String getHourlyWage() {
		return hourlyWage;
	}
	public void setHourlyWage(String hourlyWage) {
		this.hourlyWage = hourlyWage;
	}
	
	@Column(name = "POSITIONS")
	public int getPositions() {
		return positions;
	}
	public void setPositions(int positions) {
		this.positions = positions;
	}
	
	
	@Column(name = "CITY")
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	@Column(name = "STATE")
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Column(name = "COUNTRY")
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	
	@Column(name = "JOBTITLE")
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	@Column(name = "DURATIONFROM")
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	
	@Column(name = "DURATIONTO")
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	@Column(name = "CREATIONDATE")
	public String getCreationdate() {
		return creationdate;
	}
	public void setCreationdate(String creationdate) {
		this.creationdate = creationdate;
	}
	@OneToMany(mappedBy="job",fetch=FetchType.EAGER)
	public Set<Application> getApplications() {
		return applications;
	}
	public void setApplications(Set<Application> applications) {
		this.applications = applications;
	}
	
	
	
}

