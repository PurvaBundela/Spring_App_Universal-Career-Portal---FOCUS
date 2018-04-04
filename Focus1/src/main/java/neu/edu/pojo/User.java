package neu.edu.pojo;

import neu.edu.pojo.Address;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;



@Entity
@Table(name = "USER")
@Inheritance(strategy= InheritanceType.JOINED)
public class User implements Serializable{
	private static final long serialVersionUID = 1L;
	private int id;
	private Name name;
	private String emailId;
	private String password;
	private String role;
	private String nameOfCompany;
	private String creationDate;
	private Address address;
	
	public User()
	{
		address=new Address();
	}
	
	@Id
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	@Column(name = "ID", unique = true, nullable = false)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "EMAILID")
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	@Column(name="PASSWORD")	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	@Column(name = "ROLE")
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@Column(name = "NAMEOFCOMPANY")
	public String getCompanyName() {
		return nameOfCompany;
	}
	public void setCompanyName(String nameOfCompany) {
		this.nameOfCompany = nameOfCompany;
	}
	
	@Column(name = "CREATIONDATE")
	public String getDateCreated() {
		return creationDate;
	}
	public void setDateCreated(String creationDate) {
		this.creationDate = creationDate;
	}
	
	@Column(name = "NAME")
	public Name getName() {
		return name;
	}
	public void setName(Name name) {
		this.name = name;
	}
	
	@OneToOne(fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinColumn(name="ADDRESS_FK")
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
}
