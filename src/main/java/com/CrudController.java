package com;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class CrudController {
	
	@RequestMapping(value="add")
	public ModelAndView redirect(){
		return new ModelAndView("addPage","msg","please,fill the information");
	}
	
	@RequestMapping(value="adddata",method=RequestMethod.POST)
	public ModelAndView addData(Product product,HttpServletResponse response,HttpServletRequest request){
		Configuration cfg=new Configuration();  
	    cfg.configure("hibernate.cfg.xml");  
	     
	    SessionFactory sf=cfg.buildSessionFactory();
	    Session session=sf.openSession();
	    Transaction t=session.beginTransaction();
		
		String pid=request.getParameter("productId");
		String pname=request.getParameter("productName");
		String pprice=request.getParameter("productPrice");
		
		product.setProductId(pid);
		product.setProductName(pname);
		product.setProductPrice(pprice);
		
		session.save(product);
		t.commit();
		session.close();
		return new ModelAndView("welcome","msg1","Data is added successfully..!");
	}
	
	@RequestMapping(value="records")
	public ModelAndView listofrecord(){
		Configuration cfg=new Configuration();  
	    cfg.configure("hibernate.cfg.xml");  
	     
	    SessionFactory sf=cfg.buildSessionFactory();
	    Session session=sf.openSession();
	    Transaction t=session.beginTransaction();
	    
		ModelAndView modelAndView=new ModelAndView("recordsPage");		
		
		List<Product> products = session.createQuery("from product").list();
		for(Product pd1:products){
			System.out.println(pd1);
		}
	
		modelAndView.addObject("products",products);
		
		return modelAndView;	
	}
	
	@RequestMapping(value="cancel")
	public ModelAndView redirecthome(){
		return new ModelAndView("login","msg","Please,Login with your credentials");
	}
	
	
}
