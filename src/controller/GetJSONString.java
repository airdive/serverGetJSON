package controller;

import net.sf.json.JSONObject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GetJSONString {

	@RequestMapping(value = "getJSONString")
	public String getJSONString(@RequestParam("jsonString") String jsonString) {

		JSONObject object = JSONObject.fromObject(jsonString);
		System.out.println(object.get("username"));
		System.out.println(object.get("password"));

		return "test.jsp";
	}

}
