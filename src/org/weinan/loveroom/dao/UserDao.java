package org.weinan.loveroom.dao;
import java.util.List;

import org.weinan.common.dao.*;
import org.weinan.loveroom.domain.User;
public interface UserDao extends BaseDao<User>{
	List<User> findByUser(User user);
	User findByName(String username);

}
