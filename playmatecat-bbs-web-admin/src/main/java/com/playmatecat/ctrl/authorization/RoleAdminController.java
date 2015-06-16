package com.playmatecat.ctrl.authorization;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.playmatecat.bbs.bbsApp.admin.vo.AuthorizationVO;
import com.playmatecat.database.bbs.Article;
import com.playmatecat.domains.sysBBS.dto.RoleDTO;
import com.playmatecat.mina.stucture.NioTransferAdapter;
import com.playmatecat.mina.stucture.RequestServiceAdapter;
import com.playmatecat.mina.support.MinaServiceSupport;
import com.playmatecat.utils.label.UtilsGUID;
import com.playmatecat.utils.mina.UtilsNioClient;

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
        
        RoleDTO roleDTO = new RoleDTO();
        roleDTO.setPageNo(1);
        roleDTO.setPageSize(10);
        roleDTO.setIsDeleted(false);
        authorizationVO.setRoleDTO(roleDTO);
        AuthorizationVO rtnVO = (AuthorizationVO) MinaServiceSupport.call("bbs",
                "admin-authorizationCpt.getRolesPagination", authorizationVO);
      
        
        authorizationVO = rtnVO;
        ModelAndView mav = new ModelAndView("admin.authorization.role-admin.roles");
        model.addAttribute("authorizationVO", authorizationVO);
        return mav;
    }
    
    public void putRoles() {

    }
    
    public void postRoles() {

    }
    
    public void deleteRoles() {

    }
}
