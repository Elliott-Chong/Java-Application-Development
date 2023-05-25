package Utils;

import java.sql.*;

public class Database {
	public static Connection connect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String connURL = "jdbc:mysql://localhost:3306/school?user=root&password=password&serverTimezone=UTC";
			Connection conn = DriverManager.getConnection(connURL);
			return conn;
		} catch (Exception e) {
			System.err.println("DB Error :" + e);
			return null;
		}
	}

	public static ResultSet executeSQL(PreparedStatement ps) {
		try {
			ResultSet rs = ps.executeQuery();
			return rs;
		} catch (Exception e) {
			return null;
		}
	}
}
