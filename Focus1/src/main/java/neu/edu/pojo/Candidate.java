package neu.edu.pojo;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

@Entity
@Table(name = "APPLICANT")
@PrimaryKeyJoinColumn(name="USER_ID")
public class Candidate extends User implements Serializable{
	private static final long serialVersionUID = 1L;
	private String phone;
	private String resumePath;
	private String creationdate;
	
	private Experience Exp;
	private EducationalDetails educationDetails;
	private Set<Application> applications;
	
	@Column(name = "PHONE")
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	@Column(name = "RESUME")
	public String getResumePath() {
		return resumePath;
	}
	
	public void setResumePath(String resumePath) {
		this.resumePath = resumePath;
	}	
	
	@Column(name = "CREATIONDATE")
	public String getCreationdate() {
		return creationdate;
	}
	public void setCreationdate(String creationdate) {
		this.creationdate = creationdate;
	}
	
	@OneToOne(mappedBy="user",fetch=FetchType.EAGER)
	
	public Experience getExp() {
		return Exp;
	}
	public void setExp(Experience exp) {
		Exp = exp;
	}
	@OneToOne(mappedBy="user",fetch=FetchType.EAGER)
	public EducationalDetails getEducationDetails() {
		return educationDetails;
	}
	
	public void setEducationDetails(EducationalDetails educationDetails) {
		this.educationDetails = educationDetails;
	}
	
	@OneToMany(mappedBy="user",fetch=FetchType.EAGER)
	public Set<Application> getApplications() {
		return applications;
	}
	
	public void setApplications(Set<Application> applications) {
		this.applications = applications;
	}
	
	
}
