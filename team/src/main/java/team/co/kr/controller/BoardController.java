package team.co.kr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.Data;
import team.co.kr.entity.BoardVO;
import team.co.kr.service.BoardService;

//�ڵ����� - @Controller, @Service, @Repository, @Component, @Advice, @RestController 
//servlet-context.xml, root-context.xml �� �����Ǿ� �־���Ѵ�.
//url ����- Ŭ���� ���� ���� ���� �տ� ���̴� url�ǹ� 
@Controller
@RequestMapping("/board")// ���ʿ� ���������� �̸� ����
@Data
public class BoardController {
	
	//�ڵ� id - @Autowire : spring, @Inject : javax
	@Autowired
	//������ Ÿ���� ��ü�� �ִ� ��� ����
	@Qualifier("boardServiceImpl")
	private BoardService service;
	//jsp�� �����͸� �����Ϸ��� model �� parameterType�� �޴´�. -->request�� �����Ͱ� ���Եȴ�.
	@GetMapping("/list")
	public String list(Model model) throws Exception {
		System.out.println("BoardController.list()");
		model.addAttribute("list", service.list()); 
		System.out.println("BoardController.list().model - " + model);
		//jsp ���� - servlet-context.xml ����
		///web-inf/views/ + list + .jsp
		return "list";
	}
	//�ۺ���
	@GetMapping("/view") //bno �� inc ��Ʈ
	public String view(Long bno, int inc, Model model) throws Exception {
		System.out.println("BoardController.view().bno / inc = " + bno + "/" + inc);
		model.addAttribute("vo", service.view(bno, inc));
		/* service.increase(vo); */
		//jsp ���� - servlet-context.xml ����
		///web-inf/views/ + view + .jsp
		return "view";
	}
	//�۵����
	@GetMapping("/write")
	public String writeForm() throws Exception {
		System.out.println("BoardController.writeForm()");
		//jsp ���� - servlet-context.xml ����
		///web-inf/views/ + write + .jsp
		return "write";
	}
	//�۵�� ó��
	@PostMapping("/write")
	public String write(BoardVO vo) throws Exception {
		System.out.println("BoardController.write().vo - " + vo);
		service.write(vo);
		//�̵�url ���� : ����"redirect:" �� �ٿ����� 
		///web-inf/views/ + write + .jsp
		return "redirect:list";
	}
	//�ۼ��� ��
	@GetMapping("/update")
	public String updateForm(Long bno, Model model) throws Exception {
		System.out.println("BoardController.updateForm()");
		model.addAttribute("vo", service.view(bno, 0));
		//jsp ���� - servlet-context.xml ����
		///web-inf/views/ + write + .jsp
		return "update";
	}
	//�ۼ��� ó��
	@PostMapping("/update")
	public String update(BoardVO vo) throws Exception {
		System.out.println("BoardController.update().vo - " + vo);
		service.update(vo);
		//�̵�url ���� : ����"redirect:" �� �ٿ����� 
		///web-inf/views/ + write + .jsp
		return "redirect:view?bno=" + vo.getBno() + "&inc=0"; //1�������������
	}
	//�ۻ��� ó��
		@PostMapping("/delete")
		public String delete(BoardVO vo) throws Exception {
			System.out.println("BoardController.delete().vo - " + vo);
			service.delete(vo);
			//�̵�url ���� : ����"redirect:" �� �ٿ����� 
			///web-inf/views/ + write + .jsp
			return "redirect:list"; //1�������������
		}
}
