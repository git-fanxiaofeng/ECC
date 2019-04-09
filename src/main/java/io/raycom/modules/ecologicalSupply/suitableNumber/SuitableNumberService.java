package io.raycom.modules.ecologicalSupply.suitableNumber;


import io.raycom.core.collection.RData;
import io.raycom.core.collection.RMultiData;
import io.raycom.web.bean.Page;
import io.raycom.web.service.BaseService;

import java.util.ArrayList;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 生态供给
 * @author fxf
 *
 */
@Service
@Transactional(readOnly=true)
public class SuitableNumberService extends BaseService{
	
	@Autowired
	private SuitableNumberDao suitableNumberDao;
	
	/**
	 * 查询供应商药品字典数据
	 * @param page
	 */
	public void vendorDrugDictList(Page<RData> page) {
		page.setData(suitableNumberDao.vendorDrugDictList(page));
	}
	
	
	//导出Excle
	public RMultiData querysuitableNumberExcel(RData rdata){
		RMultiData rMultiData = new RMultiData();
		ArrayList<RData> list =suitableNumberDao.querysuitableNumberExcel(rdata);
		for(int i=0;i<list.size();i++){
			rMultiData.addRData(list.get(i));
		}
		
		return rMultiData;
	}

	/**
	 * 根据Excel生成农产品生产量
	 */
	public RData save(RData rdata, RMultiData mdata) {
		if(mdata.getMaxDataCount()==0)return rdata;
		RData wdata = new RData();
		for (int i = 0; i < mdata.getMaxDataCount(); i++) {
			RData purchaseData = mdata.getRData(i);
			wdata.set("countryCode", purchaseData.getString("countryCode"));
			wdata.set("countryName", purchaseData.getString("countryName"));
			wdata.set("ecoSupplyNumber", purchaseData.getString("ecoSupplyNumber"));
			suitableNumberDao.updateExcelagrPro(wdata);
			//RData rData = selectExcelVendorDrugDict(wdata);
		}
		return rdata;
	}
	private RData selectExcelVendorDrugDict(RData wdata) {
		
		return suitableNumberDao.selectExcelVendorDrugDict(wdata);
	}

	public void inserTo(RData data) {
		suitableNumberDao.inserTo(data);
	}

	public void saveSuitablePara(RData rdata) {
		suitableNumberDao.saveSuitablePara(rdata);
	}


	public RData getsuitablePara() {
		ArrayList<RData> list = suitableNumberDao.getsuitablePara();
		RData r = new RData();
		r.set("suitablePara",list.get(0).getString("suitablePara"));
		return r;
	}


	
	

}