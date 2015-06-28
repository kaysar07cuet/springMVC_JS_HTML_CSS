package com.ghost.spring.employee.handler;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ghost.spring.employee.dao.DepartmentDao;
import com.ghost.spring.employee.dao.EmployeeDao;
import com.ghost.spring.employee.entity.Department;
import com.ghost.spring.employee.entity.Employee;

@Controller
public class EmployeeHandler {

	@Autowired
	private EmployeeDao employeeDao;
	
	@Autowired
	private DepartmentDao departmentDao;
	
	@ModelAttribute
	public void preUpdate(@RequestParam(value="id", required=false) Integer id, Map<String, Object> map){
		if(id!=null){
			map.put("employee", employeeDao.selectById(id));
		}
	}
	
	@RequestMapping(value="/input", method=RequestMethod.PUT)
	public String input(Employee employee){
		employeeDao.update(employee);
		return "redirect:/emp";
	}
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public String input(@PathVariable("id") int id, Map<String, Object> map){
		Employee employee = employeeDao.selectById(id);
		if(employee!=null){
			map.put("employee", employee);
		}
		Map<Integer, String> genders = new HashMap<Integer, String>(); 
		genders.put(0, "female");
		genders.put(1, "male");
		map.put("genders", genders);
		List<Department> departments = departmentDao.selectAll();
		map.put("departments", departments);
		return "form";
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	public String delete(@PathVariable("id") int id){
		employeeDao.deleteById(id);
		return "redirect:/emp";
	}
	
	
	@RequestMapping("/emp")
	public String showEmployee(Map<String, Object> map){
		
		List<Employee> employees = employeeDao.selectAll();
		
		map.put("employees", employees);
		return "list";
	}
	
	@RequestMapping(value="/input", method=RequestMethod.POST)
	public String save(Employee employee, BindingResult result){
		System.out.println("in /input:post "+employee.getBirth());
		if(result.hasErrors()){
			System.out.println("Error happens");
			for(FieldError error:result.getFieldErrors()){
				System.out.println(error.getDefaultMessage());
			}
		}
		employeeDao.save(employee);
		
		return "redirect:/emp";
	}
	
	
	@RequestMapping(value="/input", method=RequestMethod.GET)
	public String addEmpolyee(Map<String , Object> map){
		List<Department> deps = departmentDao.selectAll();
		map.put("departments", deps);
		map.put("employee", new Employee());
		
		Map<Integer, String> genders = new HashMap<Integer, String>();
		genders.put(0, "female");
		genders.put(1, "male");

		map.put("genders", genders);
		return "form";
	}
}
