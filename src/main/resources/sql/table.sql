-- Create table
create table TB_ECC_AGR_ImportAndexport
(
  country_code     				VARCHAR2(50),
  country_name 	  				VARCHAR2(50),
  product_type					varchar2(50),
  imports         				VARCHAR2(50),
  exports						varchar2(50),
  Unit_con_coe    				VARCHAR2(50),
  water_content       			VARCHAR2(50),
  Dis_coefficient      			VARCHAR2(50),
  bio_car       	   			VARCHAR2(50),
  Utilization_rate        		VARCHAR2(50),
  Harvest_index      			VARCHAR2(50),
  Trade_waste_rate   			VARCHAR2(50),
  trade_waste_rate_increases  	VARCHAR2(50),
  Import_consumption			varchar2(50),
  export_consumption			varchar2(50)
);

-- Add comments to the table 
comment on table TB_ECC_AGR_ImportAndexport
  is '农业进出口表';
-- Add comments to the columns 
comment on column TB_ECC_AGR_ImportAndexport.country_code
  is '国家代码';
comment on column TB_ECC_AGR_ImportAndexport.country_name
  is '国家名称';
comment on column TB_ECC_AGR_ImportAndexport.product_type
  is '农产品种类';
comment on column TB_ECC_AGR_ImportAndexport.imports
  is '农产品进口量';
comment on column TB_ECC_AGR_ImportAndexport.exports
  is '农产品出口量';
comment on column TB_ECC_AGR_ImportAndexport.Unit_con_coe
  is '单位转换系数';
comment on column TB_ECC_AGR_ImportAndexport.water_content
  is '作物含水量';
comment on column TB_ECC_AGR_ImportAndexport.Dis_coefficient
  is '折粮系数';
comment on column TB_ECC_AGR_ImportAndexport.bio_car
  is '生物量与碳含量转换系数';
comment on column TB_ECC_AGR_ImportAndexport.Utilization_rate
  is '农业资源利用率';
comment on column TB_ECC_AGR_ImportAndexport.Harvest_index
  is '收获指数';
comment on column TB_ECC_AGR_ImportAndexport.Trade_waste_rate
  is '农业贸易浪费率';
comment on column TB_ECC_AGR_ImportAndexport.trade_waste_rate_increases
  is '农业贸易浪费率提升率';
comment on column TB_ECC_AGR_ImportAndexport.Import_consumption
  is '农业进口消耗量';
comment on column TB_ECC_AGR_ImportAndexport.export_consumption
  is '农业出口消耗量';
