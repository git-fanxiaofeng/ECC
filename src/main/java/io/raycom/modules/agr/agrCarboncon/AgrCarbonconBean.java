package io.raycom.modules.agr.agrCarboncon;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * 农产品生产量bean
 * @author fxf
 *
 */
public class AgrCarbonconBean {
	
	@NotEmpty(message = "国家代码不能为空") 
	private String countryCode;
	@NotEmpty(message = "国家名称不能为空") 
	private String countryName;
	@NotEmpty(message = "茶生产量不能为空") 
	private String tea;
	@NotEmpty(message = "豆类生产量不能为空") 
	private String beans;
	@NotEmpty(message = "坚果生产量不能为空") 
	private String nuts;
	@NotEmpty(message = "咖啡生产量不能为空")
	private String coffee;
	@NotEmpty(message = "可可生产量不能为空") 
	private String cocoa;
	@NotEmpty(message = "麻类生产量不能为空") 
	private String hemp;
	@NotEmpty(message = "棉花生产量不能为空") 
	private String cotton;
	@NotEmpty(message = "其他谷物生产量不能为空") 
	private String otherGrains;
	@NotEmpty(message = "蔬果生产量不能为空") 
	private String vegetables;
	@NotEmpty(message = "水稻生产量不能为空") 
	private String rice;
	@NotEmpty(message = "薯类生产量不能为空") 
	private String potato;
	@NotEmpty(message = "糖料作物生产量不能为空") 
	private String sugar;
	@NotEmpty(message = "小麦生产量不能为空") 
	private String wheat;
	@NotEmpty(message = "烟草生产量不能为空") 
	private String tobacco;
	@NotEmpty(message = "玉米生产量不能为空") 
	private String corn;
	@NotEmpty(message = "油料作物生产量不能为空") 
	private String oil;
	@NotEmpty(message = "棕榈作物生产量不能为空") 
	private String palm;
	public String getTea() {
		return tea;
	}
	public void setTea(String tea) {
		this.tea = tea;
	}
	public String getBeans() {
		return beans;
	}
	public void setBeans(String beans) {
		this.beans = beans;
	}
	public String getNuts() {
		return nuts;
	}
	public void setNuts(String nuts) {
		this.nuts = nuts;
	}
	public String getCoffee() {
		return coffee;
	}
	public void setCoffee(String coffee) {
		this.coffee = coffee;
	}
	public String getCocoa() {
		return cocoa;
	}
	public void setCocoa(String cocoa) {
		this.cocoa = cocoa;
	}
	public String getHemp() {
		return hemp;
	}
	public void setHemp(String hemp) {
		this.hemp = hemp;
	}
	public String getCotton() {
		return cotton;
	}
	public void setCotton(String cotton) {
		this.cotton = cotton;
	}
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
	public String getOtherGrains() {
		return otherGrains;
	}
	public void setOtherGrains(String otherGrains) {
		this.otherGrains = otherGrains;
	}
	public String getVegetables() {
		return vegetables;
	}
	public void setVegetables(String vegetables) {
		this.vegetables = vegetables;
	}
	public String getRice() {
		return rice;
	}
	public void setRice(String rice) {
		this.rice = rice;
	}
	public String getPotato() {
		return potato;
	}
	public void setPotato(String potato) {
		this.potato = potato;
	}
	public String getSugar() {
		return sugar;
	}
	public void setSugar(String sugar) {
		this.sugar = sugar;
	}
	public String getWheat() {
		return wheat;
	}
	public void setWheat(String wheat) {
		this.wheat = wheat;
	}
	public String getTobacco() {
		return tobacco;
	}
	public void setTobacco(String tobacco) {
		this.tobacco = tobacco;
	}
	public String getCorn() {
		return corn;
	}
	public void setCorn(String corn) {
		this.corn = corn;
	}
	public String getOil() {
		return oil;
	}
	public void setOil(String oil) {
		this.oil = oil;
	}
	public String getPalm() {
		return palm;
	}
	public void setPalm(String palm) {
		this.palm = palm;
	}
}
