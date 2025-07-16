package Buy;

public class Login {
	
	private String Email;
	private String password;
	

	public Login( String Email, String password) {
		super();
		this.Email = Email;
		this.password = password;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String Email) {
		this.Email = Email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public Login() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String toString() {
return "Login :"+Email+" "+password+"]";
	}
	

}
