package neu.edu.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "APPLICATION")
public class Application implements Serializable{
	private static final long serialVersionUID = 1L;
	private int id;
	
	
	private String appStatus;
	private String dateAppStatus;
	private String creationdate;
	private JobInfo job;
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
	
	@ManyToOne
	@JoinColumn(name="USER_APPLICATION_FK")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "JOB_ID", nullable = false)
	public JobInfo getJob() {
		return job;
	}
	public void setJob(JobInfo job) {
		this.job = job;
	}
	
	@Column(name = "APPSTATUS")
	public String getAppStatus() {
		return appStatus;
	}
	public void setAppStatus(String appStatus) {
		this.appStatus = appStatus;
	}
	
	
	@Column(name = "DATEAPPSTATUS")
	public String getDateAppStatus() {
		return dateAppStatus;
	}
	public void setDateAppStatus(String dateAppStatus) {
		this.dateAppStatus = dateAppStatus;
	}
	public String getCreationdate() {
		return creationdate;
	}
	public void setCreationdate(String creationdate) {
		this.creationdate = creationdate;
	}
	
	
	
}
