package org.weinan.loveroom.dao;
import java.util.List;

import org.weinan.common.dao.*;
import org.weinan.loveroom.domain.Picture;
import org.weinan.loveroom.domain.User;
public interface PictureDao extends BaseDao<Picture> {
	List<Picture> findbySenderAndDate(User user,String date);

}
