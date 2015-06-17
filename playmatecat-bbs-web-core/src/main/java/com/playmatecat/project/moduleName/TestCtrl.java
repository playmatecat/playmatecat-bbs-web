package com.playmatecat.project.moduleName;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("")
public class TestCtrl {
	
    @RequiresPermissions(value={"test:test:view"})
	@RequestMapping("/testPage")
	public ModelAndView testPage(Model model) {
		SecurityUtils.getSubject().isPermitted("test:test");
		ModelAndView mav = new ModelAndView("testModule.testMain");
		model.addAttribute("testParam", "testModelParams");
        
//        ModelAndView mav = new ModelAndView("index");
		return mav;
	}
	
    @RequiresPermissions(value={"test:test:view1"})
    @RequestMapping("/testPage1")
    public ModelAndView testPage1(Model model) {
        SecurityUtils.getSubject().isPermitted("test:test");
        ModelAndView mav = new ModelAndView("testModule.testMain");
        model.addAttribute("testParam", "testModelParams");
        
        
//        ModelAndView mav = new ModelAndView("index");
        return mav;
    }
    
    @RequestMapping("/testPage2")
    public ModelAndView testPage2(Model model) {
        SecurityUtils.getSubject().isPermitted("test:test");
        ModelAndView mav = new ModelAndView("testModule.testMain");
        model.addAttribute("testParam", "testModelParams");
        
//        ModelAndView mav = new ModelAndView("index");
        return mav;
    }
    
    
    @RequestMapping("/ace")
    public ModelAndView ace(Model model) {
        ModelAndView mav = new ModelAndView("module.admin.custom");
        return mav;
    }
    
    @RequestMapping(value="/testPut",method=RequestMethod.PUT)
    public ModelAndView testPut(HttpServletRequest request, Model model) {
        System.out.println("成功进行了put!!!!!!!!!!!!!!!!!!!!!!" + request.getParameter("test"));
        ModelAndView mav = new ModelAndView("module.admin.custom");
        return mav;
    }
    
    @RequestMapping(value="/testPut",method=RequestMethod.DELETE)
    public ModelAndView testDelete(HttpServletRequest request, Model model) {
        System.out.println("成功进行了delete!!!!!!!!!!!!!!!!!!!!!!" + request.getParameter("test"));
        ModelAndView mav = new ModelAndView("module.admin.custom");
        return mav;
    }
}
