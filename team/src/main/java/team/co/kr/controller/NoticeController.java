package team.co.kr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.webjjang.util.page.PageObject;

import lombok.Data;
import team.co.kr.service.NoticeService;

@Controller
@RequestMapping("/noticecontroller") // �뜝�룞�삕�뜝�떗�슱�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�떛紐뚯삕 �뜝�룞�삕�뜝�룞�삕
@Data
public class NoticeController {

	@Autowired
	@Qualifier("noticeServiceImpl")
	private NoticeService service;

	@GetMapping("/list")
	public void list() {
		System.out.println("/list");
	}
	
	@GetMapping("/noticelist")
	public String list(Model model, @ModelAttribute PageObject pageObject) throws Exception {
		/*
		 * List<NoticeVO> noticeList = service.list(); model.addAttribute("noticeList",
		 * noticeList);
		 */
		 System.out.println("NoticeController.list()"); 
		model.addAttribute("list", service.list(pageObject)); 
		System.out.println("NoticeController.noticelist().model - " + model); 
		// jsp �뜝�룞�삕�뜝�룞�삕 - servlet-context.xml �뜝�룞�삕�뜝�룞�삕
		/// web-inf/views/ + list + .jsp

		return "noticelist";
	}



	/*
	 * @GetMapping("/noti") //bno �뜝�룞�삕 inc �뜝�룞�삕�듃 public String noti(Long bno, int inc,
	 * Model model) throws Exception {
	 * System.out.println("NoticeController.noti().bno / inc = " + bno + "/" + inc);
	 * model.addAttribute("vo", service.noti(bno, inc)); service.increase(vo); //jsp
	 * �뜝�룞�삕�뜝�룞�삕 - servlet-context.xml �뜝�룞�삕�뜝�룞�삕 ///web-inf/views/ + view + .jsp return
	 * "noti"; }
	 */

	
	@GetMapping("/getURLByBno")
    @ResponseBody
    public String getURLByBno(@RequestParam Long bno) {
        String url = service.getURLByBno(bno);
        return url;
    }
}