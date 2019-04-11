package org.weinan.loveroom.serviece;

import java.util.List;

import org.weinan.loveroom.domain.Document;
import org.weinan.loveroom.domain.LeavingMessage;
import org.weinan.loveroom.domain.Picture;
import org.weinan.loveroom.domain.User;
import org.weinan.loveroom.exception.LoveRoomException;
import org.weinan.loveroom.vo.DocumentBean;
import org.weinan.loveroom.vo.LeavingMessageBean;
import org.weinan.loveroom.vo.PictureBean;

public interface MingNan {

	public static final int LOGIN_SUC = 0;
	public static final int LOGIN_FAIL = 1;
	
	int validLogin(User user);
	void addPictrue(Picture picture,String username)throws LoveRoomException;
	void addDocument(Document document,String username)throws LoveRoomException;
	void addLeavingMessage(LeavingMessage leavingMessage,String username) throws LoveRoomException;
	List<DocumentBean> docByUser(String user)throws LoveRoomException;
	List<PictureBean> picByUser(String user)throws LoveRoomException;
	List<LeavingMessageBean> leavingMessageByUser(String user)throws LoveRoomException;
	List<LeavingMessageBean> getAllLeavingMessage();
	List<DocumentBean> getAllDocument();
}
