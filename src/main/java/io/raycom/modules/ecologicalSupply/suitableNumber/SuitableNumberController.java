package io.raycom.modules.ecologicalSupply.suitableNumber;

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
@RequestMapping(value="${adminPath}/suitableNumber")
public class SuitableNumberController extends BaseController{
	
	@Autowired
	private SuitableNumberService suitableNumberService;
	
	/**
	 * 进入生态供给量页面
	 * @return
	 */
	@RequestMapping(value={"list",""})
	public String list(Model model){
		model.addAttribute("data", suitableNumberService.getsuitablePara());
		return "ecologicalSupply/suitableNumber/suitableNumber";
	}
	
	/**
	 * 查询生态供给量列表
	 * @return
	 */
	@RequestMapping(value="suitableNumberList")
	@ResponseBody
	public Page<RData> vendorDrugDictList(){
		suitableNumberService.vendorDrugDictList(page);
		return page;
	}
	
	/**
	 * 修改生态供给量适宜参数
	 * @return
	 */
	@RequestMapping(value="saveSuitablePara")
	@ResponseBody
	public String saveSuitablePara(){
		suitableNumberService.saveSuitablePara(rdata);
		return "ok";
	}
	

	/**
	 * 导出Excel
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "querySuitableNumberExcel")
	public String importExcel(Model model){
		RMultiData result =suitableNumberService.querysuitableNumberExcel(rdata);
		ExcelExportor exportor = new ExcelExportor("suitableNumberExcel.xls", result,model);
		exportor.addColumn("num", "序号");
		exportor.addColumn("countryCode", "国家编码");
		exportor.addColumn("countryName", "国家名称");
		exportor.addColumn("suitableNumber", "生态供给适宜量");
		return EXCEL;
	}
	
	
}