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
		return mav;
	}
	
    @RequiresPermissions(value={"test:test:view1"})
    @RequestMapping("/testPage1")
    public ModelAndView testPage1(Model model) {
        SecurityUtils.getSubject().isPermitted("test:test");
        ModelAndView mav = new ModelAndView("testModule.testMain");
        model.addAttribute("testParam", "testModelParams");
        return mav;
    }
}
