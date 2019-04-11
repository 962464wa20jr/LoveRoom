package org.weinan.loveroom.serviceImpl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;

import org.weinan.loveroom.dao.DocumentDao;
import org.weinan.loveroom.dao.LeavingMessageDao;
import org.weinan.loveroom.dao.PictureDao;
import org.weinan.loveroom.dao.UserDao;
import org.weinan.loveroom.domain.Document;
import org.weinan.loveroom.domain.LeavingMessage;
import org.weinan.loveroom.domain.Picture;
import org.weinan.loveroom.domain.User;
import org.weinan.loveroom.exception.LoveRoomException;
import org.weinan.loveroom.serviece.MingNan;
import org.weinan.loveroom.vo.DocumentBean;
import org.weinan.loveroom.vo.LeavingMessageBean;
import org.weinan.loveroom.vo.PictureBean;

public class MingNanImpl implements MingNan{
	
	private DocumentDao documentDao;
	private LeavingMessageDao leavingMessageDao;
	private PictureDao pictureDao;
	private UserDao userDao;
	private String[] months= {"January","February","March","April","May","June","July","Auguest","September",
			"October","November","December"
	};
	
	public void setDocumentDao(DocumentDao documentDao) {
		this.documentDao=documentDao;
	}
	public void setLeavingMessageDao(LeavingMessageDao leavingMessageDao) {
		this.leavingMessageDao=leavingMessageDao;
	}
	public void setPictureDao(PictureDao pictureDao) {
		this.pictureDao=pictureDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao=userDao;
	}

	public int validLogin(User user) {
		// TODO Auto-generated method stub
		if(userDao.findByUser(user).size()>=1)
			return LOGIN_SUC;
		else
			return LOGIN_FAIL;
	}

	@Override
	public void addPictrue(Picture picture, String username) throws LoveRoomException{
		// TODO Auto-generated method stub
		User user=userDao.findByName(username);
		if(user==null)
			throw new LoveRoomException("你不是徐玮南或者朱国敏！");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		// 格式化当前时间
		String dutyDay = sdf.format(new Date());
		picture.setDate(dutyDay);
		picture.setUser(user);
		pictureDao.save(picture);
	}

	@Override
	public void addDocument(Document document, String username)throws LoveRoomException {
		// TODO Auto-generated method stub
		User user=userDao.findByName(username);
		if(user==null)
			throw new LoveRoomException("你不是徐玮南或者朱国敏！");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		// 格式化当前时间
		String dutyDay = sdf.format(new Date());
		document.setDate(dutyDay);
		document.setUser(user);
		documentDao.save(document);
	}

	@Override
	public void addLeavingMessage(LeavingMessage leavingMessage, String username)throws LoveRoomException {
		// TODO Auto-generated method stub
		User user=userDao.findByName(username);
		if(user==null)
			throw new LoveRoomException("你不是徐玮南或者朱国敏！");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		// 格式化当前时间
		String dutyDay = sdf.format(new Date());
		leavingMessage.setDate(dutyDay);
		leavingMessage.setUser(user);
		leavingMessageDao.save(leavingMessage);
	}

	@Override
	public List<DocumentBean> docByUser(String user) throws LoveRoomException{
		// TODO Auto-generated method stub
		User users=userDao.findByName(user);
		if(users==null) {
			throw new LoveRoomException("你不是徐玮南或者朱国敏！");
		}
		Set<Document> docs=users.getDocuments();
		if(docs==null||docs.size()<1) {
			throw new LoveRoomException("你没发表过日志!");
		}
		List<DocumentBean> result=new ArrayList<DocumentBean>();
		for(Document d:docs) {
			result.add(new DocumentBean(d.getDate(),d.getUrl(),d.getTitle(),d.getUser()));
		}
		return result;
	}

	@Override
	public List<PictureBean> picByUser(String user)throws LoveRoomException {
		// TODO Auto-generated method stub
		User users=userDao.findByName(user);
		if(users==null) {
			throw new LoveRoomException("你不是徐玮南或者朱国敏！");
		}
		Set<Picture> pics=users.getPictures();
		if(pics==null||pics.size()<1) {
			throw new LoveRoomException("你没上传过照片!");
		}
		List<PictureBean> result=new ArrayList<PictureBean>();
		for(Picture p:pics) {
			result.add(new PictureBean(p.getUrl(),p.getDate()));
		}
		return result;
	}

	@Override
	public List<LeavingMessageBean> leavingMessageByUser(String user) throws LoveRoomException{
		// TODO Auto-generated method stub
		User users=userDao.findByName(user);
		if(users==null) {
			throw new LoveRoomException("你不是徐玮南或者朱国敏！");
		}
		Set<LeavingMessage> leavingMessages=users.getLmss();
		if(leavingMessages==null||leavingMessages.size()<1) {
			throw new LoveRoomException("你没留过言!");
		}
		List<LeavingMessageBean> result=new ArrayList<LeavingMessageBean>();
		for(LeavingMessage l:leavingMessages) {
			result.add(new LeavingMessageBean(l.getComment(),l.getDate(),l.getUser()));
			String s1=l.getDate().substring(5, 7);
			int m=Integer.parseInt(s1);
			String s2=l.getDate().substring(8, 10);
			int day=Integer.parseInt(s2);
			result.get(result.size()-1).setMonth(months[m-1]);
			result.get(result.size()-1).setDay(day);
		}
		return result;
	}
	@Override
	public List<LeavingMessageBean> getAllLeavingMessage() {
		// TODO Auto-generated method stub
		List<LeavingMessage> lmss=new ArrayList<LeavingMessage>();
		List<LeavingMessageBean> result=new ArrayList<LeavingMessageBean>();
		lmss=leavingMessageDao.fingAll();
		for(LeavingMessage l:lmss) {
			result.add(new LeavingMessageBean(l.getComment(),l.getDate(),l.getUser()));
			String s1=l.getDate().substring(5, 7);
			int m=Integer.parseInt(s1);
			String s2=l.getDate().substring(8, 10);
			int day=Integer.parseInt(s2);
			result.get(result.size()-1).setMonth(months[m-1]);
			result.get(result.size()-1).setDay(day);
		}
		return result;
	}
	@Override
	public List<DocumentBean> getAllDocument() {
		// TODO Auto-generated method stub
		List<Document> documents=new ArrayList<Document>();
		List<DocumentBean> result=new ArrayList<DocumentBean>();
		documents=documentDao.fingAll();
		for(Document l:documents) {
			result.add(new DocumentBean(l.getDate(),l.getUrl(),l.getTitle(),l.getUser()));
			String s0=l.getDate().substring(0, 4);
			String s1=l.getDate().substring(5, 7);
			int m=Integer.parseInt(s1);
			String s2=l.getDate().substring(8, 10);
			int day=Integer.parseInt(s2);
			result.get(result.size()-1).setYear(s0);
			result.get(result.size()-1).setMonth(months[m-1]);
			result.get(result.size()-1).setDay(day);
		}
		Collections.reverse(result);
		return result;
	}

}
