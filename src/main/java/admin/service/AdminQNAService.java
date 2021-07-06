package admin.service;

import java.util.List;
import java.util.Map;

import profile.bean.AskDTO;
import profile.bean.AskPaging;

public interface AdminQNAService {

	List<AskDTO> getAskList(Map<String, String> map);

	AskPaging askPaging(Map<String, String> map);

}
