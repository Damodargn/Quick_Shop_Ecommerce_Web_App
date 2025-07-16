package Buy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class logindaoimpl implements logindao {

    private static final String url = "jdbc:mysql://localhost:3306/ecommerce";
    private static final String un = "root";
    private static final String pwd = "damodargn77";

    private Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(url, un, pwd);
    }

    @Override
    public boolean loginCheck(String email, String password) {
        boolean status = false;

        String query = "SELECT * FROM login WHERE Email = ? AND Password = ?";

        try (Connection con = getConnection();
             PreparedStatement pstmt = con.prepareStatement(query)) {

            pstmt.setString(1, email);
            pstmt.setString(2, password);

            ResultSet rs = pstmt.executeQuery();
            status = rs.next(); 

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return status;
    }

    @Override
    public String addAdmin(Login log) {
        return null;  
    }
}
