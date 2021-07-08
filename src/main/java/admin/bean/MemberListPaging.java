package admin.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class MemberListPaging {
	private int currentPage;//현재페이지
	private int pageBlock;//[이전][1][2][3][다음]
	private int pageSize;//1페이지당 5개씩
	private int totalA;//총글수
	private StringBuffer pagingHTML;
	
	public void makePagingHTML(){
		pagingHTML = new StringBuffer();
		
		int totalP = (totalA+pageSize-1)/pageSize; //총페이지수
		
		int startPage = (currentPage-1) / pageBlock * pageBlock + 1;
		
		
		int endPage = startPage + pageBlock - 1;
		if(endPage > totalP) endPage = totalP;
		
		if(startPage > pageBlock)
			pagingHTML.append("<span id='paging' onclick='memberListPaging("+(startPage-1)+")'>◀</span>");
		
		for(int i=startPage; i<=endPage; i++) {
			if(i==currentPage) {
				pagingHTML.append("<span id='currentPaging' onclick='memberListPaging("+i+")'>"+i+"</span>");
			}else {
				pagingHTML.append("<span id='paging' onclick='memberListPaging("+i+")'>"+i+"</span>");
			}
		}//for
		
		if(endPage < totalP)
			pagingHTML.append("<span id='paging' onclick='memberListPaging("+(endPage+1)+")'>▶</span>");
	}

}
