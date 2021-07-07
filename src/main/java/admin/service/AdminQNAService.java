package admin.service;

import java.util.List;
import java.util.Map;

import profile.bean.AskDTO;
import profile.bean.AskPaging;

public interface AdminQNAService {

	public List<AskDTO> getAskList(Map<String, String> map);

	public AskPaging askPaging(Map<String, String> map);

	public AskDTO askAnswer(String seq);

	public void askAnswerDone(Map<String, String> map);

}
