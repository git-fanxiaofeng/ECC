package io.raycom.modules.ecologicalSupply.onlineNumber;

import io.raycom.core.collection.RData;
import io.raycom.core.collection.RMultiData;
import io.raycom.tools.file.AttachmentUtils;
import io.raycom.utils.excel.ExcelExportor;
import io.raycom.web.bean.Page;
import io.raycom.web.support.mvc.controller.BaseController;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 生态供给
 * @author fxf
 *
 */
@Controller
@RequestMapping(value="${adminPath}/onlineNumber")
public class OnlineNumberController extends BaseController{
	
	@Autowired
	private OnlineNumberService onlineNumberService;
	
	/**
	 * 进入生态供给量页面
	 * @return
	 */
	@RequestMapping(value={"list",""})
	public String list(Model model){
		model.addAttribute("data", onlineNumberService.getOnlinePara());
		return "ecologicalSupply/onlineNumber/onlineNumber";
	}
	
	/**
	 * 查询生态供给量列表
	 * @return
	 */
	@RequestMapping(value="onlineNumberList")
	@ResponseBody
	public Page<RData> vendorDrugDictList(){
		onlineNumberService.vendorDrugDictList(page);
		return page;
	}
	
	/**
	 * 修改生态供给量上限参数
	 * @return
	 */
	@RequestMapping(value="saveOnlinePara")
	@ResponseBody
	public String saveOnlinePara(){
		onlineNumberService.saveOnlinePara(rdata);
		return "ok";
	}
	

	/**
	 * 导出Excel
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "queryOnlineNumberExcel")
	public String importExcel(Model model){
		RMultiData result =onlineNumberService.queryOnlineNumberExcel(rdata);
		ExcelExportor exportor = new ExcelExportor("onlineNumberExcel.xls", result,model);
		exportor.addColumn("num", "序号");
		exportor.addColumn("countryCode", "国家编码");
		exportor.addColumn("countryName", "国家名称");
		exportor.addColumn("onlineNumber", "生态供给上限量");
		return EXCEL;
	}
	
	
}