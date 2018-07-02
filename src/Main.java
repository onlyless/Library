import java.sql.*;

public class Main {

    public static void main(String[] args) {
        Connection connection = null;
        Statement statement = null;
        try {

            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/pro1", "root", "root");

            statement = connection.createStatement();
            String sql = "SELECT * FROM user;";
            ResultSet resultSet = statement.executeQuery(sql);
            while(resultSet.next()) {
                System.out.printf("%3s|%20s|%10s|\n", resultSet.getString("id"), resultSet.getString("username"), resultSet.getString("password"));
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }
}
