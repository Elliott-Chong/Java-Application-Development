package dbaccess;

import java.sql.*;

public class UserDAO {
	public User getUserDetails(String userid) throws SQLException {
		User uBean = null;
		Connection conn = null;

		try {
			conn = DBConnection.getConnection();
			String sqlStr = "SELECT * FROM user_details WHERE userid = ?";
			PreparedStatement pstmt = conn.prepareStatement(sqlStr);
			pstmt.setString(1, userid);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				uBean = new User();
				uBean.setUserid(rs.getString("userid"));
				uBean.setAge(rs.getInt("age"));
				uBean.setGender(rs.getString("gender"));
				System.out.print("......done writing to bean.......");
			}
		} catch (Exception e) {
			System.out.print("......userDetailsDB:" + e);
		} finally {
			conn.close();
		}
		return uBean;
	}

	public int insertUser(String userid, int age, String gender) throws SQLException, ClassNotFoundException {
		Connection conn = null;
		int nrow = 0;
		try {
			conn = DBConnection.getConnection();
			String sqlStr = "INSERT INTO user_details VALUES (?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sqlStr);
			pstmt.setString(1, userid);
			pstmt.setInt(2, age);
			pstmt.setString(3, gender);
			nrow = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return nrow;
	}
}
