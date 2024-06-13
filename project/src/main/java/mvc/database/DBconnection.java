package mvc.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {
    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        Connection conn = null;

        String url = "jdbc:mysql://localhost:3306/seongdb";
        String user = "root";
        String password = "12rhtmdqja";

        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);

        return conn;
    }
}
