package neu.edu.pojo;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class Name {

	private String firstName;

    private String middleName;

    private String lastName;
    
    @Column(name = "FIRSTNAME")
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	@Column(name = "MIDDLENAME")
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	
	@Column(name = "LASTNAME")
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
}
