package admin.dao;

import java.util.List;
import java.util.Map;

import profile.bean.AskDTO;

public interface AdminQNADAO {

	List<AskDTO> getAskList(Map<String, String> map);

	int getAskTotalA(Map<String, String> map);

}
