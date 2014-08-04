package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.biz.user.service.UserServiceIF;
import com.biz.user.vo.Users;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;


@Controller
public class jqgridController {
	
	@Autowired
	UserServiceIF service;
	
	
	@RequestMapping(value = "/jqgrid.do", produces = "application/json")
	public @ResponseBody String getUserList(HttpServletRequest request,
            HttpServletResponse response,
        	@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "rows", required = false, defaultValue = "20") int rows,
			@RequestParam(value = "sidx", required=false, defaultValue="memberId") String sidx,
			@RequestParam(value = "sord", required=false, defaultValue="sort") String sord 
			) throws JsonGenerationException,   
                        JsonMappingException,
                        IOException, Exception {	
		
			
		ArrayList<Users> userList = service.findUsers();		
//		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		  // total = Total Page
		  // record = Total Records
		  // rows = list data
		  // page = current page
		
		  modelMap.put("rows", userList);
	//	  modelMap.put("page", page);
		
		
		return "jqgrid";		
	}

}
