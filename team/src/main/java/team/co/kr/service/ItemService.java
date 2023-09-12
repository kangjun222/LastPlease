package team.co.kr.service;

import java.io.File;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import team.co.kr.entity.Item;
import team.co.kr.mapper.ItemMapper;

@Service
public class ItemService {
	@Autowired
	private ItemMapper itmapper;
	
	public int insertItem(Item item) {
		int result = itmapper.insertItem(item);
		
		return result;
	}
	
	public String uploadimg(HttpServletRequest req) {
		
		//cos 라이브러리 사용시 사용가능객체 multipartreuqest
		MultipartRequest multi = null;
		int filemaxsize = 10*1024*1024; //10mb
		String savePath = req.getRealPath("resources/upload");
		System.out.println(savePath);
		
		File uploadfile= new File(savePath);
		
		if(uploadfile != null) {
			uploadfile.mkdir();
		}
		
		try {
			multi = new MultipartRequest(req, savePath,filemaxsize,"UTF-8",new DefaultFileRenamePolicy());			
		}
		catch (Exception e) {
			return "redirect:/item/addItemForm";
		}
		
	
		//파일이름가져오기
		String filename = "";
		File file = multi.getFile("itemimg");//업로드됨
		
		if(file != null) {
			String ext = file.getName().substring(file.getName().lastIndexOf(".")+1);
			ext = ext.toUpperCase();
			
			
			if(ext.equals("JPG") || ext.equals("PNG") || ext.equals("GIF")) {
				filename = file.getName();
			}
			else {
				file.delete();
			}
			
		}
		
		return filename;
	}
	public int buyitem(Map<String, Object> map) {
		
		int result = itmapper.buyitem(map);
	
		return result;	
	}
	
	public int mybank(Map<String, Object> map) {
		return itmapper.mybank(map);
	}

}
