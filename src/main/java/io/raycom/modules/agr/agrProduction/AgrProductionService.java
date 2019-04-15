package io.raycom.modules.agr.agrProduction;


import io.raycom.core.collection.RData;
import io.raycom.core.collection.RMultiData;
import io.raycom.web.bean.Page;
import io.raycom.web.service.BaseService;

import java.util.ArrayList;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 农产品生产量
 * @author fxf
 *
 */
@Service
@Transactional(readOnly=true)
public class AgrProductionService extends BaseService{
	
	@Autowired
	private AgrProductionDao agrProductionDao;
	
	/**
	 * 查询供应商药品字典数据
	 * @param page
	 */
	public void vendorDrugDictList(Page<RData> page) {
		page.setData(agrProductionDao.vendorDrugDictList(page));
	}
	
	/**
	 * 根据药品ID查询药品详细信息
	 * @param rdata
	 * @return
	 */
	public RData getVendorDrugDict(RData rdata){
		return agrProductionDao.getVendorDrugDict(rdata);
	}
	
	
	//导出药品Excle
	public RMultiData supplierdrugDictListExcle(RData rdata){
		RMultiData rMultiData = new RMultiData();
		ArrayList<RData> list =agrProductionDao.vendorDrugDictListExcle(rdata);
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
		agrProductionDao.deletePro();
		for (int i = 0; i < mdata.getMaxDataCount(); i++) {
			RData purchaseData = mdata.getRData(i);
			wdata.set("countryCode", purchaseData.getString("countryCode"));
			wdata.set("countryName", purchaseData.getString("countryName"));
			wdata.set("tea", purchaseData.getString("tea"));
			wdata.set("beans", purchaseData.getString("beans"));
			wdata.set("nuts", purchaseData.getString("nuts"));
			wdata.set("coffee", purchaseData.getString("coffee"));
			wdata.set("cocoa", purchaseData.getString("cocoa"));
			wdata.set("hemp", purchaseData.getString("hemp"));
			wdata.set("cotton", purchaseData.getString("cotton"));
			wdata.set("othergrains", purchaseData.getString("othergrains"));
			wdata.set("vegetables", purchaseData.getString("vegetables"));
			wdata.set("rice", purchaseData.getString("rice"));
			wdata.set("potato",purchaseData.getString("potato"));
			wdata.set("sugar",purchaseData.getString("sugar"));
			wdata.set("wheat",purchaseData.getString("wheat"));
			wdata.set("tobacco", purchaseData.getString("tobacco"));
			wdata.set("corn", purchaseData.getString("corn"));
			wdata.set("oil", purchaseData.getString("oil"));
			wdata.set("palm", purchaseData.getString("palm"));
			agrProductionDao.updateExcelagrPro(wdata);
			//RData rData = selectExcelVendorDrugDict(wdata);
		}
		return rdata;
	}
	private RData selectExcelVendorDrugDict(RData wdata) {
		
		return agrProductionDao.selectExcelVendorDrugDict(wdata);
	}

	public void inserTo(RData data) {
		agrProductionDao.inserTo(data);
	}

	public void agrWaterConList(Page<RData> page) {
		page.setData(agrProductionDao.agrWaterConList(page));
	}


	
	

}