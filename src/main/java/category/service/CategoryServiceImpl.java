package category.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import category.dao.CategoryDAO;
import furniture.dao.FurnitureDAO;

@Service
public class CategoryServiceImpl implements CategoryService
{

	@Autowired
	private HttpSession session;
	@Autowired
	private HttpServletResponse response;
	@Autowired
	private HttpServletRequest request;
	@Autowired
	private CategoryDAO categoryDAO;
	


	
}
