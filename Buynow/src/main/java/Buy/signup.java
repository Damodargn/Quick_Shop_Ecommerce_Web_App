package Buy;

public class signup {
	
	private String Username;
	private String Email;
	private String Password;
	private String Phonenumber;
	private String Address;
	
	
	public signup(String Username, String Email, String Password, String Phonenumber, String Address) {
		super();
		this.Username = Username;
		this.Email = Email;
		this.Password = Password;
		this.Phonenumber = Phonenumber;
		this.Address = Address;
	}


	public String getUsername() {
		return Username;
	}


	public void setUsername(String Username) {
		this.Username = Username;
	}


	public String getEmail() {
		return Email;
	}


	public void setEmail(String Email) {
		this.Email = Email;
	}


	public String getPassword() {
		return Password;
	}


	public void setPassword(String Password) {
		this.Password = Password;
	}


	public String getPhonenumber() {
		return Phonenumber;
	}


	public void setPhonenumber(String Phonenumber) {
		this.Phonenumber = Phonenumber;
	}


	public String getAddress() {
		return Address;
	}


	public void setAddress(String Address) {
		this.Address = Address;
	}


	public signup() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String toString() {
		return "Signup : "+Username+" "+Email+" "+Address+"]";
	}

}
