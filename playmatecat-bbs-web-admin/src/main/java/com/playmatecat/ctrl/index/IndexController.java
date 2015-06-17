package com.playmatecat.ctrl.index;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * 后台管理首页入口
 * @author blackcat
 *
 */
@RequestMapping("/admin")
@RestController
public class IndexController {
    
    @RequestMapping(value="/index",method=RequestMethod.GET, produces="text/html")
    public ModelAndView index(Model model,
            HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView mav = new ModelAndView("admin.index");
        return mav;
    }
    
}
