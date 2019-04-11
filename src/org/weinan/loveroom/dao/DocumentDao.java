package org.weinan.loveroom.dao;
import java.util.List;

import org.weinan.common.dao.*;
import org.weinan.loveroom.domain.Document;
import org.weinan.loveroom.domain.LeavingMessage;
import org.weinan.loveroom.domain.User;

public interface DocumentDao extends BaseDao<Document>{
    
	Document findByWriterAndTitle(User user,String title);
	List<Document> findByWriterAndDate(User user,String date);
	List<Document> fingAll();
}
