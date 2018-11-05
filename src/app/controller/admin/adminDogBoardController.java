package app.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import app.data.dogList;
import app.models.dogListRepository;

@Controller
@RequestMapping("/admin/dogBoard")
public class adminDogBoardController {
	@Autowired
	ServletContext ctx;

	
	@Autowired
	dogListRepository dr;

	@Autowired
	dogList dl;
	
	@GetMapping("/main.do")
	public ModelAndView adminDogBoardMainController(WebRequest wr) {
		System.out.println(wr.getAttribute("success", wr.SCOPE_REQUEST));
		
		wr.setAttribute("allList", dr.getDogList(), wr.SCOPE_REQUEST);
		wr.setAttribute("bigDogList", dr.getDogListByType(1), wr.SCOPE_REQUEST);
		wr.setAttribute("medDogList", dr.getDogListByType(2), wr.SCOPE_REQUEST);
		wr.setAttribute("smallDogList", dr.getDogListByType(3), wr.SCOPE_REQUEST);
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("master");
		mav.addObject("top", "/WEB-INF/views/master/gaekipedia/admin/top.jsp");
		mav.addObject("main", "/WEB-INF/views/master/gaekipedia/admin/main.jsp");
		
		return mav;
	}
	
	@GetMapping("/add.do")
	public ModelAndView adminDogBoardAddController() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("master");
		mav.addObject("top", "/WEB-INF/views/master/gaekipedia/admin/top.jsp");
		mav.addObject("main", "/WEB-INF/views/master/gaekipedia/admin/add.jsp");
		
		return mav;
	}
	
	@PostMapping("/add.do")
	public ModelAndView adminDogBoardAddPostController(@RequestParam Map param,  @RequestParam MultipartFile img) throws IllegalStateException, IOException {
		System.out.println(param);
		
		long time = System.currentTimeMillis();
		String fileName = String.valueOf(time) + "_" + img.getOriginalFilename();
		System.out.println(fileName);
		String path = ctx.getRealPath(String.valueOf(time));
		
		File dir = new File(path);

		if (!dir.exists()) {
			dir.mkdirs();
		}
		File dst = new File(dir, fileName);

		img.transferTo(dst);
		
		String imgName = "/" + time + "/" + fileName;
		param.put("img", imgName);
		
		dr.addDog(param);		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/admin/dogBoard/main.do");	
		mav.addObject("success", true);
		
		return mav;
	}
}
