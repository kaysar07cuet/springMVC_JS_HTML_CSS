package com.ghost.spring.employee.test;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ghost.spring.employee.dao.EmployeeDao;
import com.ghost.spring.employee.entity.Employee;

@Controller
public class Test {
	
	@Autowired
	EmployeeDao employeeDao;
	
	@ResponseBody
	@RequestMapping("/testJson")
	public List<Employee> getJson(){
		System.out.println("testest");
		List<Employee> rst = employeeDao.selectAll();
		return rst;
	}
	
	@RequestMapping("testFileUpload")
	public String fileUpload(@RequestParam("desc") String desc, 
			@RequestParam("file") MultipartFile file) throws IOException{
		System.out.println("in fileUpload "+desc);
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getInputStream());
		return "success";
	}
	
	
	
	@RequestMapping("testConversionService")
	public String testConversionService(@RequestParam("employee") Employee employee){
		employeeDao.save(employee);
		System.out.println(" in converters "+employee);
		return "redirect:/emp";
	}
	
}
