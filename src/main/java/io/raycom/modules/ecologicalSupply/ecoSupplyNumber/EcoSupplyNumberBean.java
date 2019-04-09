package io.raycom.modules.ecologicalSupply.ecoSupplyNumber;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * 生态供给bean
 * @author fxf
 *
 */
public class EcoSupplyNumberBean {
	
	@NotEmpty(message = "国家代码不能为空") 
	private String countryCode;
	@NotEmpty(message = "国家名称不能为空") 
	private String countryName;
	@NotEmpty(message = "生态供给量不能为空") 
	private String ecoSupplyNumber;
	public String getCountryCode() {
		return countryCode;
	}
	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}
	public String getCountryName() {
		return countryName;
	}
	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}
	public String getEcoSupplyNumber() {
		return ecoSupplyNumber;
	}
	public void setEcoSupplyNumber(String ecoSupplyNumber) {
		this.ecoSupplyNumber = ecoSupplyNumber;
	}
}
