package io.raycom.modules.agr.agrProCon;

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
 * 农产品生产量
 * @author fxf
 *
 */
@Controller
@RequestMapping(value="${adminPath}/agrProCon")
public class AgrProConController extends BaseController{
	
	@Autowired
	private AgrProConService agrProductionService;
	
	/**
	 * 进入农产品生产量列表页面
	 * @return
	 */
	@RequestMapping(value={"list",""})
	public String list(Model model){
		model.addAttribute("data", agrProductionService.getOnlinePara());
		return "agr/agrProCon/agrProConList";
	}
	
	/**
	 * 查询农产品生产量列表
	 * @return
	 */
	@RequestMapping(value="agrProConList")
	@ResponseBody
	public Page<RData> vendorDrugDictList(){
		agrProductionService.vendorDrugDictList(page);
		return page;
	}
	
	@RequestMapping(value="save")
	@ResponseBody
	public String save(){
		agrProductionService.save(rdata);
		return "ok";
	}
	

	/**
	 * 导出供应商药品字典Excel
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "Excel")
	public String importExcel(Model model){
		RMultiData result =agrProductionService.supplierdrugDictListExcle(rdata);
		ExcelExportor exportor = new ExcelExportor("agrProCon.xls", result,model);
		exportor.addColumn("num", "序号");
		exportor.addColumn("countryCode", "国家编码");
		exportor.addColumn("countryName", "国家名称");
		exportor.addColumn("tea", "茶");
		exportor.addColumn("beans", "豆类");
		exportor.addColumn("nuts", "坚果");
		exportor.addColumn("coffee", "咖啡");
		exportor.addColumn("cocoa", "可可");
		exportor.addColumn("hemp", "麻类");
		exportor.addColumn("cotton", "棉花");
		exportor.addColumn("otherGrains", "其它谷物");
		exportor.addColumn("vegetables", "蔬果");
		exportor.addColumn("potato", "薯类");
		exportor.addColumn("rice", "水稻");
		exportor.addColumn("sugar", "糖料");
		exportor.addColumn("wheat", "小麦");
		exportor.addColumn("tobacco", "烟草");
		exportor.addColumn("oil", "油料");
		exportor.addColumn("corn", "玉米");
		exportor.addColumn("palm", "棕榈");
		return EXCEL;
	}
	
	
}