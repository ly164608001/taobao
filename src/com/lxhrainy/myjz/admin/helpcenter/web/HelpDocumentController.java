package com.lxhrainy.myjz.admin.helpcenter.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.helpcenter.service.impl.HelpDocumentService;


/**
 * 帮助文档Controller
 * @author xueyunteng
 * @version 2016-06-28
 */
@Controller
@RequestMapping("/admin/helpcenter/document")
public class HelpDocumentController extends BaseController {

	@Autowired
	private HelpDocumentService helpDocumentService;

}