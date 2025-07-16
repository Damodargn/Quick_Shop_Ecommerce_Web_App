package Buy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class signupdaoimpl implements signupdao{
	
	private static String url="jdbc:mysql://localhost:3306/ecommerce";
	private static String un="root";
	private static String pwd="damodargn77";
	private static Connection con;

	private String query="INSERT into `signup` (`Username`,`Email`,`Password`,`Phonenumber`,`Address`)"
			+ "values (?,?,?,?,?) ";

	@Override
	public String addSignup(signup sign) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url,un,pwd);
			PreparedStatement pstmt = con.prepareStatement(query);

			
			pstmt.setString(1,sign.getUsername());
			pstmt.setString(2,sign.getEmail());
			pstmt.setString(3,sign.getPassword());
			pstmt.setString(4,sign.getPhonenumber());
			pstmt.setString(5,sign.getAddress());

			int res = pstmt.executeUpdate();
			
			System.out.println(res);


		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return query;
	}
}
