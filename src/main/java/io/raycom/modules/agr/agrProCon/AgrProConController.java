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
	public String list(){
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
		ExcelExportor exportor = new ExcelExportor("SupplierDrugDict.xls", result,model);
		exportor.addColumn("num", "序号");
		exportor.addColumn("vendorDrugCode", "药品编码");
		exportor.addColumn("drugName", "药品名称");
		exportor.addColumn("aliasName", "药品别名");
		exportor.addColumn("pinyinCode", "拼音码");
		exportor.addColumn("miniUnit", "最小包装单位");
		exportor.addColumn("miniSpec", "最小药品规格");
		exportor.addColumn("packageUnit", "包装单位");
		exportor.addColumn("packageSpec", "药品规格");
		exportor.addColumn("packageRatio", "单位换算转换比");
		exportor.addColumn("purchaseUnit", "采购单位");
		exportor.addColumn("purchaseRatio", "采购单位与供应商药品最小单位换算转换比");
		exportor.addColumn("firmName", "生产厂家");
		exportor.addColumn("drugForm", "药品剂型");
		exportor.addColumn("drugClass", "药品分类");
		exportor.addColumn("purchasePrice", "供应价");
		exportor.addColumn("rtPrice", "零售价");
		exportor.addColumn("vendorName", "供应商名称");
		exportor.addColumn("zeroDiff", "零差标志");
		exportor.addColumn("useFlag", "使用状态");
		return EXCEL;
	}
	
	
}