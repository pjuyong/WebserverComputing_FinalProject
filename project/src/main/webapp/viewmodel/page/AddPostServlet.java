import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addPost")
public class AddPostServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String pwd = request.getParameter("pwd");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String content = request.getParameter("content");
        
        String url = "jdbc:mysql://localhost:3306/yourDatabaseName";
        String user = "yourUsername";
        String password = "yourPassword";
        
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);
            String sql = "INSERT INTO BOARD (NAME, PWD, EMAIL, SUBJECT, CONTENT, CREATED) VALUES (?, ?, ?, ?, ?, NOW())";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, pwd);
            pstmt.setString(3, email);
            pstmt.setString(4, subject);
            pstmt.setString(5, content);
            
            int result = pstmt.executeUpdate();
            if (result > 0) {
                response.sendRedirect("board.jsp"); // 성공 시 게시판 페이지로 리디렉션
            } else {
                response.getWriter().write("글 작성에 실패했습니다.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("데이터베이스 연결 중 오류가 발생했습니다.");
        } finally {
            if (pstmt != null) try { pstmt.close(); } catch (Exception e) { e.printStackTrace(); }
            if (conn != null) try { conn.close(); } catch (Exception e) { e.printStackTrace(); }
        }
    }
}
