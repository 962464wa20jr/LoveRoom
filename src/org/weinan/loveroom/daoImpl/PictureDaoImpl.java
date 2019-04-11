package org.weinan.loveroom.daoImpl;

import java.util.List;

import org.weinan.common.daoImpl.BaseDaoHibernate4;
import org.weinan.loveroom.dao.PictureDao;
import org.weinan.loveroom.domain.Picture;
import org.weinan.loveroom.domain.User;

public class PictureDaoImpl extends BaseDaoHibernate4<Picture> implements PictureDao{

	@Override
	public List<Picture> findbySenderAndDate(User user, String date) {
		// TODO Auto-generated method stub
		return find("from Picture as a where a.user=?0 and"
				+"a.date=?1",user,date);
	}

}
