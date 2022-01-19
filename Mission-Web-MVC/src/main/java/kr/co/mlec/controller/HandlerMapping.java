package kr.co.mlec.controller;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

public class HandlerMapping {

	private Map<String, Controller> mappings = null;
	
	public HandlerMapping() {
		
		Properties prop = new Properties();
		mappings = new HashMap<>();
		
		try {
			InputStream is = new FileInputStream("D:\\Lecutre\\web-workspace\\Mission-Web-MVC\\bean.properties");
			prop.load(is);
	
			Set<Object> keys = prop.keySet();
			for(Object key : keys) {
				String className = prop.getProperty(key.toString());
				System.out.println(key + " : " + className);
				
				Class<?> clz = Class.forName(className);
				mappings.put(key.toString(), (Controller)clz.newInstance());
			
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	public Controller getController(String uri) {
		return mappings.get(uri);
	}
/*	
	public static void main(String[] args) throws Exception {
		
		
//		java.util.Random r = new java.util.Random();
//		int random = r.nextInt(100);
//		System.out.println("추출된 난수 : " + random);
		
		
		
//		Class<?> clz = Class.forName("java.util.Random");
//		java.util.Random obj = (java.util.Random)clz.newInstance();
//		int random = obj.nextInt(100);
//		System.out.println("추출된 난수 : " + random);
		
		
		// BoardListController obj = new BoardListController();
		Class<?> clz = Class.forName("kr.co.mlec.controller.BoardListController");
		BoardListController obj = (BoardListController)clz.newInstance();
		System.out.println(obj.handleRequest(null, null));
	}
*/
}


















