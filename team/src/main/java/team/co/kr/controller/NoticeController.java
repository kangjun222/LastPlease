package team.co.kr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.Data;
import team.co.kr.entity.Item;
import team.co.kr.entity.NoticeVO;
import team.co.kr.service.NoticeService;

@Controller
@RequestMapping("/noticecontroller") // ���ʿ� ���������� �̸� ����
@Data
public class NoticeController {

	@Autowired

	// ������ Ÿ���� ��ü�� �ִ� ��� ����

	@Qualifier("noticeServiceImpl")

	private NoticeService service;

	@GetMapping("/noticelist")
	public String list(Model model) throws Exception {
		System.out.println("NoticeController.list()");
		model.addAttribute("list", service.list());
		System.out.println("NoticeController.noticelist().model - " + model);
		// jsp ���� - servlet-context.xml ����
		/// web-inf/views/ + list + .jsp

		return "noticelist";
	}

	// �ۺ���
	/*
	 * @GetMapping("/noti") //bno �� inc ��Ʈ public String noti(Long bno, int inc,
	 * Model model) throws Exception {
	 * System.out.println("NoticeController.noti().bno / inc = " + bno + "/" + inc);
	 * model.addAttribute("vo", service.noti(bno, inc)); service.increase(vo); //jsp
	 * ���� - servlet-context.xml ���� ///web-inf/views/ + view + .jsp return
	 * "noti"; }
	 */
//준형
	@ResponseBody
	@PostMapping("/url")
	public NoticeVO url(String content) throws Exception {
		return service.url(content);

	}
}