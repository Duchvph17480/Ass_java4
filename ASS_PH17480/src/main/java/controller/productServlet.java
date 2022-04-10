package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.productDao;
import entities.Product;

/**
 * Servlet implementation class productServlet
 */
@WebServlet({"/product/index",
	"/product/store",
	"/product/create",
	"/product/edit",
	"/product/update",
	"/product/delete",
})
public class productServlet extends HttpServlet {
	private productDao proDao;
    public productServlet() {
    	this.proDao= new productDao();
       
       
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		if (uri.contains("index")) {
			this.index(request, response);
		} else if (uri.contains("create")) {
			this.create(request, response);
		} else if (uri.contains("edit")) {
			this.edit(request, response);
		} else if (uri.contains("delete")) {
			try {
				this.delete(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	private void delete(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
	private void edit(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
	private void create(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
	private void index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Product> ds = this.proDao.all();
		request.setAttribute("ds", ds);
		request.setAttribute("view", "/views/admin/product/index.jsp");
		request.getRequestDispatcher("/views/layout.jsp").forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		if (uri.contains("store")) {
			this.store(request, response);
		} else if (uri.contains("update")) {
			this.update(request, response);
		}
	}
	private void update(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
	private void store(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

}
