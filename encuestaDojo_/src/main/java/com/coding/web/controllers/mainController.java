package com.coding.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class mainController {
	@GetMapping("/")
	public String home(HttpSession session) {
		return "Index.jsp";
	}

    @RequestMapping(value="/register", method=RequestMethod.POST)
    public String register(@RequestParam(value="inputName") String name, @RequestParam(value="inputLocation") String location
    		, @RequestParam(value="inputLanguage") String language, @RequestParam(value="inputComment") String comment,
    		HttpServletRequest request
    		) {
    	//request.getSession().getAttribute("MY_SESSION_MESSAGES")
    	request.getSession().setAttribute("name", name);
    	request.getSession().setAttribute("location", location);
    	request.getSession().setAttribute("language", language);
    	request.getSession().setAttribute("comment", comment);
          // ... procesar la información y guardarla en la Session
          return "redirect:/result";
    }
    @RequestMapping("/result")
    public String result(HttpServletRequest request) {
    	request.getSession().getAttribute("name");
    	System.out.println(request.getSession().getAttribute("name"));
    	request.getSession().getAttribute("location");
    	request.getSession().getAttribute("language");
    	request.getSession().getAttribute("comment");
    	if(request.getSession().getAttribute("language").equals("Java")) {
    		return "Java.jsp";
    	}
      // ... algún código para procesar antes de mostrar la página
      return "Result.jsp";
    }
}
