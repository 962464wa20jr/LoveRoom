package org.weinan.loveroom.daoImpl;

import java.util.List;

import org.weinan.common.daoImpl.BaseDaoHibernate4;
import org.weinan.loveroom.dao.DocumentDao;
import org.weinan.loveroom.domain.Document;
import org.weinan.loveroom.domain.User;

public class DocumentDaoImpl extends BaseDaoHibernate4<Document> implements DocumentDao{
    
	public Document findByWriterAndTitle(User user,String title) {
		List<Document> d=find("from Document as a where a.user=?0 and"
				+"a.title=?1",user,title);
		if(d!=null||d.size()>=1) {
			for(Document document:d) {
				return document;
			}
		}
		return null;
	}

	@Override
	public List<Document> findByWriterAndDate(User user, String date) {
		// TODO Auto-generated method stub
		return find("from Document as a where a.user=?0 and"
				+"a.date=?1",user,date);
	}

	@Override
	public List<Document> fingAll() {
		// TODO Auto-generated method stub
		return find("from Document");
	}
}
