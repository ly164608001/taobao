package com.lxhrainy.api.util;

import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.core.utils.ContextHolderUtils;
import com.lxhrainy.core.utils.PasswordUtil;
import com.lxhrainy.core.utils.StringUtil;
import com.lxhrainy.core.utils.oConvertUtils;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;

/**
 * api 缓存 工具
 * @author dyno
 *
 */
public class ApiCacheUtil {
	
	private static Cache userCache;
	private static Cache captchaCache;
	
	static {
		if (userCache == null) {
			userCache = CacheManager.getInstance().getCache("userCache");
		}
		if (captchaCache == null) {
			captchaCache = CacheManager.getInstance().getCache("captchaCache");
		}
	}
	
	public static String getUserToken(UserInfo loginUser) {
		return PasswordUtil.encrypt("user" + loginUser.getPlatform() , "userid" + loginUser.getId(), PasswordUtil.getStaticSalt());
	}
	
	public static void addUserChache(UserInfo loginUser) {
		if (oConvertUtils.isNotEmpty(loginUser)) {
			Element element = new Element(getUserToken(loginUser), loginUser);
			userCache.put(element);
		}
	}
	
	public static void removeUserChache() {
		String usertoken = ContextHolderUtils.getRequest().getHeader("usertoken");
		userCache.remove(usertoken);
	}
	
	public static void updateUserChache(UserInfo loginUser) {
		removeUserChache();
		addUserChache(loginUser);
	}
	
	public static UserInfo getUserChache() {
		String usertoken = ContextHolderUtils.getRequest().getHeader("usertoken");
		Element element = userCache.get(usertoken);
		if (oConvertUtils.isNotEmpty(element)) {
			return (UserInfo) element.getObjectValue();
		}
		return null;
	}
	public static UserInfo getLoginUser() {
		UserInfo chacheUser= getUserChache();
		if (oConvertUtils.isNotEmpty(chacheUser)) {
			return chacheUser;
		}
		return null;
	}
	
	public static void addCaptchaChache(String key, String value) {
		if (StringUtil.isNotEmpty(key) && StringUtil.isNotEmpty(value)) {
			Element element = new Element(key, value);
			captchaCache.put(element);
		}
	}
	
	public static String getCaptchaChache(String key) {
		Element element = captchaCache.get(key);
		if (oConvertUtils.isNotEmpty(element)) {
			return (String) element.getObjectValue();
		}
		return "";
	}
	
	public static void removeCaptchaChache(String key) {
		captchaCache.remove(key);
	}

	public static void logoutUser() {
		UserInfo loginUser = getUserChache();
		if (oConvertUtils.isNotEmpty(loginUser)) {
			removeUserChache();
		}
	}
}
