package app.controller.find;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.theme.SessionThemeResolver;
import org.springframework.web.socket.WebSocketSession;

import app.models.FindRepository;
import app.models.accountRepository;

@Controller
@RequestMapping("/find")
public class FindController {

	@Autowired
	ServletContext ctx;

	@Autowired
	FindRepository findRepository;
	
	@Autowired
	accountRepository accountRepository;

	// 게시글 List 화면

	@GetMapping("/list.do")
	public String listHandler(ModelMap mmap, WebRequest wr, @RequestParam (required=false)String nick) {
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String date = sdf.format(today);

		nick = (String)wr.getAttribute("nick", WebRequest.SCOPE_SESSION);
		
		System.out.println("nick = " + nick);
		mmap.put("nick", nick);
		mmap.put("date", date);
		
		System.out.println(mmap);

		//-------------------------------------

		List<Map> every = findRepository.getAllFind();
		System.out.println(every);
		mmap.put("every",every);
		
		return "main.find.list";
	}

	@GetMapping("/write.do")
	public String writeHandler() {
		
		return "main.find.write";
	}
	
	// 게시글 write 화면
	@PostMapping("/start.do")
	public String startHandler(@RequestParam Map rmap, @RequestParam MultipartFile picture,
		ModelMap mmap, WebRequest wr) throws IOException {
	
		System.out.println(rmap);
		System.out.println(picture);
		long time = System.currentTimeMillis();
		// 파일 첨부
		String fileName = String.valueOf(time) + "_" + picture.getOriginalFilename();
		System.out.println(fileName);
		String path = ctx.getRealPath(String.valueOf(time));
		
		File dir = new File(path);

		if (!dir.exists()) {
			dir.mkdirs();
		}
		File dst = new File(dir, fileName);

		picture.transferTo(dst);
		
		String pictureName = "/" + time + "/" + fileName;
		rmap.put("picture", pictureName);

		
		
		try {
			int r = findRepository.addAllFind(rmap);
			System.out.println(r);
			mmap.put("map", rmap);
			return "main.find.result";
		}catch(Exception e) {
			e.printStackTrace();
			return "main.find.write";
		}

	}

	@RequestMapping("/detail.do")
	public String detailHandler(@RequestParam (required=false)int no, ModelMap mmap) {	
		
		Map dataByNo = findRepository.getByNo(no);
		mmap.put("data", dataByNo);
		
		return "main.find.detail";
	}
	
	@RequestMapping("result.do")
	public String resultHandler(ModelMap mmap, @RequestParam (required=false)int no ) {
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String date = sdf.format(today);
		mmap.put("date", date);
		
		List<Map> map = findRepository.getAllFind();
		mmap.put("map", map);
				
		return "main.find.result";
	}
}