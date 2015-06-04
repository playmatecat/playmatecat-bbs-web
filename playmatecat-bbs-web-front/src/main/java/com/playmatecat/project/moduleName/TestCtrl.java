package com.playmatecat.project.moduleName;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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
        ModelAndView mav = new ModelAndView("module.auth.test");
        return mav;
    }
    
    
    @RequestMapping("/error-404")
    public ModelAndView error404(Model model) {
        ModelAndView mav = new ModelAndView("/common/error/404");
        return mav;
    }
}
