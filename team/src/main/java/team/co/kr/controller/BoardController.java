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

//자동생성 - @Controller, @Service, @Repository, @Component, @Advice, @RestController 
//servlet-context.xml, root-context.xml 에 설정되어 있어야한다.
//url 매핑- 클래스 위에 붙인 것은 앞에 붙이는 url의미 
@Controller
@RequestMapping("/board")// 이쪽에 들어오기위한 이름 지정
@Data
public class BoardController {
	
	//자동 id - @Autowire : spring, @Inject : javax
	@Autowired
	//동일한 타입의 객체가 있는 경우 설정
	@Qualifier("boardServiceImpl")
	private BoardService service;
	//jsp에 데이터를 전달하려면 model 을 parameterType로 받는다. -->request에 테이터가 담기게된다.
	@GetMapping("/list")
	public String list(Model model) throws Exception {
		System.out.println("BoardController.list()");
		model.addAttribute("list", service.list()); 
		System.out.println("BoardController.list().model - " + model);
		//jsp 정보 - servlet-context.xml 설정
		///web-inf/views/ + list + .jsp
		return "list";
	}
	//글보기
	@GetMapping("/view") //bno 랑 inc 셋트
	public String view(Long bno, int inc, Model model) throws Exception {
		System.out.println("BoardController.view().bno / inc = " + bno + "/" + inc);
		model.addAttribute("vo", service.view(bno, inc));
		/* service.increase(vo); */
		//jsp 정보 - servlet-context.xml 설정
		///web-inf/views/ + view + .jsp
		return "view";
	}
	//글등록폼
	@GetMapping("/write")
	public String writeForm() throws Exception {
		System.out.println("BoardController.writeForm()");
		//jsp 정보 - servlet-context.xml 설정
		///web-inf/views/ + write + .jsp
		return "write";
	}
	//글등록 처리
	@PostMapping("/write")
	public String write(BoardVO vo) throws Exception {
		System.out.println("BoardController.write().vo - " + vo);
		service.write(vo);
		//이동url 정보 : 옆에"redirect:" 을 붙여야함 
		///web-inf/views/ + write + .jsp
		return "redirect:list";
	}
	//글수정 폼
	@GetMapping("/update")
	public String updateForm(Long bno, Model model) throws Exception {
		System.out.println("BoardController.updateForm()");
		model.addAttribute("vo", service.view(bno, 0));
		//jsp 정보 - servlet-context.xml 설정
		///web-inf/views/ + write + .jsp
		return "update";
	}
	//글수정 처리
	@PostMapping("/update")
	public String update(BoardVO vo) throws Exception {
		System.out.println("BoardController.update().vo - " + vo);
		service.update(vo);
		//이동url 정보 : 옆에"redirect:" 을 붙여야함 
		///web-inf/views/ + write + .jsp
		return "redirect:view?bno=" + vo.getBno() + "&inc=0"; //1수정하지말라고
	}
	//글삭제 처리
		@PostMapping("/delete")
		public String delete(BoardVO vo) throws Exception {
			System.out.println("BoardController.delete().vo - " + vo);
			service.delete(vo);
			//이동url 정보 : 옆에"redirect:" 을 붙여야함 
			///web-inf/views/ + write + .jsp
			return "redirect:list"; //1수정하지말라고
		}
}
