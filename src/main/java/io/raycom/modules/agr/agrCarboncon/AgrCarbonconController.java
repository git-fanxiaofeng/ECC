package io.raycom.modules.agr.agrCarboncon;

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
@RequestMapping(value="${adminPath}/agrCarboncon")
public class AgrCarbonconController extends BaseController{
	
	@Autowired
	private AgrCarbonconService agrProductionService;
	
	/**
	 * 进入农产品生产量列表页面
	 * @return
	 */
	@RequestMapping(value={"list",""})
	public String list(){
		return "agr/agrCarboncon/agrCarbonconList";
	}
	
	/**
	 * 查询农产品生产量列表
	 * @return
	 */
	@RequestMapping(value="agrCarbonconList")
	@ResponseBody
	public Page<RData> vendorDrugDictList(){
		agrProductionService.vendorDrugDictList(page);
		return page;
	}
	

	/**
	 * 导出供应商药品字典Excel
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "querySupplierDrugDictExcel")
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
	
	
	/**
	 * 导入EXcel文件
	 */
	@RequestMapping(value="import")
	@ResponseBody
	public RData generateOrders() {
        Sheet sheet;
        Workbook book;
        Cell cell1;
        try { 
            //读取的excel文件路径
            book= Workbook.getWorkbook(new File(AttachmentUtils.getFileById(rdata.getString("fileId")))); 
            //获得第一个工作表对象(ecxel中sheet的编号从0开始,0,1,2,3,....)
            System.out.println(book);
            sheet=book.getSheet(0);
            int coloumNum=sheet.getColumns();//获得总列数
            int rowNum=sheet.getRows();//获得总行数
            for(int j=1;j<rowNum;j++){
            	List<String> list= new ArrayList<String>();
            	for(int i=0;i<coloumNum;i++){
            		cell1=sheet.getCell(i,j);
            		list.add(cell1.getContents());
            	}
            	AgrCarbonconBean sBean = new AgrCarbonconBean();
            	sBean.setCountryCode(list.get(0));
            	sBean.setCountryName(list.get(1));
            	sBean.setTea(list.get(2));
            	sBean.setBeans(list.get(3));
            	sBean.setNuts(list.get(4));
            	sBean.setCoffee(list.get(5));
            	sBean.setCocoa(list.get(6));
            	sBean.setHemp(list.get(7));
            	sBean.setCotton(list.get(8));
            	sBean.setOtherGrains(list.get(9));
            	sBean.setVegetables(list.get(10));
            	sBean.setPotato(list.get(11));
            	sBean.setRice(list.get(12));
            	sBean.setSugar(list.get(13));
            	sBean.setWheat(list.get(14));
            	sBean.setTobacco(list.get(15));
            	sBean.setCorn(list.get(16));
            	sBean.setOil(list.get(17));
            	sBean.setPalm(list.get(18));
            	String result = validateBeanWithError(sBean);
        		if("".equals(result)){//验证通过
            		mdata.add("countryCode", list.get(0));
            		mdata.add("countryName", list.get(1));
            		mdata.add("tea", list.get(2));
            		mdata.add("beans", list.get(3));
            		mdata.add("nuts", list.get(4));
            		mdata.add("coffee", list.get(5));
            		mdata.add("cocoa", list.get(6));
            		mdata.add("hemp", list.get(7));
            		mdata.add("cotton", list.get(8));
            		mdata.add("otherGrains", list.get(9));
            		mdata.add("vegetables", list.get(10));
            		mdata.add("rice", list.get(11));
            		mdata.add("potato", list.get(12));
            		mdata.add("sugar", list.get(13));
            		mdata.add("wheat", list.get(14));
            		mdata.add("tobacco", list.get(15));
            		mdata.add("corn", list.get(16));
            		mdata.add("oil", list.get(17));
            		mdata.add("palm", list.get(18));
        		}else{
        			rdata.set("errorMsg", result);
        			rdata.set("hasError", "Y");
        			return rdata;
        			//result值为错误信息，即bean中 message定义的信息
        		}	
            }
            rdata = agrProductionService.save(rdata,mdata);
            book.close(); 
        }
        catch(Exception e)  { 
        	e.printStackTrace();
        	rdata.set("errorMsg", e.getMessage());
			rdata.set("hasError", "Y");
			return rdata;
        }
        rdata.set("hasError", "N");
		return rdata;
    }
}