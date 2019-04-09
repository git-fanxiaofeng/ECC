package io.raycom.modules.agr.agrWaterConver;


import io.raycom.core.collection.RData;
import io.raycom.web.bean.Page;
import io.raycom.web.persistence.annotation.MyBatisDao;

import java.util.ArrayList;
import java.util.List;

/**
 * 农产品生产量
 * @author fxf
 *
 */
@MyBatisDao
public interface AgrWaterConverDao{
	
	ArrayList<RData> getFirmInfo();

	List<RData> vendorDrugDictList(Page<RData> page);
	
	RData getVendorDrugDict(RData rdata);
	
	void updateDrugDict(RData rdata);
	
	void deleteDrugDict(RData rdata);
	
	void addDrugDict(RData rdata);
	
	RData inspectDrugDict(RData rdata);
	
	ArrayList<RData> vendorDrugDictListExcle(RData rdata);
	
	RData selectVendorDrugDict(RData rdata);
	
	RData findDrugById(RData rdata);

	void inserTo(RData data);

	ArrayList<RData> getAllFirmInfo();

	RData getVendorCode(RData data);

	RData getVendorDrugCode();

	RData selectExcelVendorDrugDict(RData wdata);

	void updateExcelagrPro(RData wdata);



	
}