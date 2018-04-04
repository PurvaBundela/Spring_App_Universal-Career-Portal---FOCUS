package neu.edu.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "EDUCATIONALDETAILS")
public class EducationalDetails implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private int id;
	private String collegeName;
	private String major;
	private String degree;
	private String gpa;
	private String startDate;
	private String endDate;
	private String isGraduated;
	private User user;
	
	@Id
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	@Column(name = "ID", unique = true, nullable = false)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column(name = "COLLEGELNAME")
	public String getCollegeName() {
		return collegeName;
	}
	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}
	@Column(name = "MAJOR")
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	@Column(name = "DEGREE")
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	@Column(name = "GPA")
	public String getGpa() {
		return gpa;
	}
	public void setGpa(String gpa) {
		this.gpa = gpa;
	}
	@Column(name = "STARTDATE")
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	@Column(name = "ENDDATE")
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	@Column(name = "ISGRADUATED")
	public String getIsGraduated() {
		return isGraduated;
	}
	public void setIsGraduated(String isGraduated) {
		this.isGraduated = isGraduated;
	}
	
	@ManyToOne
	@JoinColumn(name="USER_EDUCATION_FKEY")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
}
