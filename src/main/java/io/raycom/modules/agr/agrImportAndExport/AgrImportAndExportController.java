package io.raycom.modules.agr.agrImportAndExport;

import io.raycom.core.collection.RData;
import io.raycom.tools.file.AttachmentUtils;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 农业进出口controller
 * @author fxf
 *
 */
@Controller
@RequestMapping(value="${adminPath}/agrImportAndExport")
public class AgrImportAndExportController extends BaseController{
	
	@Autowired
	private AgrImportAndExportService agrImportAndExportService;
	
	/**
	 * 进入农业进出口列表页面
	 * @return
	 */
	@RequestMapping(value={"list",""})
	public String list(){
		return "agr/agrImportAndExport/agrImportAndExportList";
	}
	
	/**
	 * 查询农业进出口列表
	 * @return
	 */
	@RequestMapping(value="agrImportAndExportList")
	@ResponseBody
	public Page<RData> queryAgrImportAndExport(){
		agrImportAndExportService.queryAgrImportAndExport(page);
		return page;
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
            sheet=book.getSheet(0);
            int coloumNum=sheet.getColumns();//获得总列数
            int rowNum=sheet.getRows();//获得总行数
        	List<String> typeList = new ArrayList<String>();
            for(int j=0;j<rowNum;j++){
            	List<String> list= new ArrayList<String>();
            	for(int i=0;i<coloumNum;i++){
            		cell1=sheet.getCell(i,j);
            		list.add(cell1.getContents());
            	}
//            	AgrImportAndExportBean sBean = new AgrImportAndExportBean();
//           
//            	String result = validateBeanWithError(sBean);
//        		if("".equals(result)){//验证通过
            		for(int i =2;i<coloumNum;i++){
            			if(j==0){
            				typeList.add(list.get(i));
            			}else{
            				mdata.add("productType", typeList.get(i-2));
            				mdata.add("countryCode", list.get(0));
                    		mdata.add("countryName", list.get(1));
                    		mdata.add("cdata", list.get(i));
            			}
             		}
//        		}else{
//        			rdata.set("errorMsg", result);
//        			rdata.set("hasError", "Y");
//        			return rdata;
//        			//result值为错误信息，即bean中 message定义的信息
//        		}	
            }
            rdata = agrImportAndExportService.save(rdata,mdata);
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