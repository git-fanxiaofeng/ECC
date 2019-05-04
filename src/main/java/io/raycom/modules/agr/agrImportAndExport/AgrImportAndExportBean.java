package io.raycom.modules.agr.agrImportAndExport;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * 农业进出口bean
 * @author fxf
 *
 */
public class AgrImportAndExportBean {
	
		@NotEmpty(message = "国家代码不能为空") 
		private String  countryCode;
		@NotEmpty(message = "国家名称不能为空") 
		private String  countryName;
		@NotEmpty(message = "农产品类型不能为空")
		private String 	type;
		@NotEmpty(message = "农产品类型不能为空")
		private String 	imports;
		@NotEmpty(message = "农产品类型不能为空")
		private String 	exports;
		@NotEmpty(message = "农产品类型不能为空")
		private String 	unitConCoe;
		@NotEmpty(message = "农产品类型不能为空")
		private String 	waterContent;
		@NotEmpty(message = "农产品类型不能为空")
		private String 	disCoefficient;
		@NotEmpty(message = "农产品类型不能为空")
		private String 	bioCar;
		@NotEmpty(message = "农产品类型不能为空")
		private String 	utilizationRate;
		@NotEmpty(message = "农产品类型不能为空")
		private String 	harvestIndex;
		@NotEmpty(message = "农产品类型不能为空")
		private String 	tradeWasteRate;
		@NotEmpty(message = "农产品类型不能为空")
		private String 	tradeWasteRateIncreases;
		@NotEmpty(message = "农产品类型不能为空")
		private String 	importConsumption;
		@NotEmpty(message = "农产品类型不能为空")
		private String 	exportConsumption;
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
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		public String getImports() {
			return imports;
		}
		public void setImports(String imports) {
			this.imports = imports;
		}
		public String getExports() {
			return exports;
		}
		public void setExports(String exports) {
			this.exports = exports;
		}
		public String getUnitConCoe() {
			return unitConCoe;
		}
		public void setUnitConCoe(String unitConCoe) {
			this.unitConCoe = unitConCoe;
		}
		public String getWaterContent() {
			return waterContent;
		}
		public void setWaterContent(String waterContent) {
			this.waterContent = waterContent;
		}
		public String getDisCoefficient() {
			return disCoefficient;
		}
		public void setDisCoefficient(String disCoefficient) {
			this.disCoefficient = disCoefficient;
		}
		public String getBioCar() {
			return bioCar;
		}
		public void setBioCar(String bioCar) {
			this.bioCar = bioCar;
		}
		public String getUtilizationRate() {
			return utilizationRate;
		}
		public void setUtilizationRate(String utilizationRate) {
			this.utilizationRate = utilizationRate;
		}
		public String getHarvestIndex() {
			return harvestIndex;
		}
		public void setHarvestIndex(String harvestIndex) {
			this.harvestIndex = harvestIndex;
		}
		public String getTradeWasteRate() {
			return tradeWasteRate;
		}
		public void setTradeWasteRate(String tradeWasteRate) {
			this.tradeWasteRate = tradeWasteRate;
		}
		public String getTradeWasteRateIncreases() {
			return tradeWasteRateIncreases;
		}
		public void setTradeWasteRateIncreases(String tradeWasteRateIncreases) {
			this.tradeWasteRateIncreases = tradeWasteRateIncreases;
		}
		public String getImportConsumption() {
			return importConsumption;
		}
		public void setImportConsumption(String importConsumption) {
			this.importConsumption = importConsumption;
		}
		public String getExportConsumption() {
			return exportConsumption;
		}
		public void setExportConsumption(String exportConsumption) {
			this.exportConsumption = exportConsumption;
		}
}
