package admin.service;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import admin.bean.adminReviewPaging;
import admin.bean.adminReviewSelectListPaging;
import furniture.bean.ReviewDTO;

@Controller
@RequestMapping(value="adminreviewService")
public interface adminReviewService
{
	List<ReviewDTO> adminReviewList(String pg);

	adminReviewPaging adminreviewPaging(String pg);

	void adminReviewListDelete(String[] check);

	List<ReviewDTO> adminreviewASCList(String pg, String sort1);

	List<ReviewDTO> adminreviewDESCtList(String pg, String sort1);

	adminReviewSelectListPaging adminReviewSelectList(String pg, String sort1);
}
