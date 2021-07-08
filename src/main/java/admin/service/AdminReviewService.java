package admin.service;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.AdminReviewPaging;
import admin.bean.AdminReviewSelectListPaging;
import furniture.bean.ReviewDTO;

@Controller
@RequestMapping(value="adminreviewService")
public interface AdminReviewService
{
	List<ReviewDTO> adminReviewList(String pg);

	AdminReviewPaging adminreviewPaging(String pg);

	void adminReviewListDelete(String[] check);

	List<ReviewDTO> adminreviewASCList(String pg, String sort1);

	List<ReviewDTO> adminreviewDESCtList(String pg, String sort1);

	AdminReviewSelectListPaging adminReviewSelectList(String pg, String sort1);
}
