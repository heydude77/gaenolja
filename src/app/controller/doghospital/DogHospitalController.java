package app.controller.doghospital;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import app.models.DogHospitalRepository;

@Controller
public class DogHospitalController {
	
	@Autowired
	DogHospitalRepository dhr;
	
	@Autowired
	Gson gson;

	@RequestMapping("/doghospital.do")
	public ModelAndView dogHospitalHandle(ModelMap map, @RequestParam (required=false)String p) {
		List<Map> list = dhr.getAllByDogHospital();
			map.put("list", list);
			
		//---------------------------------------------------------------
		Map data = new HashMap();
		int pp = (p == null) ? 1 : Integer.parseInt(p);
		
			data.put("s", 1 + (pp-1) * 6);
			data.put("e", pp*6);
		
		List<Map> every = dhr.getSomeHospital(data);
			map.put("every",every);
		//----------------------------------------------------------------
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("master");
		mav.addObject("top", "/WEB-INF/views/master/doghospital/top.jsp");
		mav.addObject("main", "/WEB-INF/views/master/doghospital/index.jsp");
		
		return mav;
	}
	
	@RequestMapping(path="/getdh.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public ModelAndView getDogHospital(@RequestParam String gu, ModelMap map) {
		List dhlist = dhr.getDogHospitalByGu(gu);
			map.put("dhlist", dhlist);
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("master");
		mav.addObject("top", "/WEB-INF/views/master/doghospital/top.jsp");
		mav.addObject("main", "/WEB-INF/views/master/doghospital/select.jsp");
		
		return mav;
		
	}
	
	// 전체 지역 좌표 JSON 문자열 만들기
	@RequestMapping(path="/coordinates.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String getByCoordinates(ModelMap map) {
		List positions = dhr.getByCoord();
		map.put("positions", positions);
		return gson.toJson(map);
	}
	
	// 지역 좌표 JSON 문자열 만들기
	@RequestMapping(path="/gucoordinates.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String getByGuCoord(@RequestParam String gu, ModelMap map) {
		List positions = dhr.getByGuCoord(gu);
		map.put("positions", positions);
		return gson.toJson(map);
	}
	

}
