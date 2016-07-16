package com.lxhrainy.core.sys.web;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.core.sys.service.IUserInfoService;
import com.lxhrainy.myjz.admin.user.oe.UserInfoVO;

@RequestMapping("/admin/sys/user")
@Controller
public class UserController extends BaseController {

	@Autowired
	IUserInfoService userInfoService;	
	
	/***
	 * 详情
	 * @param
	 */
	@RequestMapping("/userDetail")
	public ModelAndView detail(Integer id) {
		mv = new ModelAndView("core/sys/user/userDetail");
		if(id!=null){
			mv.addObject("model", userInfoService.getById(id));
		}
		return mv;
	}
	
	/***
	 * 列表
	 * @param
	 */
	@RequestMapping("/userList")
	public ModelAndView list() {
		mv = new ModelAndView("core/sys/user/userList");
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(Integer rows, Integer page, UserInfoVO vo) {
		JSONObject rj = new JSONObject();
		List<UserInfo> list = userInfoService.getListByPage(vo);
		rj.put("total", vo.getTotalCount());
		rj.put("rows",list);
		return rj;
	}
	
	/***
	 * 修改
	 * @param
	 */
	@RequestMapping("/userAdd")
	public ModelAndView insert() {
		mv = new ModelAndView("core/sys/user/userAdd");
		return mv;
	}
	
	/***
	 * 新增保存
	 * @param
	 */
	@RequestMapping("/addsave")
	@ResponseBody
	public JSONObject insertsave(UserInfo model) {
		JSONObject rj = new JSONObject();
		int result = userInfoService.save(model);
		if(result != -1){
			rj.put("success", true);
			rj.put("msg", "新增成功");
		}else{
			rj.put("success", false);
			rj.put("msg", "新增失败");
		}
		return rj;
	}
	

	/***
	 * 修改
	 * @param
	 */
	@RequestMapping("/userUpdate")
	public ModelAndView update(Integer id) {
		mv = new ModelAndView("core/sys/user/userUpdate");
		if(id != null){
			mv.addObject("model", userInfoService.getById(id));
		}
		return mv;
	}
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/updatesave")
	@ResponseBody
	public JSONObject updatesave(UserInfo model) {
		JSONObject rj = new JSONObject();
		if(model != null && model.getId() > 0){
			UserInfo oldInfo = userInfoService.getById(model.getId());
			oldInfo.setUsername(model.getUsername());
			oldInfo.setPhone(model.getPhone());
			userInfoService.update(oldInfo);
			rj.put("success", true);
			rj.put("msg", "更新成功");
		}else{
			rj.put("success", false);
			rj.put("msg", "更新失败");
		}
		return rj;
	}
	
	/***
	 * 删除
	 * @param ID
	 */
	@RequestMapping("/userDelete")
	@ResponseBody
	public JSONObject delete(Integer id) {
		JSONObject rj = new JSONObject();
		userInfoService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "删除成功");
		return rj;
	}
	
	/***
	 * 重置密码
	 * @param ID
	 */
	@RequestMapping("/resetPassword")
	@ResponseBody
	public JSONObject resetPassword(Integer id) {
		JSONObject rj = new JSONObject();
		userInfoService.resetPassword(id);
		rj.put("success", true);
		rj.put("msg", "密码已重置");
		return rj;
	}

}
