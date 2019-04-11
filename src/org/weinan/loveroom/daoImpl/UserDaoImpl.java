package org.weinan.loveroom.daoImpl;

import java.util.List;

import org.weinan.common.daoImpl.BaseDaoHibernate4;
import org.weinan.loveroom.dao.UserDao;
import org.weinan.loveroom.domain.User;

public class UserDaoImpl extends BaseDaoHibernate4<User> implements UserDao{

	@Override
	public List<User> findByUser(User user) {
		// TODO Auto-generated method stub
		return find("select p from User p where p.username=?0 and p.password=?1",
				user.getUsername(),user.getPassword());
				
	}

	@Override
	public User findByName(String username) {
		// TODO Auto-generated method stub
		List<User> user=find("select p from User p where p.username=?0",username);
		if(user!=null&&user.size()>=1) {
			return user.get(0);
		}
		return null;
	}

}
