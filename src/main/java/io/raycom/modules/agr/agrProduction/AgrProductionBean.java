package io.raycom.modules.agr.agrProduction;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * 供应商药品字典Bean
 * @author guoxugang 
 * @date 2016年12月1日
 * @version 1.0.0
 */
public class AgrProductionBean {
	
	@NotEmpty(message = "供应商药品编码不能为空") 
	private String vendorDrugCode;
	@NotEmpty(message = "药品名称不能为空") 
	private String drugName;
	//@NotEmpty(message = "药品通用名不能为空") 
	private String aliasName;
	//@NotEmpty(message = "助记符不能为空") 
	private String pinyinCode;
	@NotEmpty(message = "最小单位不能为空") 
	private String miniUnit;
	@NotEmpty(message = "最小规格不能为空")
	private String miniSpec;
	@NotEmpty(message = "包装单位不能为空") 
	private String packageUnit;
	@NotEmpty(message = "包装规格不能为空") 
	private String packageSpec;
	@NotEmpty(message = "包装单位与最小单位换算比不能为空") 
	private String packageRatio;
	@NotEmpty(message="采购单位不能为空")
	private String purchaseUnit;
	@NotEmpty(message="采购单位与最小单位转换系数不能为空")
	private String purchaseRatio;
	@NotEmpty(message = "生产厂家不能为空") 
	private String firmName;
	@NotEmpty(message = "药品类别不能为空") 
	private String drugClass;
	@NotEmpty(message = "药品剂型不能为空") 
	private String drugForm;
	@NotEmpty(message = "供应价不能为空") 
	private String purchasePrice;
	//@NotEmpty(message = "零售价不能为空") 
	private String rtPrice;
	@NotEmpty(message = "零差标志不能为空") 
	private String zeroDiff;
	
	
	public String getVendorDrugCode() {
		return vendorDrugCode;
	}
	public void setVendorDrugCode(String vendorDrugCode) {
		this.vendorDrugCode = vendorDrugCode;
	}
	public String getDrugName() {
		return drugName;
	}
	public void setDrugName(String drugName) {
		this.drugName = drugName;
	}
	public String getAliasName() {
		return aliasName;
	}
	public void setAliasName(String aliasName) {
		this.aliasName = aliasName;
	}
	public String getPinyinCode() {
		return pinyinCode;
	}
	public void setPinyinCode(String pinyinCode) {
		this.pinyinCode = pinyinCode;
	}
	public String getMiniUnit() {
		return miniUnit;
	}
	public void setMiniUnit(String miniUnit) {
		this.miniUnit = miniUnit;
	}
	public String getMiniSpec() {
		return miniSpec;
	}
	public void setMiniSpec(String miniSpec) {
		this.miniSpec = miniSpec;
	}
	public String getPackageUnit() {
		return packageUnit;
	}
	public void setPackageUnit(String packageUnit) {
		this.packageUnit = packageUnit;
	}
	public String getPackageSpec() {
		return packageSpec;
	}
	public void setPackageSpec(String packageSpec) {
		this.packageSpec = packageSpec;
	}
	public String getPackageRatio() {
		return packageRatio;
	}
	public void setPackageRatio(String packageRatio) {
		this.packageRatio = packageRatio;
	}
	public String getPurchaseUnit() {
		return purchaseUnit;
	}
	public void setPurchaseUnit(String purchaseUnit) {
		this.purchaseUnit = purchaseUnit;
	}
	public String getPurchaseRatio() {
		return purchaseRatio;
	}
	public void setPurchaseRatio(String purchaseRatio) {
		this.purchaseRatio = purchaseRatio;
	}
	public String getFirmName() {
		return firmName;
	}
	public void setFirmName(String firmName) {
		this.firmName = firmName;
	}
	public String getDrugClass() {
		return drugClass;
	}
	public void setDrugClass(String drugClass) {
		this.drugClass = drugClass;
	}
	public String getDrugForm() {
		return drugForm;
	}
	public void setDrugForm(String drugForm) {
		this.drugForm = drugForm;
	}
	public String getPurchasePrice() {
		return purchasePrice;
	}
	public void setPurchasePrice(String purchasePrice) {
		this.purchasePrice = purchasePrice;
	}
	public String getRtPrice() {
		return rtPrice;
	}
	public void setRtPrice(String rtPrice) {
		this.rtPrice = rtPrice;
	}
	public String getZeroDiff() {
		return zeroDiff;
	}
	public void setZeroDiff(String zeroDiff) {
		this.zeroDiff = zeroDiff;
	}
		
}
