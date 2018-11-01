package app.controller.parcel;

import java.io.File;
import java.io.IOException;
import java.util.*;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import app.models.ParcelRepository;

@Controller("/parcel")
public class ParcelController {

	@Autowired
	ServletContext ctx;
	
	@Autowired
	Gson gson;
	
	@Autowired
	ParcelRepository parcelRepository;
	
	// 분양게시판 index 페이지 게시물 전체 뽑아서 보여줌 / 게시물 리스트 출력 핸들러
	@RequestMapping("/parcel.do")
	public ModelAndView getAllByParcel(ModelMap map) {
		List<Map> list = parcelRepository.getAllByParcel();
		map.put("list", list);
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("master");
		mav.addObject("top", "/WEB-INF/views/master/parcel/top.jsp");
		mav.addObject("main", "/WEB-INF/views/master/parcel/index.jsp");
		mav.addObject("list", list);
		
		return mav;
	}
	
	// 새글쓰기 뷰어 출력 핸들러
	@RequestMapping("/new.do")
	public ModelAndView newHandler(ModelMap map, WebRequest wr) {
		Map userInfo = (Map)wr.getAttribute("userInfo", wr.SCOPE_SESSION);
		map.put("userInfo", userInfo);
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("master");
		mav.addObject("top", "/WEB-INF/views/master/parcel/top.jsp");
		mav.addObject("main", "/WEB-INF/views/master/parcel/new.jsp");	
		
		
		return mav;
	}
	
	// 새글쓰기 저장 핸들러
	@RequestMapping("/add.do")
	public ModelAndView addByParcelHandler(@RequestParam Map param, @RequestParam MultipartFile mainimage, @RequestParam MultipartFile file1, @RequestParam MultipartFile file2, ModelMap map, WebRequest wr) throws IOException {
		long time = System.currentTimeMillis();
		String mainfileName = String.valueOf(time) + "_" + mainimage.getOriginalFilename();
		String file1Name = String.valueOf(time) + "_" + file1.getOriginalFilename();
		String file2Name = String.valueOf(time) + "_" + file2.getOriginalFilename();

		String path = ctx.getRealPath(String.valueOf(time));
		File dir = new File(path);
		if(!dir.exists()) {
			dir.mkdirs();
		}
		File dst = new File(dir, mainfileName);
		File dst1 = new File(dir, file1Name);
		File dst2= new File(dir, file2Name);
		mainimage.transferTo(dst);
		file1.transferTo(dst1);
		file2.transferTo(dst2);
		
		String attachmain = "/" + time + "/" + mainfileName;
		String attachfile1 = "/" + time + "/" + file1Name;
		String attachfile2 = "/" + time + "/" + file2Name;
		
		String mode = (String)wr.getAttribute("mode", wr.SCOPE_SESSION);
		Map data = (Map)wr.getAttribute("userInfo", wr.SCOPE_SESSION);
		String id = (String)data.get("ID");
		param.put("id", id);
		
		param.put("mainimage", attachmain);
		param.put("file1", attachfile1);
		param.put("file2", attachfile2);
		
		ModelAndView mav = new ModelAndView();
		System.out.println(param);
		try {
			int r = parcelRepository.addByParcel(param);
			
			
			mav.setViewName("master");
			mav.addObject("top", "/WEB-INF/views/master/parcel/top.jsp");
			mav.addObject("main", "/WEB-INF/views/master/parcel/result.jsp");	
			
			
			return mav;
		}catch(Exception e) {
			e.printStackTrace();
			map.put("err", "on");
			mav.setViewName("master");
			mav.addObject("top", "/WEB-INF/views/master/parcel/top.jsp");
			mav.addObject("main", "/WEB-INF/views/master/parcel/new.jsp");	
			
			
			return mav;
		}
		
	}
	
	// 특정 게시글의 내용 및 댓글 뽑기
	@RequestMapping("/detail.do")
	public ModelAndView getByOnePercel(@RequestParam int no, ModelMap one) {
		Map onedata = parcelRepository.getByOneParcel(no);
		List comlist = parcelRepository.getAllByComments(no);
		List cmtcnt = parcelRepository.getByCmtCount(no);
			one.put("one", onedata);
			one.put("comlist", comlist);
			one.put("cmtcnt", cmtcnt);
			
		ModelAndView mav = new ModelAndView();
		mav.setViewName("master");
		mav.addObject("top", "/WEB-INF/views/master/parcel/top.jsp");
		mav.addObject("main", "/WEB-INF/views/master/parcel/detail.jsp");	
		
		
		return mav;
	}
	
	
	
}
