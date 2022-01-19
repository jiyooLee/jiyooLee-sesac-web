package kr.co.mlec.controller;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

public class HandlerMapping {

	private Map<String, Controller> mappings = null;
	
	public HandlerMapping() {
		
		Properties prop = new Properties();
		try {
			InputStream is = new FileInputStream("D:\\Lecutre\\web-workspace\\Mission-Web-MVC\\bean.properties");
			prop.load(is);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		mappings = new HashMap<>();
		mappings.put("/board/list.do", new BoardListController());
		mappings.put("/board/writeForm.do", new BoardWriteFormController());
	}
	
	public Controller getController(String uri) {
		return mappings.get(uri);
	}

}


















