package app.controller.main;

import java.io.File;
import java.io.IOException;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.event.SourceFilteringListener;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import app.models.FindRepository;
import app.models.ParcelRepository;
import app.models.accountRepository;
import app.models.dogTalkRepository;
import app.models.searchRepository;
import app.service.WeatherService;

@Controller
@RequestMapping("/main")
public class MainController {
	@Autowired
	accountRepository ar;
	
	@Autowired
	ServletContext ctx;
	
	@Autowired
	WeatherService ws;
	
	@Autowired
	Gson gson;	

	@Autowired
	FindRepository fr;
	
	@Autowired
	ParcelRepository pr;
	
	@Autowired
	dogTalkRepository dtr;
	
	@Autowired
	searchRepository sr;
	@SuppressWarnings("unchecked")
	@GetMapping("/index.do")
	public ModelAndView mainIndexHandle(WebRequest wr) {
		
		dtr.getSomeFromDogTalk();
		
		System.out.println(sr.getSearch());
		
		List recommendKeywords = sr.getSearch();
		recommendKeywords.sort(new Comparator<Map>() {
			public int compare(Map m1, Map m2)	{
				int count1 = (int) m1.get("count");
				int count2 = (int) m2.get("count");
				
				return count2-count1;
			}
		
		});
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("master");
		mav.addObject("top", "/WEB-INF/views/master/index/top.jsp");
		mav.addObject("main", "/WEB-INF/views/master/index/main.jsp");
		mav.addObject("dtrList",dtr.getSomeFromDogTalk());
		mav.addObject("findList", fr.getAllFind());
		mav.addObject("parcelList", pr.getAllByParcel());		
		wr.setAttribute("recommendKeywords", recommendKeywords, wr.SCOPE_SESSION);
		return mav;
	}
	

	@GetMapping("/login.do")
	public ModelAndView mainLoginHandle(WebRequest wr) {
		ModelAndView mav = new ModelAndView();		
		mav.setViewName("master");
		mav.addObject("top", "/WEB-INF/views/master/login/top.jsp");
		mav.addObject("main", "/WEB-INF/views/master/login/main.jsp");
		
		return mav;
	}
	
	@PostMapping("/login.do")
	public ModelAndView loginHandle(@RequestParam Map param, WebRequest wr) {
		ModelAndView mav = new ModelAndView();	
		
		if(ar.getPwById(param)) {						
			Map userInfo =  ar.getUserInfo((String)param.get("id"));
			String nick = (String)userInfo.get("NICKNAME");
			System.out.println("닉에임 >>"+nick);
				
			wr.setAttribute("nick", nick, wr.SCOPE_SESSION);
			wr.setAttribute("userInfo", userInfo, wr.SCOPE_SESSION);
			String gu = ws.getCoordinateByAddress((String)userInfo.get("ADDRESS"));
			wr.setAttribute("gu", gu, wr.SCOPE_SESSION);			
			System.out.println(gu);
			
			mav.setViewName("master");
			mav.setViewName("redirect:/main/index.do");
			
			
			return mav;
		}else {
			wr.setAttribute("loginFailed", 1, wr.SCOPE_REQUEST);
			mav.setViewName("master");
			mav.addObject("top", "/WEB-INF/views/master/login/top.jsp");
			mav.addObject("main", "/WEB-INF/views/master/login/main.jsp");			
			
			return mav;
			
		}
	}
	

	
	@GetMapping("/terms.do")
	public ModelAndView mainTermsHandle(WebRequest wr) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("master");
		mav.addObject("top", "/WEB-INF/views/master/join/top.jsp");
		mav.addObject("main", "/WEB-INF/views/master/join/terms.jsp");
		
		return mav;
	}
	
	@GetMapping("/joinform.do")
	public ModelAndView mainjoinformHandle(WebRequest wr) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("master");
		mav.addObject("top", "/WEB-INF/views/master/join/top.jsp");
		mav.addObject("main", "/WEB-INF/views/master/join/joinform.jsp");
		
		return mav;
	}
	
	@PostMapping("/joinform.do")
	public ModelAndView joinFormPostHandle(@RequestParam Map param, WebRequest wr, @RequestParam MultipartFile dogProfile) throws IllegalStateException, IOException {
		long time = System.currentTimeMillis();
		System.out.println("joinFormHandle post");
		System.out.println("param = "+param);
		String add = (String) param.get("address");
		String add2= (String) param.get("address2");
		String address = add+add2;
		param.put("address", address );
		param.remove("address2");
		
		String dogProfileName = String.valueOf(time) + "_" + dogProfile.getOriginalFilename();

		String path = ctx.getRealPath(String.valueOf(time));
		
		File dir = new File(path);
		if(!dir.exists()) {
			dir.mkdirs();
		}
		File dst = new File(dir, dogProfileName);		
		dogProfile.transferTo(dst);
		
		
		String attachDogProfile = "/" + time + "/" + dogProfileName;
		
		
		param.put("dogProfile", attachDogProfile);
		ModelAndView mav = new ModelAndView();
		
		try {
			int r = ar.addAccount(param);
			wr.setAttribute("joinSucess", 1, wr.SCOPE_REQUEST);
			mav.setViewName("master");
			mav.addObject("top", "/WEB-INF/views/master/index/top.jsp");
			mav.addObject("main", "/WEB-INF/views/master/index/main.jsp");
			
			return mav;
		}catch(Exception e) {
			e.printStackTrace();
			wr.setAttribute("joinFailed", 1, wr.SCOPE_REQUEST);
			
			mav.setViewName("master");
			mav.addObject("top", "/WEB-INF/views/master/index/top.jsp");
			mav.addObject("main", "/WEB-INF/views/master/index/main.jsp");			
			return mav;
		}	
			
	}
}
