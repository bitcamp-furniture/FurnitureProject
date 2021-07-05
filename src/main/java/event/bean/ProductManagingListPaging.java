package event.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ProductManagingListPaging {
	private int flag; // 함수 이름을 결정짓는...  1(가격높은순), 2(가격낮은순), 3(평점높은순), 4(평점낮은순) ... flag에 값이 있으면 
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
		
		
		
		// flag에 따라서 함수 이름을 변경하는 if문 만들기
		// 0이면 일반
		
		
		if(flag == 0) {
			
			if(startPage > pageBlock)
				pagingHTML.append("<span id='paging' onclick='getProductManagingList("+(startPage-1)+")'>◀</span>");
			
			for(int i=startPage; i<=endPage; i++) {
				if(i==currentPage) {
					pagingHTML.append("<span id='currentPaging' onclick='getProductManagingList("+i+")'>"+i+"</span>");
				}else {
					pagingHTML.append("<span id='paging' onclick='getProductManagingList("+i+")'>"+i+"</span>");
				}
			}//for
			
			if(endPage < totalP)
				pagingHTML.append("<span id='paging' onclick='getProductManagingList("+(endPage+1)+")'>▶</span>");
			
			
			
		}else {
			
			
			
			if(startPage > pageBlock)
				pagingHTML.append("<span id='paging' onclick='sortProductList("+(startPage-1)+")'>◀</span>");
			
			for(int i=startPage; i<=endPage; i++) {
				if(i==currentPage) {
					pagingHTML.append("<span id='currentPaging' onclick='sortProductList("+i+")'>"+i+"</span>");
				}else {
					pagingHTML.append("<span id='paging' onclick='sortProductList("+i+")'>"+i+"</span>");
				}
			}//for
			
			if(endPage < totalP)
				pagingHTML.append("<span id='paging' onclick='sortProductList("+(endPage+1)+")'>▶</span>");
			
		}
	}

	

		
	
}
