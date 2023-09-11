package team.co.kr.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.webjjang.util.page.PageObject;

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
	@GetMapping("/list") //모델어트리뷰트
	public String list(Model model, @ModelAttribute PageObject pageObject) throws Exception {
		System.out.println("BoardController.list()");
		model.addAttribute("list", service.list(pageObject)); //여기서 계산된 페이지 오브젝트가
		/* model.addAttribute("pageObject", pageObject); */ //여기로 담겨서 들어간다.모델어트리뷰트를 사용하면 안써도되는부분
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
	public String write(BoardVO vo, Long perPageNum) throws Exception {
		System.out.println("BoardController.write().vo - " + vo);
		service.write(vo);
		//�̵�url ���� : ����"redirect:" �� �ٿ����� 
		///web-inf/views/ + write + .jsp
		return "redirect:list?perPageNum=" + perPageNum;
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
	public String update(BoardVO vo, PageObject pageObject) throws Exception {
		System.out.println("BoardController.update().vo - " + vo);
		service.update(vo);
		//�̵�url ���� : ����"redirect:" �� �ٿ����� 
		///web-inf/views/ + write + .jsp
		/* rttr.addFlashAttribute("msg", "H entertainment 게시판 글수정이 되었습니다."); */
		return "redirect:view?bno=" + vo.getBno() + "&inc=0"
				+ "&" + pageObject.getPageQuery();
			/*
			 * +"&page=" + pageObject.getPage() +"&perPageNum=" + pageObject.getPerPageNum()
			 * +"&key=" + pageObject.getKey() +"&word=" +
			 * URLEncoder.encode(pageObject.getWord(), "utf-8")
			 */

	}
	//�ۻ��� ó��
		@PostMapping("/delete")
		public String delete(BoardVO vo, Long perPageNum) throws Exception {
			System.out.println("BoardController.delete().vo - " 
		+ vo);
			service.delete(vo);
			//�̵�url ���� : ����"redirect:" �� �ٿ����� 
			///web-inf/views/ + write + .jsp
			
			return "redirect:list?perPageNum=" + perPageNum;
		
		}
}
