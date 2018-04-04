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
@Table(name = "EXPERIENCE")
public class Experience implements Serializable{
	private static final long serialVersionUID = 1L;
	private int id;
	private String title;
	private String employerName;
	private String startDate;
	private String endDate;
	private String responsibilities;
	private String isCurrentlyEmployeed;
	private String creationdate;
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
	
	@Column(name = "TITLE")
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getEmployerName() {
		return employerName;
	}
	public void setEmployerName(String employerName) {
		this.employerName = employerName;
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
	@Column(name = "RESPONSIBILITIES")
	public String getResponsibilities() {
		return responsibilities;
	}
	public void setResponsibilities(String responsibilities) {
		this.responsibilities = responsibilities;
	}
	@Column(name = "ISCURRENTLYEMPLOYEED")
	public String getIsCurrentlyEmployeed() {
		return isCurrentlyEmployeed;
	}
	public void setIsCurrentlyEmployeed(String isCurrentlyEmployeed) {
		this.isCurrentlyEmployeed = isCurrentlyEmployeed;
	}
	@Column(name = "CREATIONDATE")
	public String getCreationdate() {
		return creationdate;
	}
	public void setCreationdate(String creationdate) {
		this.creationdate = creationdate;
	}
	
	@ManyToOne
	@JoinColumn(name="USER_EXP_FKEY")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
}
