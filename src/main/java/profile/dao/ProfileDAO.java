package profile.dao;

import java.util.List;
import java.util.Map;

import profile.bean.AskDTO;

public interface ProfileDAO {

	public void askWrite(AskDTO askDTO);

	public List<AskDTO> getAskList(Map<String, Integer> map);

	public int getTotalA();

}
