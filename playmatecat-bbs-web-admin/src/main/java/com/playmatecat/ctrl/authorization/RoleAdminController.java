package com.playmatecat.ctrl.authorization;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.playmatecat.bbs.bbsApp.admin.vo.AuthorizationVO;
import com.playmatecat.mina.support.MinaServiceSupport;

/**
 * 角色管理
 * @author blackcat
 *
 */
@RequestMapping("/admin/authorization/role-admin")
@RestController
public class RoleAdminController {

    @RequestMapping(value="/roles",method=RequestMethod.GET, produces="text/html")
    public ModelAndView getRoles(AuthorizationVO authorizationVO, Model model,
            HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        AuthorizationVO rtnVO = (AuthorizationVO) MinaServiceSupport.call("bbs",
                "admin-authorizationCpt.getRolesPagination", authorizationVO);
      
        authorizationVO = rtnVO;
        //页面写入model方便读取
        model.addAttribute("rolePage", authorizationVO.getRolePage());
        ModelAndView mav = new ModelAndView("/module-admin/authorization/role-admin.roles");
        return mav;
    }
    
    public void putRoles() {

    }
    
    public void postRoles() {

    }
    
    public void deleteRoles() {

    }
}
