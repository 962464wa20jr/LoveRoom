package org.weinan.loveroom.dao;
import java.util.List;

import org.weinan.common.dao.*;
import org.weinan.loveroom.domain.LeavingMessage;
import org.weinan.loveroom.domain.User;
public interface LeavingMessageDao extends BaseDao<LeavingMessage> {

	List<LeavingMessage> findByWriterAndDate(User user,String date);
	List<LeavingMessage> fingAll();
}
