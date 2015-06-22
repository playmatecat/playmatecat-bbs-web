package com.playmatecat.ctrl.authorization;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.MediaType;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.playmatecat.bbs.bbsApp.admin.vo.AuthorizationVO;
import com.playmatecat.mina.support.MinaServiceSupport;
import com.playmatecat.utils.json.UtilsViewJson;

/**
 * 角色管理
 * @author blackcat
 *
 */
@RequestMapping("/admin/authorization/role-admin")
@RestController
public class RoleAdminController {

    /**
     * 获得角色列表
     * @param authorizationVO
     * @param model
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/roles",method=RequestMethod.GET, produces=MediaType.TEXT_HTML_VALUE)
    public ModelAndView getRoles(@ModelAttribute AuthorizationVO authorizationVO, Model model,
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
    
    /**
     * 获得单个角色信息
     * @param authorizationVO
     * @param model
     * @param request
     * @param response
     */
    @RequestMapping(value="/role",method=RequestMethod.GET, produces=MediaType.APPLICATION_JSON_VALUE)
    public Map<String, Object> getRole(@ModelAttribute AuthorizationVO authorizationVO, Model model,
            HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        AuthorizationVO rtnVO = (AuthorizationVO) MinaServiceSupport.call("bbs",
                "admin-authorizationCpt.getRole", authorizationVO);
        
        return UtilsViewJson.getSuccessJson(rtnVO);
    }
    
    
    /**
     * 添加单个用户角色信息
     * @param authorizationVO
     * @param model
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/role",method=RequestMethod.POST, produces=MediaType.APPLICATION_JSON_VALUE)
    public Map<String, Object> addRole(@ModelAttribute AuthorizationVO authorizationVO, Model model,
            HttpServletRequest request, HttpServletResponse response) throws Exception {
          
        AuthorizationVO rtnVO = (AuthorizationVO) MinaServiceSupport.call("bbs",
                "admin-authorizationCpt.addRole", authorizationVO);
        
        return UtilsViewJson.getSuccessJson(null);
    }
    
    
    
    
}
