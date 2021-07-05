package admin.service;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import admin.bean.adminReviewDTO;
import admin.bean.adminReviewPaging;
import admin.bean.adminReviewSelectListPaging;

@Controller
@RequestMapping(value="adminreviewService")
public interface adminReviewService
{
	List<adminReviewDTO> adminReviewList(String pg);

	adminReviewPaging adminreviewPaging(String pg);

	void adminReviewListDelete(String[] check);

	List<adminReviewDTO> adminreviewASCList(String pg, String sort1);

	List<adminReviewDTO> adminreviewDESCtList(String pg, String sort1);

	adminReviewSelectListPaging adminReviewSelectList(String pg, String sort1);
}
