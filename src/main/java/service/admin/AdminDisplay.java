package service.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DisplayDao;
import model.Display;
import service.CommandProcess;

public class AdminDisplay implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		final int ROW_PER_PAGE = 10;
		final int PAGE_PER_BLOCK = 5;
		
		String pageNum = request.getParameter("pageNum");
		System.out.println(pageNum);
		if (pageNum == null || pageNum.equals("")) {
			pageNum="1";
		}
		int currentPage = Integer.parseInt(pageNum);
		
		DisplayDao dd = DisplayDao.getInstance();
		int total = dd.getTotal();
		
		int startRow = (currentPage-1)*ROW_PER_PAGE+1;
		int endRow = startRow + ROW_PER_PAGE-1;
		
		List<Display> list = dd.adminlist(startRow, endRow);
		
		int totalPage = (int)Math.ceil((double)total/ROW_PER_PAGE);
		int startPage = currentPage - (currentPage-1)%PAGE_PER_BLOCK;
		int endPage = startPage+PAGE_PER_BLOCK-1;
		if(endPage>totalPage) endPage = totalPage;
		
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("PAGE_PER_BLOCK", PAGE_PER_BLOCK);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("list", list);
		
		return "adminDisplay";
	}

}
