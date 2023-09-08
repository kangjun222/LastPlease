package team.co.kr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.Data;
import team.co.kr.service.BoardService;
import team.co.kr.service.NoticeService;


@Controller
@RequestMapping("/noticecontroller")// 이쪽에 들어오기위한 이름 지정
@Data
public class NoticeController {
	
	@Autowired
	
	  //동일한 타입의 객체가 있는 경우 설정
	 
	 @Qualifier("noticeServiceImpl") 
	
	private NoticeService service;
	
	@GetMapping("/noticelist")
	public String list(Model model) throws Exception {
		System.out.println("NoticeController.list()");
		model.addAttribute("list", service.list()); 
		System.out.println("NoticeController.noticelist().model - " + model);
		//jsp 정보 - servlet-context.xml 설정
		///web-inf/views/ + list + .jsp
		return "noticelist";
	}
	
	//글보기
		@GetMapping("/noti") //bno 랑 inc 셋트
		public String noti(Long bno, int inc, Model model) throws Exception {
			System.out.println("NoticeController.noti().bno / inc = " + bno + "/" + inc);
			model.addAttribute("vo", service.noti(bno, inc));
			/* service.increase(vo); */
			//jsp 정보 - servlet-context.xml 설정
			///web-inf/views/ + view + .jsp
			return "noti";
		}
}
