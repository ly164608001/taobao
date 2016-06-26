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
	
	public static String getKey(UserInfo loginUser) {
		return PasswordUtil.encrypt("user" + loginUser.getApp() , "userid" + loginUser.getId(), PasswordUtil.getStaticSalt());
	}
	
	public static void addUserChache(UserInfo loginUser) {
		if (oConvertUtils.isNotEmpty(loginUser)) {
			Element element = new Element(getKey(loginUser), loginUser);
			userCache.put(element);
		}
	}
	
	public static void removeUserChache(UserInfo loginUser) {
		userCache.remove(getKey(loginUser));
	}
	
	public static void updateUserChache(UserInfo loginUser) {
		removeUserChache(loginUser);
		addUserChache(loginUser);
	}
	
	public static UserInfo getUserChache(UserInfo loginUser) {
		Element element = userCache.get(getKey(loginUser));
		if (oConvertUtils.isNotEmpty(element)) {
			return (UserInfo) element.getObjectValue();
		}
		return null;
	}
	public static UserInfo getLoginUser() {
		UserInfo loginUser = getLoginMobileUser();
		if (oConvertUtils.isNotEmpty(loginUser)) {
			UserInfo chacheUser= getUserChache(loginUser);
			if (oConvertUtils.isNotEmpty(chacheUser) 
					&& oConvertUtils.isNotEmpty(chacheUser.getUuid())
					&& chacheUser.getUuid().equals(loginUser.getUuid())) {
				return chacheUser;
			}
		}
		return null;
	}
	
	private static UserInfo getLoginMobileUser() {
		String userid = ContextHolderUtils.getRequest().getHeader("userid");
	    String app = ContextHolderUtils.getRequest().getHeader("app");
	    String uuid = ContextHolderUtils.getRequest().getHeader("uuid");
	    UserInfo loginUser = new UserInfo();
	    loginUser.setId(oConvertUtils.getInt(userid));
	    loginUser.setApp(app);
	    loginUser.setUuid(uuid);
		return loginUser;
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
		UserInfo loginUser = getLoginMobileUser();
		if (oConvertUtils.isNotEmpty(loginUser)) {
			removeUserChache(getLoginMobileUser());
		}
	}
}
