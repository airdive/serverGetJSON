package controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.Userinfo;

@Controller
public class Test {
	
	@RequestMapping(value="getJSON1",consumes="application/json")
	public void getJSON1(@RequestBody Userinfo userinfo){
		System.out.println(userinfo.getUsername());
		System.out.println(userinfo.getPassword());
	}
	
	@RequestMapping(value="getJSON2")
	public void getJSON2(@RequestBody ArrayList<String> list){
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
	}
	
	@RequestMapping(value="getJSON3")
	public void getJSON3(@RequestBody List<Map> list){
		for (int i = 0; i < list.size(); i++) {
			Map map = list.get(i);
			System.out.println(map.get("username")+" "+map.get("password"));
		}
	}
	
	@RequestMapping(value="getJSON4")
	public void getJSON4(@RequestBody Map map){
		System.out.println(map.get("username"));
		List<Map> workList = (List) map.get("work");
		for (int i = 0; i < workList.size(); i++) {
			Map eachAddressMap = workList.get(i);
			System.out.println("address="+eachAddressMap.get("address"));
		}
	}
	
}
