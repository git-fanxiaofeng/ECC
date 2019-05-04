package io.raycom.modules.agr.agrImportAndExport;


import io.raycom.core.collection.RData;
import io.raycom.core.collection.RMultiData;
import io.raycom.web.bean.Page;
import io.raycom.web.service.BaseService;

import java.util.ArrayList;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 农业进出口service
 * @author fxf
 *
 */
@Service
@Transactional(readOnly=true)
public class AgrImportAndExportService extends BaseService{
	
	@Autowired
	private AgrImportAndExportDao agrProductionDao;
	
	/**
	 * 查询列表展示
	 * @param page
	 */
	public void queryAgrImportAndExport(Page<RData> page) {
		page.setData(agrProductionDao.queryAgrImportAndExport(page));
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
		for (int i = 0; i < mdata.getMaxDataCount(); i++) {
			RData purchaseData = mdata.getRData(i);
			wdata.set("countryCode", purchaseData.getString("countryCode"));
			wdata.set("countryName", purchaseData.getString("countryName"));
			wdata.set("productType", purchaseData.getString("type"));
			wdata.set("imports", purchaseData.getString("imports"));
			agrProductionDao.updateExcelagrPro(wdata);
		}
		return rdata;
	}

	public void inserTo(RData data) {
		agrProductionDao.inserTo(data);
	}

	public void agrWaterConList(Page<RData> page) {
		page.setData(agrProductionDao.agrWaterConList(page));
	}


	
	

}