package com.nucleus.controller;

import java.security.Principal;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nucleus.model.Customer;
import com.nucleus.service.ICustomerService;
import com.nucleus.utility.PasswordEncode;




@Controller
public class CustomerController {

	@Autowired
	ICustomerService customerService;
	@Autowired
	PasswordEncode passwordencode;
	Date dateobj = new Date();
	
	
	@RequestMapping("/RegisterCustomer")	
	public ModelAndView request1(@ModelAttribute("customer2") Customer customer2)
	{
		//customer.setCustname("aaaa");
		
		return new ModelAndView("add");
	}
	@RequestMapping("/DeleteCustomer")	
	public ModelAndView request2(@ModelAttribute("customer2") Customer customer2)
	{
		//customer.setCustname("aaaa");
		return new ModelAndView("delete");
	}
	@RequestMapping("/UpdateCustomer")	
	public ModelAndView request3(@ModelAttribute("customer2") Customer customer2)
	{
		//customer.setCustname("aaaa");
		return new ModelAndView("updateform");
	}
	
	@RequestMapping("/viewall")	
	public ModelAndView request10(@ModelAttribute("customer2") Customer customer2)
	{
		//customer.setCustname("aaaa");
		List<Customer> lis=customerService.viewAll();
		
		return new ModelAndView("view2","list",lis);
	}
	@RequestMapping("/saveCustomer")
	public ModelAndView request4(@ModelAttribute("customer2") @Valid Customer customer,Principal principal,BindingResult result)
	{
		if(result.hasErrors())
		{
			return new ModelAndView("add");
		}
        customer.setCreateDate(dateobj);
        customer.setCreatedBy(principal.getName());
    
        
		customerService.insert(customer);
		ModelAndView model=new ModelAndView();
		List<Customer> lis=customerService.viewAll();
		model.addObject("list",lis);
		model.addObject("addmsg","customer details added successfully");
		model.setViewName("add");
		return  model;
	}
	
	
	
	@RequestMapping("/deleteCustomer")
	public ModelAndView request5(@ModelAttribute("customer2") @Valid Customer customer, BindingResult result)
	{
		if(result.hasErrors())
		{
			return new ModelAndView("delete");
		}
		
		customerService.delete(customer);
		return new ModelAndView("delete","delmsg","customer details deleted successfully");
	}
	@RequestMapping("/updateCustomer")
	public ModelAndView request6(@ModelAttribute("customer2") Customer customer, BindingResult result)
	{
	   Customer customer1=customerService.updateCustomer(customer.getCustomerCode());
	   Date d1=(java.util.Date)customer1.getCreateDate();
	   customer1.setCreateDate(d1);
	   //System.out.println(customer1.toString());
		ModelAndView model=new ModelAndView();
		model.addObject("customer2",customer1);
		model.setViewName("update");
		return model;
		
		
	}
 @RequestMapping("/UpdateCustomer1")
	public ModelAndView request7(@ModelAttribute("customer2") Customer customer,Principal principal, BindingResult result)
	{
		if(result.hasErrors())
		{
			return new ModelAndView("update");
		}
		customer.setCreateDate(dateobj);
        customer.setCreatedBy(principal.getName());
        
		
		customerService.update(customer,customer.getCustomerCode());
		return new ModelAndView("makerHome","updatemsg","customer details updated successfully");
	}
  
 }