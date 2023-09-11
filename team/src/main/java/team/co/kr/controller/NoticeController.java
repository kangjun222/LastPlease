package team.co.kr.controller;

import java.util.List;

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
import team.co.kr.entity.NoticeVO;
import team.co.kr.service.NoticeService;

@Controller
@RequestMapping("/noticecontroller") // 占쏙옙占십울옙 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占싱몌옙 占쏙옙占쏙옙
@Data
public class NoticeController {

	@Autowired

	// 占쏙옙占쏙옙占쏙옙 타占쏙옙占쏙옙 占쏙옙체占쏙옙 占쌍댐옙 占쏙옙占� 占쏙옙占쏙옙

	@Qualifier("noticeServiceImpl")

	private NoticeService service;

	@GetMapping("/noticelist")
	public String list(Model model) throws Exception {
		/*
		 * List<NoticeVO> noticeList = service.list(); model.addAttribute("noticeList",
		 * noticeList);
		 */
		 System.out.println("NoticeController.list()"); 
		model.addAttribute("list", service.list()); 
		System.out.println("NoticeController.noticelist().model - " + model); 
		// jsp 占쏙옙占쏙옙 - servlet-context.xml 占쏙옙占쏙옙
		/// web-inf/views/ + list + .jsp

		return "noticelist";
	}


	// 占쌜븝옙占쏙옙
	/*
	 * @GetMapping("/noti") //bno 占쏙옙 inc 占쏙옙트 public String noti(Long bno, int inc,
	 * Model model) throws Exception {
	 * System.out.println("NoticeController.noti().bno / inc = " + bno + "/" + inc);
	 * model.addAttribute("vo", service.noti(bno, inc)); service.increase(vo); //jsp
	 * 占쏙옙占쏙옙 - servlet-context.xml 占쏙옙占쏙옙 ///web-inf/views/ + view + .jsp return
	 * "noti"; }
	 */

	
	@GetMapping("/getURLByBno")
    @ResponseBody
    public String getURLByBno(@RequestParam Long bno) {
        // bno를 사용하여 데이터베이스에서 해당 공지사항의 URL을 가져옵니다.
        String url = service.getURLByBno(bno);
        return url;
    }
}