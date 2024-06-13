package mvc.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import mvc.database.DBconnection;

public class BoardDAO {
    private static BoardDAO instance;

    private BoardDAO() {}

    public static BoardDAO getInstance() {
        if (instance == null) {
            instance = new BoardDAO();
        }
        return instance;
    }

    // 전체 게시글 수 반환
    public int getListCount(String items, String text) {
        int x = 0;
        String sql;

        if (items == null && text == null) {
            sql = "SELECT count(*) FROM board";
        } else {
            sql = "SELECT count(*) FROM board WHERE " + items + " LIKE ?";
        }

        try (Connection conn = DBconnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            if (items != null && text != null) {
                pstmt.setString(1, "%" + text + "%");
            }

            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    x = rs.getInt(1);
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return x;
    }

    // 게시글 목록 반환
    public List<BoardDTO> getBoardList(int page, int limit, String items, String text) {
        List<BoardDTO> list = new ArrayList<>();
        int start = (page - 1) * limit;
        String sql;

        if (items == null && text == null) {
            sql = "SELECT * FROM board ORDER BY num DESC LIMIT ?, ?";
        } else {
            sql = "SELECT * FROM board WHERE " + items + " LIKE ? ORDER BY num DESC LIMIT ?, ?";
        }

        try (Connection conn = DBconnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            if (items != null && text != null) {
                pstmt.setString(1, "%" + text + "%");
                pstmt.setInt(2, start);
                pstmt.setInt(3, limit);
            } else {
                pstmt.setInt(1, start);
                pstmt.setInt(2, limit);
            }

            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    BoardDTO board = new BoardDTO();
                    board.setNum(rs.getInt("num"));
                    board.setId(rs.getString("id"));
                    board.setName(rs.getString("name"));
                    board.setSubject(rs.getString("subject"));
                    board.setContent(rs.getString("content"));
                    board.setRegist_day(rs.getString("regist_day"));
                    board.setHit(rs.getInt("hit"));
                    board.setIp(rs.getString("ip"));
                    list.add(board);
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return list;
    }
}
