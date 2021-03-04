package com.codingdojo.thecode;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping(value = "/code", method = RequestMethod.POST)
	public String success(@RequestParam(value="userInput") String userInput, RedirectAttributes flash) {
		if(userInput.equals("I just lost the game")) {
			System.out.println("i am here");
			return "redirect:/success";
			
		} else {
			flash.addFlashAttribute("error", "Everyone in the world is playing The Game. A person cannot refuse to play The Game; Whenever one thinks about The Game, one loses. Losses must be announced. This can be verbally, with a phrase such as \"I just lost The Game\".");
			return "redirect:/";
		}
	}
	
	@RequestMapping("/success")
	public String success(RedirectAttributes flash) {
		System.out.println("Success");
		flash.addFlashAttribute("success", "The millenial who sent you this is laughing right now.");
		return "redirect:/";
	}
}
