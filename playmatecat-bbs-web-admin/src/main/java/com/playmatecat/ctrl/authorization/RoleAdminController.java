package com.playmatecat.ctrl.authorization;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.HttpResponse;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.playmatecat.bbs.bbsApp.admin.vo.AuthorizationVO;
import com.playmatecat.domains.sysBBS.dto.RoleDTO;
import com.playmatecat.utils.label.UtilsGUID;

@RequestMapping("/admin/role-admin")
@RestController
public class RoleAdminController {

    @RequestMapping(value="/roles",method=RequestMethod.GET, produces="text/html")
    public ModelAndView getRoles(AuthorizationVO authorizationVO, Model model,
            HttpServletRequest request, HttpServletResponse response) {
        
        //call mina service
        List<RoleDTO> list = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            RoleDTO role = new RoleDTO();
            role.setId(i);
            role.setName(UtilsGUID.getGUID());
            list.add(role);
        }
        
        authorizationVO.setRoleList(list);
        
        ModelAndView mav = new ModelAndView("module.auth.custom");
        return mav;
    }
    
    public void putRoles() {

    }
    
    public void postRoles() {

    }
    
    public void deleteRoles() {

    }
}
