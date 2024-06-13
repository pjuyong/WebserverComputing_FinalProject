package mvc.controller;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mvc.model.BoardDAO;
import mvc.model.BoardDTO;
 
public class BoardController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    static final int LISTCOUNT = 5;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String RequestURI = request.getRequestURI();
        String contextPath = request.getContextPath();
        String command = RequestURI.substring(contextPath.length());
        
        response.setContentType("text/html; charset=utf-8");
        request.setCharacterEncoding("utf-8");

        if (command.equals("/BoardListAction.do")) { // 등록된 글 목록 페이지 출력하기
            requestBoardList(request);
            RequestDispatcher rd = request.getRequestDispatcher("./board/list.jsp");
            rd.forward(request, response);
        }
    }

    // 등록된 글 목록 가져오기
    public void requestBoardList(HttpServletRequest request) {
        BoardDAO dao = BoardDAO.getInstance();
        ArrayList<BoardDTO> boardlist = new ArrayList<BoardDTO>();

        int pageNum = 1;
        int limit = LISTCOUNT;

        if (request.getParameter("pageNum") != null)
            pageNum = Integer.parseInt(request.getParameter("pageNum"));

        String items = request.getParameter("items");
        String text = request.getParameter("text");

        int total_record = dao.getListCount(items, text);
        boardlist = dao.getBoardList(pageNum, limit, items, text);

        int total_page;

        if (total_record % limit == 0) {
            total_page = total_record / limit;
            Math.floor(total_page);
        } else {
            total_page = total_record / limit;
            Math.floor(total_page);
            total_page = total_page + 1;
        }

        request.setAttribute("pageNum", pageNum);
        request.setAttribute("total_page", total_page);
        request.setAttribute("total_record", total_record);
        request.setAttribute("boardlist", boardlist);
    }
}
