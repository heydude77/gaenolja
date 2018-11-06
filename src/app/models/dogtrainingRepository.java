package app.models;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class dogtrainingRepository{

	@Autowired
	SqlSessionTemplate template;

	//전체 리스트 출력
	public List<Map> getAll(){
		return template.selectList("dogtraining.getAll");
	} // end getAlldt

	//글 상세보기
	public Map getlistByNo(int no) {
		return template.selectOne("dogtraining.getlistByNo", no);
	} // end readdt

	// 글쓰기 저장
	public int adddtboard(Map map) {
		return template.insert("dogtraining.adddtboard" , map);
	}





}//end class




