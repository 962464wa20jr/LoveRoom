package org.weinan.loveroom.daoImpl;

import java.io.Serializable;
import java.util.List;

import org.weinan.common.daoImpl.BaseDaoHibernate4;
import org.weinan.loveroom.dao.LeavingMessageDao;
import org.weinan.loveroom.domain.LeavingMessage;
import org.weinan.loveroom.domain.User;

public class LeavingMessageDaoImpl extends BaseDaoHibernate4<LeavingMessage> implements LeavingMessageDao{

	

	@Override
	public List<LeavingMessage> findByWriterAndDate(User user, String date) {
		// TODO Auto-generated method stub
		return find("from LeavingMessage as a where a.user=?0 and"
				+"a.date=?1",user,date);
	}

	@Override
	public List<LeavingMessage> fingAll() {
		// TODO Auto-generated method stub
		return find("from LeavingMessage");
	}

}
