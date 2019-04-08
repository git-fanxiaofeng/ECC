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
	 * 根据Excel生成的供应商药品字典
	 */
	public RData save(RData rdata, RMultiData mdata) {
		if(mdata.getMaxDataCount()==0)return rdata;
		RData wdata = new RData();
		for (int i = 0; i < mdata.getMaxDataCount(); i++) {
			RData purchaseData = mdata.getRData(i);
			wdata.set("vendorDrugCode", purchaseData.getString("vendorDrugCode"));
			wdata.set("drugName", purchaseData.getString("drugName"));
			wdata.set("aliasName", purchaseData.getString("aliasName"));
			wdata.set("drugForm", purchaseData.getString("drugForm"));
			wdata.set("drugClass", purchaseData.getString("drugClass"));
			wdata.set("packageSpec", purchaseData.getString("packageSpec"));
			wdata.set("packageUnit", purchaseData.getString("packageUnit"));
			wdata.set("purchaseRatio", purchaseData.getString("purchaseRatio"));
			wdata.set("purchaseUnit", purchaseData.getString("purchaseUnit"));
			wdata.set("miniUnit", purchaseData.getString("miniUnit"));
			wdata.set("miniSpec", purchaseData.getString("miniSpec"));
			wdata.set("packageRatio", purchaseData.getString("packageRatio"));
			wdata.set("vendorMiniUnit",purchaseData.getString("vendorMiniUnit"));
			wdata.set("vendorPurchaseUnit",purchaseData.getString("vendorPurchaseUnit"));
			wdata.set("vendorPurchaseRatio",purchaseData.getString("vendorPurchaseRatio"));
			wdata.set("firmName", purchaseData.getString("firmName"));
			wdata.set("purchasePrice", purchaseData.getString("purchasePrice"));
			wdata.set("rtPrice", purchaseData.getString("rtPrice"));
			wdata.set("zeroDiff", purchaseData.getString("zeroDiff"));
			agrProductionDao.updateExcelDrugDict(wdata);
			RData rData = selectExcelVendorDrugDict(wdata);
		}
		return rdata;
	}
	private RData selectExcelVendorDrugDict(RData wdata) {
		
		return agrProductionDao.selectExcelVendorDrugDict(wdata);
	}

	public void inserTo(RData data) {
		agrProductionDao.inserTo(data);
	}


	
	

}