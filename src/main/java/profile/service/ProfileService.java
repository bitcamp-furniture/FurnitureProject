package profile.service;

import java.util.List;

import profile.bean.AskDTO;
import profile.bean.AskPaging;

public interface ProfileService {

	public void askWrite(AskDTO askDTO);

	public List<AskDTO> getAskList(String pg);

	public AskPaging askPaging(String pg);

}
