package admin.dao;

import java.util.List;
import java.util.Map;

import profile.bean.AskDTO;

public interface AdminQNADAO {

	public List<AskDTO> getAskList(Map<String, String> map);

	public int getAskTotalA(Map<String, String> map);

	public AskDTO askAnswer(String seq);

	public void askAnswerDone(Map<String, String> map);

}
