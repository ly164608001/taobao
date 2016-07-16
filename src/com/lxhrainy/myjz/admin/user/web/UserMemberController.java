package com.lxhrainy.myjz.admin.user.web;


import java.util.Date;
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
import com.lxhrainy.myjz.common.constant.Global;

@RequestMapping("/admin/user/member")
@Controller
public class UserMemberController extends BaseController {

	@Autowired
	IUserInfoService userInfoService;	
	
	/***
	 * 详情
	 * @param
	 */
	@RequestMapping("/memberDetail")
	public ModelAndView detail(Integer id) {
		mv = new ModelAndView("admin/user/member/memberDetail");
		if(id!=null){
			mv.addObject("model", userInfoService.getById(id));
		}
		return mv;
	}
	
	/***
	 * 列表
	 * @param
	 */
	@RequestMapping("/memberList")
	public ModelAndView list() {
		mv = new ModelAndView("admin/user/member/memberList");
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(UserInfoVO vo) {
		JSONObject rj = new JSONObject();
		vo.getModel().setStatus(Global.NORMAL);
		List<UserInfo> list = userInfoService.getMemberListByPage(vo);
		rj.put("total", vo.getTotalCount());
		rj.put("rows",list);
		return rj;
	}
	
	/***
	 * 黑名单列表
	 * @param
	 */
	@RequestMapping("/memberBlackList")
	public ModelAndView blacklist() {
		mv = new ModelAndView("admin/user/member/memberBlackList");
		return mv;
	}
	
	@RequestMapping("/dataBlackList")
	@ResponseBody
	public JSONObject blacklistdata(UserInfoVO vo) {
		JSONObject rj = new JSONObject();
		vo.getModel().setStatus(Global.BLACK);
		List<UserInfo> list = userInfoService.getMemberListByPage(vo);
		rj.put("total", vo.getTotalCount());
		rj.put("rows",list);
		return rj;
	}

	/***
	 * 修改
	 * @param
	 */
	@RequestMapping("/memberUpdate")
	public ModelAndView update(Integer id) {
		mv = new ModelAndView("admin/user/member/memberUpdate");
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
			oldInfo.setUpdatetime(new Date());
			oldInfo.setUpdateuser(getCurrentUser());
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
	@RequestMapping("/memberDelete")
	@ResponseBody
	public JSONObject delete(Integer id) {
		JSONObject rj = new JSONObject();
		userInfoService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "删除成功");
		return rj;
	}
	
	/***
	 * 加入黑名单
	 * @param ID
	 */
	@RequestMapping("/addBlack")
	@ResponseBody
	public JSONObject addBlack(UserInfo model) {
		JSONObject rj = new JSONObject();
		model.setStatus(Global.BLACK);
		model.setUpdatetime(new Date());
		model.setUpdateuser(getCurrentUser());
		boolean result = userInfoService.updateUserStatus(model);
		if(result){
			rj.put("success", true);
			rj.put("msg", "成功将用户加入黑名单");
		}else{
			rj.put("success", false);
			rj.put("msg", "加入黑名单失败");
		}
		return rj;
	}
	
	/***
	 * 移除黑名单
	 * @param ID
	 */
	@RequestMapping("/removeBlack")
	@ResponseBody
	public JSONObject removeBlack(UserInfo model) {
		JSONObject rj = new JSONObject();
		model.setStatus(Global.NORMAL);
		model.setUpdatetime(new Date());
		model.setUpdateuser(getCurrentUser());
		boolean result = userInfoService.updateUserStatus(model);
		if(result){
			rj.put("success", true);
			rj.put("msg", "成功将用户移除黑名单");
		}else{
			rj.put("success", false);
			rj.put("msg", "移除黑名单失败");
		}
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
