package app.models;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

@Repository
public class OnechatRepository {
	
	@Autowired
	MongoTemplate template;
	
	// 채팅 입력후 저장
	public Map addChat(Map map) {
		return template.insert(map,"onechat");
	}
	
	// 해당 채팅 불러오기
	public List<Map> getOneChat(Map map){
		
		System.out.println("map >> "+ map);
		
		Criteria c = Criteria.where("sender").is(map.get("sender")).and("recipient").is(map.get("recipient"));
		return template.find(new Query(c),Map.class,"onechat");
	}
	
	
}//end class
