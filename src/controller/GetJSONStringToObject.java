package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import entity.Userinfo;

@Controller
public class GetJSONStringToObject {
	@RequestMapping(value = "createJSONObjectURL", method = RequestMethod.POST)
	public String createJSON(@RequestBody Userinfo userinfo) {
		System.out.println("username value=" + userinfo.getUsername());
		System.out.println("password value=" + userinfo.getPassword());
		return "test.jsp";
	}
}
