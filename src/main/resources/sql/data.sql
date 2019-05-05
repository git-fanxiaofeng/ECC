prompt PL/SQL Developer import file
prompt Created on 2019年5月5日 by fxf
set feedback off
set define off
prompt Loading COM_DICT...
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000280, '1', '国产', 'producedArea', '产地', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000281, '2', '港澳台', 'producedArea', '产地', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000282, '3', '进口', 'producedArea', '产地', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000330, '01', '允许登录', 'loginStatus', '登录状态', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000331, '02', '禁止登录', 'loginStatus', '登录状态', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000332, 'liability_owned', '有限责任公司（自然人独资或控股）', 'companyType', '公司性质', 10, null, null, '10000001', to_date('15-02-2017 16:26:47', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000350, '08', '库存品采购', 'emtDelStatus', '申领类型', 1, null, null, 'system', to_date('16-11-2016 15:20:01', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000356, '01', '允许登录', 'loginStatus', '登录状态', 1, 'System', to_date('15-12-2016 15:34:54', 'dd-mm-yyyy hh24:mi:ss'), 'System', to_date('15-12-2016 15:34:54', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000357, '02', '禁止登录', 'loginStatus', '登录状态', 2, 'System', to_date('15-12-2016 15:35:32', 'dd-mm-yyyy hh24:mi:ss'), 'System', to_date('15-12-2016 15:35:32', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000358, 'taxId', '税务登记号', 'certificateType', '资质证类型', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000359, 'orgCode', '组织机构号', 'certificateType', '资质证类型', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000360, 'instruRegLicense', '器械注册证', 'certificateType', '资质证类型', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000361, 'businessCert', '经营许可证', 'certificateType', '资质证类型', 5, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000362, 'productLicense', '生产许可证', 'certificateType', '资质证类型', 6, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000363, 'salesmanAuthor', '业务员授权', 'certificateType', '资质证类型', 7, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000364, 'agencyAuthor', '代理授权书', 'certificateType', '资质证类型', 8, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000365, 'merge', '三证合一', 'certificateType', '资质证类型', 9, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000366, 'merge51', '五证合一', 'certificateType', '资质证类型', 10, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000367, 'securityAuthentication', '安全认证书（卫消）', 'certificateType', '资质证类型', 11, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000368, 'other', '其他证件', 'certificateType', '资质证类型', 12, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000369, 'businessLicense', '营业执照', 'certificateType', '资质证类型', 1, '10000001', to_date('04-01-2017 16:14:47', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('04-01-2017 16:14:47', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000380, '02', '退货完成', 'revokeType', '退货状态', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000381, '03', '已取消退货', 'revokeType', '退货状态', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000382, '05', '待处理', 'revokeType', '退货状态', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000383, '07', '订单已取消', 'purchaseType', '采购订单状态', 7, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000400, 'superUserID', 'admin', 'dataConfigType', '数据配置类型-超级用户账户', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000420, '04', '待提交', 'approveStatus', '暂存，产品维护状态', 4, '10000001', to_date('20-04-2017 11:03:22', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('20-04-2017 11:03:37', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000421, null, '有限责任公司（自然人独资或控股）', null, '公司性质', 10, 'System', to_date('15-02-2017 16:29:37', 'dd-mm-yyyy hh24:mi:ss'), 'System', to_date('15-02-2017 16:29:37', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000460, '05', '待提交', 'invoiceStatus', '待提交', 5, '10000001', to_date('06-05-2017 21:39:00', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('06-05-2017 21:39:00', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000484, '1', '一类', 'emtRisk', '风险分类', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000485, '2', '二类', 'emtRisk', '风险分类', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000486, '3', '三类', 'emtRisk', '风险分类', 3, null, null, '10000001', to_date('27-10-2016 09:39:39', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000500, 'vendor', '供应商资质', 'certCategory', '资质证分类', 1, '10000001', to_date('25-05-2017 16:47:51', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('25-05-2017 16:47:51', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000501, 'manufacture', '生产厂家资质', 'certCategory', '资质证分类', 2, '10000001', to_date('25-05-2017 16:49:06', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('25-05-2017 16:49:06', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000502, 'authorization', '授权资质', 'certCategory', '资质证分类', 3, '10000001', to_date('25-05-2017 16:50:48', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('25-05-2017 16:50:48', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1001304, '01', '直接采购', 'negotiationWay', '谈判方式', 1, '10000001', to_date('10-01-2017', 'dd-mm-yyyy'), '10000001', to_date('10-01-2017', 'dd-mm-yyyy'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1001305, '02', '院内磋商', 'negotiationWay', '谈判方式', 2, '10000001', to_date('10-01-2017', 'dd-mm-yyyy'), '10000001', to_date('10-01-2017', 'dd-mm-yyyy'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1001306, '03', '公开招标', 'negotiationWay', '谈判方式', 3, '10000001', to_date('10-01-2017', 'dd-mm-yyyy'), '10000001', to_date('10-01-2017', 'dd-mm-yyyy'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1001453, '01', '领导用车', 'emtUse', '车辆用途', 1, '10000001', to_date('21-04-2017 15:58:33', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('21-04-2017 15:58:33', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1001454, '02', '公务用车', 'emtUse', '车辆用途', 2, '10000001', to_date('21-04-2017 15:59:47', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('21-04-2017 15:59:47', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1001455, '03', '专业用车', 'emtUse', '车辆用途', 3, '10000001', to_date('21-04-2017 16:00:17', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('21-04-2017 16:00:17', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1001456, '04', '生活用车', 'emtUse', '车辆用途', 4, '10000001', to_date('21-04-2017 16:00:49', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('21-04-2017 16:00:49', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1001457, '05', '接待用车', 'emtUse', '车辆用途', 5, '10000001', to_date('21-04-2017 16:01:30', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('21-04-2017 16:01:30', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1001458, '06', '其他用车', 'emtUse', '车辆用途', 6, '10000001', to_date('21-04-2017 16:05:52', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('21-04-2017 16:09:51', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000002, '01', '使用率', 'arithmeticType', '算法类型', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000003, '02', '订货点', 'arithmeticType', '算法类型', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000004, '03', '固定值', 'arithmeticType', '算法类型', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000005, '04', '预测订货', 'arithmeticType', '算法类型', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000014, 'vendor', '供应商资质', 'certificateName', '资质证类别 ', 5, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000015, 'manufacture', '生产厂家资质', 'certificateName', '资质证类别', 6, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000016, 'author', '授权资质', 'certificateName', '资质证类别', 7, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000017, '01', '不可收费', 'chargeType', '物资收费类型', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000018, '02', '单独收费', 'chargeType', '物资收费类型', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000019, '03', '打包收费', 'chargeType', '物资收费类型', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000020, 'soe', '国有企业', 'companyType', '公司性质', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000021, 'collective', '集体企业', 'companyType', '公司性质', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000022, 'stock', '股份制合作制企业', 'companyType', '公司性质', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000023, 'private', '私营企业', 'companyType', '公司性质', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000024, 'liability', '有限责任公司', 'companyType', '公司性质', 5, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000025, 'limited', '股份有限公司', 'companyType', '公司性质', 6, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000026, 'joint', '联营企业', 'companyType', '公司性质', 7, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000027, 'foreign-owned', '外商独资', 'companyType', '公司性质', 8, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000028, 'self-employed', '个体', 'companyType', '公司性质', 9, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000032, '04', '已打印', 'contractStatus', '合同状态', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000033, '05', '复核通过', 'contractStatus', '合同状态', 5, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000034, '06', '复核拒绝', 'contractStatus', '合同状态', 6, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000035, '07', '已完成', 'contractStatus', '合同状态', 7, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000037, '02', '高值耗材合同', 'contractType', '合同类型', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000038, '03', '低值耗材合同', 'contractType', '合同类型', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000039, 'RMB', '人民币', 'currency', '币种', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000040, 'GBP', '英镑', 'currency', '币种', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000041, 'HKD', '港币', 'currency', '币种', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000042, 'USD', '美元', 'currency', '币种', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000043, 'CHF', '瑞士法郎', 'currency', '币种', 5, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000044, 'SGD', '新加坡元', 'currency', '币种', 6, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000045, 'NLG', '荷兰盾', 'currency', '币种', 7, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000046, 'BEF', '比利时法郎', 'currency', '币种', 8, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000047, 'ITL', '意大利里拉', 'currency', '币种', 9, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000048, 'JPY', '日元', 'currency', '币种', 10, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000049, 'CAD', '加拿大元', 'currency', '币种', 11, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000050, 'AUD', '澳大利亚元', 'currency', '币种', 12, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000051, 'ESP', '西班牙比塞塔', 'currency', '币种', 13, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000052, 'EUR', '欧元', 'currency', '币种', 14, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000053, 'FIM', '芬兰马克', 'currency', '币种', 15, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000054, 'NZD', '新西兰元', 'currency', '币种', 16, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000055, 'ATS', '奥地利先令', 'currency', '币种', 17, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000056, 'NOK', '挪威克朗', 'currency', '币种', 18, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000057, 'THB', '泰国铢', 'currency', '币种', 19, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000058, 'DKK', '丹麦克朗', 'currency', '币种', 20, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000059, 'PHP', '菲律宾比索', 'currency', '币种', 21, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000060, 'SEK', '瑞士克朗', 'currency', '币种', 22, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000061, 'MOP', '澳门元', 'currency', '币种', 23, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000062, 'AFA', '阿富汗尼', 'currency', '币种', 24, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000063, 'DZD', '阿尔及利亚第纳尔', 'currency', '币种', 25, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000064, 'ANG', '安第列斯群岛吨', 'currency', '币种', 26, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000065, 'ATS', '奥地利先令', 'currency', '币种', 27, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000066, 'AWF', '阿鲁巴岛弗罗林', 'currency', '币种', 28, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000067, 'BAK', '波斯尼亚和黑塞哥维那', 'currency', '币种', 29, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000068, 'BBD', '巴巴多斯元', 'currency', '币种', 30, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000069, 'BEF', '比利时法郎', 'currency', '币种', 31, null, null, null, null, 'N');
commit;
prompt 100 records committed...
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000070, 'AZM', '阿塞拜疆', 'currency', '币种', 32, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000071, 'XCD', '安提瓜和巴布达岛东加勒比海元', 'currency', '币种', 33, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000072, 'XCD', '安圭拉东加勒比海元', 'currency', '币种', 34, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000073, 'ARP', '阿根廷比索', 'currency', '币种', 35, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000074, 'AON', '安哥拉', 'currency', '币种', 36, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000075, 'AMD', '亚美尼亚', 'currency', '币种', 37, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000076, 'FRF', '安道尔法郎', 'currency', '币种', 38, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000077, 'AED', '阿联酋迪拉姆', 'currency', '币种', 39, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000078, 'ALL', '阿尔巴尼亚', 'currency', '币种', 40, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000079, '01', 'Ⅰ类', 'instrumentType', '器械分类等级', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000080, '02', 'Ⅱ类', 'instrumentType', '器械分类等级', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000081, '03', 'Ⅲ类', 'instrumentType', '器械分类等级', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000082, '01', '待盘点', 'inventoryStatus', '盘点状态', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000083, '02', '盘点中', 'inventoryStatus', '盘点状态', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000084, '03', '待确认结果', 'inventoryStatus', '盘点状态', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000085, '04', '已关闭', 'inventoryStatus', '盘点状态', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000086, '05', '盘点完成', 'inventoryStatus', '盘点状态', 5, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000087, '06', '确认中', 'inventoryStatus', '盘点状态', 6, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000088, '07', '确认有误', 'inventoryStatus', '盘点状态', 7, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000089, '01', '未校验', 'invoiceStatus', '发票状态', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000090, '02', '校验通过', 'invoiceStatus', '发票状态', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000091, '03', '校验异常', 'invoiceStatus', '发票状态', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000092, '04', '拒收', 'invoiceStatus', '发票状态', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000093, 'vat', '增值税专用发票', 'invoiceType', '发票类型', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000094, 'general', '增值税普通发票', 'invoiceType', '发票类型', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000125, '01', '不选', 'materialUseType', '耗材用后区分', 1, null, null, '10000001', to_date('02-11-2017 16:47:00', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000126, '02', '植入', 'materialUseType', '耗材用后区分', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000127, '03', '毁型', 'materialUseType', '耗材用后区分', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000128, '#', '付款:网上银行支付', 'payment', '支付方式', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000129, 'C', '付款:转帐支票', 'payment', '支付方式', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000130, 'I', '付款:T/T电汇', 'payment', '支付方式', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000131, 'J', '付款:现金支票', 'payment', '支付方式', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000132, 'L', '付款:贷记凭证', 'payment', '支付方式', 5, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000133, 'M', '付款:其他', 'payment', '支付方式', 6, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000134, 'N', '付款:信汇', 'payment', '支付方式', 7, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000135, 'O', '付款:银行汇票', 'payment', '支付方式', 8, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000136, 'P', '付款:托收承付', 'payment', '支付方式', 9, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000137, 'Q', '付款:委托付款', 'payment', '支付方式', 10, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000138, 'R', '付款:银行本票', 'payment', '支付方式', 11, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000139, 'S', '付款:现金', 'payment', '支付方式', 12, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000140, 'T', '付款:内部银行', 'payment', '支付方式', 13, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000141, 'U', '付款:电传', 'payment', '支付方式', 14, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000142, 'V', '付款:L/C信用证 ', 'payment', '支付方式', 15, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000143, 'W', '付款:信用卡 ', 'payment', '支付方式', 16, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000144, 'X', '付款:通知付款', 'payment', '支付方式', 17, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000145, 'Y', '付款:银行承兑汇票', 'payment', '支付方式', 18, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000146, 'Z', '付款:商业汇票', 'payment', '支付方式', 19, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000147, '{', '付款:D/A承兑交单票 ', 'payment', '支付方式', 20, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000148, '}', '付款:D/P付款交单', 'payment', '支付方式', 21, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000149, '~', '付款:保函', 'payment', '支付方式', 22, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000150, '01', '全额付款', 'paymentMethod', '付款方式', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000151, '02', '分批付款 ', 'paymentMethod', '付款方式', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000173, '02', '合同', 'noticeClassify', '公告分类', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000174, '03', '订单', 'noticeClassify', '公告分类', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000175, '04', '其他', 'noticeClassify', '公告分类', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000176, '110', '北京', 'state', '地区', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000177, '120', '天津', 'state', '地区', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000178, '130', '河北', 'state', '地区', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000179, '140', '山西', 'state', '地区', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000180, '150', '内蒙古', 'state', '地区', 5, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000181, '210', '辽宁', 'state', '地区', 6, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000182, '220', '吉林', 'state', '地区', 7, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000183, '230', '黑龙江', 'state', '地区', 8, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000184, '240', '云南', 'state', '地区', 9, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000185, '310', '上海', 'state', '地区', 10, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000186, '320', '江苏', 'state', '地区', 11, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000187, '330', '浙江', 'state', '地区', 12, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000188, '340', '安徽', 'state', '地区', 13, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000189, '350', '福建', 'state', '地区', 14, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000190, '360', '江西', 'state', '地区', 15, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000191, '370', '山东', 'state', '地区', 16, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000192, '410', '河南', 'state', '地区', 17, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000193, '420', '湖北', 'state', '地区', 18, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000194, '430', '湖南', 'state', '地区', 19, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000195, '440', '广东', 'state', '地区', 20, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000196, '450', '广西', 'state', '地区', 21, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000197, '460', '海南', 'state', '地区', 22, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000198, '500', '重庆', 'state', '地区', 23, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000199, '510', '四川', 'state', '地区', 24, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000200, '520', '贵州', 'state', '地区', 25, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000201, '530', '云南', 'state', '地区', 26, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000202, '540', '西藏', 'state', '地区', 27, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000203, '610', '陕西', 'state', '地区', 28, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000204, '620', '甘肃', 'state', '地区', 29, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000205, '630', '青海', 'state', '地区', 30, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000206, '640', '宁夏', 'state', '地区', 31, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000207, '650', '新疆', 'state', '地区', 32, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000208, '710', '台湾', 'state', '地区', 33, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000209, '810', '香港', 'state', '地区', 34, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000210, '820', '澳门', 'state', '地区', 35, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000211, 'T001', '立即应付的 净到期', 'paymentCondition', '付款条件', 1, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000212, 'T002', '2 天之内 净到期', 'paymentCondition', '付款条件', 2, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000213, 'T003', '3 天之内 净到期', 'paymentCondition', '付款条件', 3, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000214, 'T004', '4 天之内 净到期', 'paymentCondition', '付款条件', 4, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000215, 'T005', '5 天之内 净到期', 'paymentCondition', '付款条件', 5, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000216, 'T006', '6天之内 净到期', 'paymentCondition', '付款条件', 6, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000217, 'T007', '7天之内 净到期', 'paymentCondition', '付款条件', 7, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000218, 'T010', '10 天之内 净到期', 'paymentCondition', '付款条件', 8, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000219, 'T012', '12 天之内 净到期', 'paymentCondition', '付款条件', 9, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000220, 'T014', '14 天之内 净到期', 'paymentCondition', '付款条件', 10, null, null, null, null, 'N');
commit;
prompt 200 records committed...
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000221, 'T015', '15 天之内 净到期', 'paymentCondition', '付款条件', 11, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000222, 'T018', '18 天之内 净到期', 'paymentCondition', '付款条件', 12, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000223, 'T020', '20 天之内 净到期', 'paymentCondition', '付款条件', 13, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000224, 'T022', '22 天之内 净到期', 'paymentCondition', '付款条件', 14, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000225, 'T025', '25 天之内 净到期', 'paymentCondition', '付款条件', 15, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000226, 'T027', '27 天之内 净到期', 'paymentCondition', '付款条件', 16, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000227, 'T028', '28 天之内 净到期', 'paymentCondition', '付款条件', 17, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000228, 'T029', '29 天之内 净到期', 'paymentCondition', '付款条件', 18, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000229, 'T030', '30 天之内 净到期', 'paymentCondition', '付款条件', 19, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000230, 'T034', '34 天之内 净到期', 'paymentCondition', '付款条件', 20, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000231, 'T040', '40 天之内 净到期', 'paymentCondition', '付款条件', 21, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000232, 'T045', '45 天之内 净到期', 'paymentCondition', '付款条件', 22, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000233, 'T050', '50 天之内 净到期', 'paymentCondition', '付款条件', 23, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000234, 'T055', '55 天之内 净到期', 'paymentCondition', '付款条件', 24, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000235, 'T060', '60 天之内 净到期', 'paymentCondition', '付款条件', 25, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000236, 'T090', '90 天之内 净到期', 'paymentCondition', '付款条件', 26, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000237, 'T100', '100 天之内 净到期', 'paymentCondition', '付款条件', 27, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000238, 'T120', '120 天之内 净到期', 'paymentCondition', '付款条件', 28, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000239, 'T150', '150 天之内 净到期', 'paymentCondition', '付款条件', 29, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000240, 'T180', '180 天之内 净到期', 'paymentCondition', '付款条件', 30, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000241, 'T210', '210 天之内 净到期', 'paymentCondition', '付款条件', 31, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000242, 'T240', '240 天之内 净到期', 'paymentCondition', '付款条件', 32, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000243, 'T270', '270 天之内 净到期', 'paymentCondition', '付款条件', 33, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000244, 'T365', '365 天', 'paymentCondition', '付款条件', 34, null, null, null, null, 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000284, '02', '农产品出口量', 'agrImportAndExport', null, 2, '10000001', to_date('04-05-2019 20:53:48', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('04-05-2019 20:53:48', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_DICT (dict_id, code, label, type, remark, sort, create_by, create_date, update_by, update_date, del_flag)
values (1000283, '01', '农产品进口量', 'agrImportAndExport', null, 1, '10000001', to_date('04-05-2019 20:49:28', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('04-05-2019 20:51:40', 'dd-mm-yyyy hh24:mi:ss'), 'N');
commit;
prompt 226 records loaded
prompt Loading COM_FILE...
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('a20173e1370d4d7981e8f0f6a02715ee', '13f3f0c547b346eaa8f429b5dd85d31d.xls', '32768', '/2019-05-04/13f3f0c547b346eaa8f429b5dd85d31d.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('04-05-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('2bf979ac42e242ffa6c23f701c07ba96', 'ce0c88d157b74dcd93ea567e8dc955c3.xls', '22016', '/2019-04-08/ce0c88d157b74dcd93ea567e8dc955c3.xls', '/u01\file\ecc', '供应商药品字典导入数据.xls', '10000001', to_date('08-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('45f242da9db24f5fa43d98d9d4091e22', '1df325f9b18a47ab97e6bb4b8392b81e.xls', '22016', '/2019-04-08/1df325f9b18a47ab97e6bb4b8392b81e.xls', '/u01\file\ecc', '供应商药品字典导入数据.xls', '10000001', to_date('08-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('e6ff68b332fb45adaf5b4b1fe2aea63a', 'f1e457f13fb2467596b4606bb6bf24fb.xlsx', '17955', '/2019-04-08/f1e457f13fb2467596b4606bb6bf24fb.xlsx', '/u01\file\ecc', '农产品生产量.xlsx', '10000001', to_date('08-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('2503891b9cf6413bbfcda4e70cdfc065', '78801f525af24cc6b0f2e5fd5a3c169f.xlsx', '17955', '/2019-04-08/78801f525af24cc6b0f2e5fd5a3c169f.xlsx', '/u01\file\ecc', '农产品生产量.xlsx', '10000001', to_date('08-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('7477a481d5d040e0b61ff7ab7dc57b45', 'afa2ffaa4a374890afe88db7ff6630d5.xls', '17955', '/2019-04-08/afa2ffaa4a374890afe88db7ff6630d5.xls', '/u01\file\ecc', '农产品生产量.xls', '10000001', to_date('08-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('7713a3b5118045d5a192a9727e351431', '94fbaf3702cb40aca8a9799919531ac2.xls', '24576', '/2019-04-09/94fbaf3702cb40aca8a9799919531ac2.xls', '/u01\file\ecc', '生态供给量2.xls', '10000001', to_date('09-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('6db2f818f7b845d7b594e1ff323125d9', 'f18b8d1985cb4a2892b664681b89b2b8.xls', '24576', '/2019-04-09/f18b8d1985cb4a2892b664681b89b2b8.xls', '/u01\file\ecc', '生态供给量2.xls', '10000001', to_date('09-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('54e0f3e684c94c439623a2f3132c995f', 'bbec5bb18016467393384a3ebe25e529.xls', '24576', '/2019-04-09/bbec5bb18016467393384a3ebe25e529.xls', '/u01\file\ecc', '生态供给量2.xls', '10000001', to_date('09-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('eb642857a2da4e16adb11bb658a2c91a', '42a380c556a84af7a280996d785a20c8.xls', '31232', '/2019-04-13/42a380c556a84af7a280996d785a20c8.xls', '/u01\file\ecc', '单位.xls', '10000001', to_date('13-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('7c3f3b93105b46728b9ac65aec05562b', 'd84f7b44c0ea49479f0d387c2c15361c.xls', '31232', '/2019-04-13/d84f7b44c0ea49479f0d387c2c15361c.xls', '/u01\file\ecc', '单位.xls', '10000001', to_date('13-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('0ed91dd0d9644d7d860887934af083bc', '4c41dda7208a419f8aa48ceebdaec445.xls', '31232', '/2019-04-13/4c41dda7208a419f8aa48ceebdaec445.xls', '/u01\file\ecc', '含水.xls', '10000001', to_date('13-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('1f6631e9bf244a8db02b7b35aad67bae', '5d9193cb7244460f949518a6a96295f8.xls', '31232', '/2019-04-13/5d9193cb7244460f949518a6a96295f8.xls', '/u01\file\ecc', '单位.xls', '10000001', to_date('13-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('55c16fb6b46b4a42b56ac642e4b85ca3', 'cf363196004b438db8dc486f2879db7a.xls', '31232', '/2019-04-13/cf363196004b438db8dc486f2879db7a.xls', '/u01\file\ecc', '含水.xls', '10000001', to_date('13-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('16d4ff41c0df44008504e0e86b2cac83', 'e164fb3cdb7a46a69db848474e47c539.xls', '31232', '/2019-04-13/e164fb3cdb7a46a69db848474e47c539.xls', '/u01\file\ecc', '单位.xls', '10000001', to_date('13-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('0a2b5cdf974a4d409d1baf879fd6c84d', 'e92fd3278d954af1855601c651c3b442.xls', '31232', '/2019-04-13/e92fd3278d954af1855601c651c3b442.xls', '/u01\file\ecc', '浪费.xls', '10000001', to_date('13-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('d1545d3e12b64ade9a1d8b386d57528f', '5cb185fcdc494ced96ae697144fcf33a.xls', '31232', '/2019-04-13/5cb185fcdc494ced96ae697144fcf33a.xls', '/u01\file\ecc', '碳.xls', '10000001', to_date('13-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('4d06591963b74593a9741795bf28b8bd', '882a0b2710aa48a1be90fed02b9f6556.xls', '31232', '/2019-04-13/882a0b2710aa48a1be90fed02b9f6556.xls', '/u01\file\ecc', '单位.xls', '10000001', to_date('13-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('15eefe7af8f1444aad43f25b685c36a1', '19dc35c4c7a34f01822bb087262f7b0f.xls', '31232', '/2019-04-13/19dc35c4c7a34f01822bb087262f7b0f.xls', '/u01\file\ecc', '单位.xls', '10000001', to_date('13-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('7d3315a8c1df453f9657151ef5b2332f', 'f452ebd2d5a9484488f642b825b4eebd.xls', '31232', '/2019-04-13/f452ebd2d5a9484488f642b825b4eebd.xls', '/u01\file\ecc', '收获.xls', '10000001', to_date('13-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('05114b25a47e4c7aa3e35e9606518e3b', '00075c7e765f43a18f3f02a659483596.xls', '31232', '/2019-04-13/00075c7e765f43a18f3f02a659483596.xls', '/u01\file\ecc', '含水.xls', '10000001', to_date('13-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('d1db7026e7f54fcb829ba2d604f2dd32', '3a748a87b0af4b619eb019bec1890396.xls', '31232', '/2019-04-13/3a748a87b0af4b619eb019bec1890396.xls', '/u01\file\ecc', '浪费.xls', '10000001', to_date('13-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('15fe13581d62417f9cd6f2892f354143', '52dd44c981b045e996da28e8b6dd7b86.xls', '31232', '/2019-04-13/52dd44c981b045e996da28e8b6dd7b86.xls', '/u01\file\ecc', '收获.xls', '10000001', to_date('13-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('8470d2ba757947a5b0ae03ef1dd6484c', '0309248a15ee4f109bf4196da503d6c2.xls', '31232', '/2019-04-13/0309248a15ee4f109bf4196da503d6c2.xls', '/u01\file\ecc', '碳.xls', '10000001', to_date('13-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('3930fc16fd0545dfbec8820c7e989fc9', '9520b34328c8451da8cda2d49ed77bbd.xls', '31232', '/2019-04-13/9520b34328c8451da8cda2d49ed77bbd.xls', '/u01\file\ecc', '收获.xls', '10000001', to_date('13-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('44a382ab595d42528592ad5c3e15ad05', 'a090a82de7484ea08a7524e46f39d6de.xls', '31232', '/2019-04-13/a090a82de7484ea08a7524e46f39d6de.xls', '/u01\file\ecc', '收获.xls', '10000001', to_date('13-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('fa223dcab24441b6b77032394973cdf4', '2f86351fad8941d19c5d6747f80d6889.xls', '31232', '/2019-04-13/2f86351fad8941d19c5d6747f80d6889.xls', '/u01\file\ecc', '单位.xls', '10000001', to_date('13-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('6520e862bcaa469bb7b026daf13d6a0f', '4261dc86aef14dd7b09333963a3bb142.xls', '31232', '/2019-04-13/4261dc86aef14dd7b09333963a3bb142.xls', '/u01\file\ecc', '单位.xls', '10000001', to_date('13-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('28c51e7f6ad74758857156009a0871d2', '42cbbe76e75841d1a6525526dec2df4f.xls', '32768', '/2019-05-04/42cbbe76e75841d1a6525526dec2df4f.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('04-05-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('09d4261628ff49cb9099aa30189cd9f4', '90a0300fddd64dfbb0414f5843556c5f.xls', '32768', '/2019-05-04/90a0300fddd64dfbb0414f5843556c5f.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('04-05-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('513f3497030e4ce1b28b4d5d8ed11d6b', '72ec169781e14e56bef3875b5acce875.xls', '32768', '/2019-05-04/72ec169781e14e56bef3875b5acce875.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('04-05-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('e4b99ca6738e42c1862180649b501efe', 'b402dbfadf12430985de1de0a434246b.xls', '32768', '/2019-05-04/b402dbfadf12430985de1de0a434246b.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('04-05-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('9650cc4bef1d4eec931761a2f577ec80', '285debda7093408ea98ae526f790efd4.xls', '32768', '/2019-05-04/285debda7093408ea98ae526f790efd4.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('04-05-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('4abe9f8ae438494fad27523bb0fb2b60', '993d0037abc54acd9084aab7b7fa53f3.xls', '32768', '/2019-05-04/993d0037abc54acd9084aab7b7fa53f3.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('04-05-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('70a97544161141119e2abfccf44f3f2e', '848398446e3d4597931e6b37b1194b67.xls', '32768', '/2019-05-04/848398446e3d4597931e6b37b1194b67.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('04-05-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('502b3182905746efa79d74810c792991', 'd62f560e5bae49b2b69fe8cdb9b43130.xls', '32768', '/2019-05-04/d62f560e5bae49b2b69fe8cdb9b43130.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('04-05-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('9debf3b1d46c48a29e28d6f0aaa43fcd', '719705c0fe384b898ab2f7a5c711a2bb.xls', '32768', '/2019-05-04/719705c0fe384b898ab2f7a5c711a2bb.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('04-05-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('8a3c6e5e9fd243f1a8e0e6e4ce3382aa', 'cbbbe9457e6b43da98cfcdde0eedbd7a.xls', '32768', '/2019-05-04/cbbbe9457e6b43da98cfcdde0eedbd7a.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('04-05-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('5abefb86fdd049d081b2d0d745079c08', 'afc75faba82f4db9bc31bf2b037c1ee1.xls', '32768', '/2019-05-04/afc75faba82f4db9bc31bf2b037c1ee1.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('04-05-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('ca5961f7eeda4ef3a5cb74fc9e587eca', 'f8f4473018b54a8ab296863215f2003e.xls', '32768', '/2019-05-04/f8f4473018b54a8ab296863215f2003e.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('04-05-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('f29a387141c4400e86b117901a7d99c5', '0fd7157606ed41b99766ec25c7ace0db.xls', '32768', '/2019-05-04/0fd7157606ed41b99766ec25c7ace0db.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('04-05-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('b7999f7225af406182ce95ef159c52d3', '6fff63e507a7437abbc6344ecdcbddfb.xls', '17955', '/2019-04-08/6fff63e507a7437abbc6344ecdcbddfb.xls', '/u01\file\ecc', '农产品生产量.xls', '10000001', to_date('08-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('fc8f1c5f9a1c4498b7a64be00bc2ba06', '470d4831c32145e9ad4bf4b4bcb7a594.xls', '17987', '/2019-04-08/470d4831c32145e9ad4bf4b4bcb7a594.xls', '/u01\file\ecc', '农产品生产量.xls', '10000001', to_date('08-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('b0481646b9a24573a7b9b19984c32d50', '0733d762a0b046fda666b38651a51ea8.xls', '17987', '/2019-04-08/0733d762a0b046fda666b38651a51ea8.xls', '/u01\file\ecc', '农产品生产量.xls', '10000001', to_date('08-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('92b455c3309f42d0959263f26d06f319', '5c728aee307f4e679b7c9902bcad92c0.xls', '31232', '/2019-04-08/5c728aee307f4e679b7c9902bcad92c0.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('08-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('fbe2840fec3c414495aad286cb95ba56', '1ce932b8bda5494dab576cb890241b74.xls', '31232', '/2019-04-08/1ce932b8bda5494dab576cb890241b74.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('08-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('d4b0280cf8e94f8884d0a3325aeb7bf5', 'bdb865a892114e3782d94c6d8c92d956.xls', '31232', '/2019-04-08/bdb865a892114e3782d94c6d8c92d956.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('08-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('9b83e8fc288443218330fc8acd4000dd', '949c4260a9334ae3b80af0173079c1a7.xls', '31232', '/2019-04-08/949c4260a9334ae3b80af0173079c1a7.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('08-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('111fa279dab845b69b5f17cc97e5f574', '219a5f63bc7f41d885c27b06e7c29880.xls', '31232', '/2019-04-08/219a5f63bc7f41d885c27b06e7c29880.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('08-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('ce7258f2c44c416e922042de739feabe', '4961b954f9694a10a0a0053601346160.xls', '31232', '/2019-04-08/4961b954f9694a10a0a0053601346160.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('08-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('b9cb4a54aa0f40399956ae70e558bb25', 'e728f5fd5f2b4751a5f9a16f3e2ef533.xls', '32768', '/2019-05-04/e728f5fd5f2b4751a5f9a16f3e2ef533.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('04-05-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('f265487eb3414d4682cd593c81f0f9f0', '784dd41d113148c2b8f4edd188f4fad7.xls', '31232', '/2019-04-08/784dd41d113148c2b8f4edd188f4fad7.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('08-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('d928998cba644ff8b393ca8a5685f128', 'a2e8234e50834df78082125bbf7f9155.xls', '31232', '/2019-04-08/a2e8234e50834df78082125bbf7f9155.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('08-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('df63d39a052c4e2aa5fe9e8cbda24cf6', 'dadf21a4dc1d4a67bbbd91fe32dc31d8.xls', '31232', '/2019-04-09/dadf21a4dc1d4a67bbbd91fe32dc31d8.xls', '/u01\file\ecc', '农产品生产量.xls', '10000001', to_date('09-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('9a906b0d1b18421cbbd3e8c4acaf0066', '017947b118eb4781802b2518e4b7fd43.xls', '31232', '/2019-04-13/017947b118eb4781802b2518e4b7fd43.xls', '/u01\file\ecc', '含水.xls', '10000001', to_date('13-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('9137651344474060b80e5790544481c4', '61d9e631102b46c784e2af6a45c33448.xls', '32768', '/2019-05-04/61d9e631102b46c784e2af6a45c33448.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('04-05-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('a60acb1d86e1486e91f3cbf1e8daa5d9', 'ffc49c53c43943a9ad8ecf9252057550.xls', '32768', '/2019-05-04/ffc49c53c43943a9ad8ecf9252057550.xls', '/u01\file\ecc', '新建XLS 工作表.xls', '10000001', to_date('04-05-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('18468e08888241fd90707219c564641b', 'd19b555d7674476cac26e78744d8a602.xls', '31232', '/2019-04-10/d19b555d7674476cac26e78744d8a602.xls', '/u01\file\ecc', '单位.xls', '10000001', to_date('10-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('086232997f0b4d00aae4fc1102dbd807', '44b4e10d5bc6466fabbbe490335fb8d7.xls', '31232', '/2019-04-10/44b4e10d5bc6466fabbbe490335fb8d7.xls', '/u01\file\ecc', '含水.xls', '10000001', to_date('10-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('8a111807e66c4748a62f141589e927c0', '79ec54f40a384b0aa76adcda6867aaa4.xls', '31232', '/2019-04-10/79ec54f40a384b0aa76adcda6867aaa4.xls', '/u01\file\ecc', '收获.xls', '10000001', to_date('10-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('da3879fbcf0343a19c1a469c3a4b6c3b', '173f79ffe89d487293b78274ea7d320e.xls', '31232', '/2019-04-10/173f79ffe89d487293b78274ea7d320e.xls', '/u01\file\ecc', '碳.xls', '10000001', to_date('10-04-2019', 'dd-mm-yyyy'), null, null);
insert into COM_FILE (file_id, file_name, file_size, file_path, file_dir, file_name_orig, create_by, create_date, update_by, update_date)
values ('73071baaa7484859a89371d22e8efcbb', '24796757dd394d9c8727813fe1756b6f.xls', '31232', '/2019-04-10/24796757dd394d9c8727813fe1756b6f.xls', '/u01\file\ecc', '浪费.xls', '10000001', to_date('10-04-2019', 'dd-mm-yyyy'), null, null);
commit;
prompt 62 records loaded
prompt Loading COM_MENU...
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000240', '1000000', '-1,1000000', '农业管理', 2, null, null, 'fa fa-list', 'Y', null, '10000001', to_date('05-04-2019 16:42:38', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('09-04-2019 20:59:18', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000241', '1000240', '-1,1000000,1000240', '农产品生产量', 1, '/agrProduction', null, null, 'Y', null, '10000001', to_date('08-04-2019 15:20:45', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('08-04-2019 18:05:47', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000252', '1000001', '1000000,,1000001', '林业', 4, null, null, null, 'Y', null, '10000001', to_date('10-04-2019 22:18:51', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('10-04-2019 22:19:03', 'dd-mm-yyyy hh24:mi:ss'), null, 'Y');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000253', '1000000', '-1,1000000', '林业管理', 4, null, null, 'fa fa-list', 'Y', null, '10000001', to_date('10-04-2019 22:19:24', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('10-04-2019 22:25:46', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000254', '1000000', '-1,1000000', '畜牧业管理', 5, null, null, 'fa fa-list', 'Y', null, '10000001', to_date('10-04-2019 22:20:57', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('10-04-2019 22:25:52', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000255', '1000000', '-1,1000000', '生产消耗', 6, null, null, 'fa fa-list', 'Y', null, '10000001', to_date('10-04-2019 22:22:07', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('10-04-2019 22:24:19', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000258', '1000000', '-1,1000000', '生态承载力压力指数', 9, null, null, 'fa fa-list', 'Y', null, '10000001', to_date('10-04-2019 22:23:41', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('10-04-2019 22:23:41', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000260', '1000240', '-1,1000000,1000240', '农业进出口管理', 8, '/agrImportAndExport', null, null, 'Y', null, '10000001', to_date('04-05-2019 14:00:13', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('04-05-2019 16:55:26', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000000', '-1', '-1', '系统管理', 1, null, null, null, 'Y', null, null, null, null, null, null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000001', '1000000', '1000000,', '系统管理', 1, null, null, 'fa fa-list', 'Y', null, null, null, null, null, null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000006', '1000001', '1000000,1000001', '备份管理', 5, '/dbBackup', null, null, 'Y', null, null, null, '10000001', to_date('11-04-2016 10:42:15', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000007', '1000001', '1000000,1000001', '用户管理', 6, '/user', null, null, 'Y', null, null, null, '10000001', to_date('11-04-2016 10:42:15', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000002', '1000001', '1000000,1000001', '菜单管理', 1, '/menu', null, null, 'Y', null, null, null, null, null, null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000003', '1000001', '1000000,1000001', '权限管理', 2, '/role', null, null, 'Y', null, null, null, '10000001', to_date('28-04-2016 20:56:43', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000004', '1000001', '1000000,1000001', '公告管理', 3, '/notice', null, null, 'Y', null, null, null, '10000001', to_date('30-03-2019 11:54:30', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000008', '1000001', '1000000,1000001', '公用代码', 7, '/comCode', null, null, 'Y', null, null, null, '10000001', to_date('20-07-2016 16:34:23', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000246', '1000240', '-1,1000000,1000240', '农业生产单位转换系数', 2, '/agrUnitConver', null, null, 'Y', null, '10000001', to_date('09-04-2019 21:00:24', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('09-04-2019 21:00:24', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000250', '1000240', '-1,1000000,1000240', '农业生产浪费率', 6, '/agrWasterate', null, null, 'Y', null, '10000001', to_date('09-04-2019 22:00:58', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('09-04-2019 22:00:58', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000251', '1000240', '-1,1000000,1000240', '农业生产消耗量', 7, '/agrProCon', null, null, 'Y', null, '10000001', to_date('09-04-2019 22:42:08', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('09-04-2019 22:42:08', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000256', '1000000', '-1,1000000', '生活消耗', 7, null, null, 'fa fa-list', 'Y', null, '10000001', to_date('10-04-2019 22:23:00', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('10-04-2019 22:23:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000257', '1000000', '-1,1000000', '生态承载力', 8, null, null, 'fa fa-list', 'Y', null, '10000001', to_date('10-04-2019 22:23:21', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('10-04-2019 22:26:16', 'dd-mm-yyyy hh24:mi:ss'), null, 'Y');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000259', '1000000', '-1,1000000', '生态承载指数状态', 10, null, null, 'fa fa-list', 'Y', null, '10000001', to_date('10-04-2019 22:24:00', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('10-04-2019 22:24:00', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000242', '1000000', '-1,1000000', '生态承载力', 8, '/ecologicalSupply', null, 'fa fa-list', 'Y', null, '10000001', to_date('08-04-2019 21:37:43', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('10-04-2019 22:26:38', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000243', '1000242', '-1,1000000,1000242', '可利用生态供给量', 1, '/ecoSupplyNumber', null, null, 'Y', null, '10000001', to_date('08-04-2019 21:54:02', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('08-04-2019 22:45:03', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000244', '1000242', '-1,1000000,1000242', '可利用生态供给上限量', 2, '/onlineNumber', null, null, 'Y', null, '10000001', to_date('08-04-2019 21:54:45', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('08-04-2019 21:54:45', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000245', '1000242', '-1,1000000,1000242', '可利用生态供给适宜量', 3, '/suitableNumber', null, null, 'Y', null, '10000001', to_date('08-04-2019 21:57:07', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('08-04-2019 21:57:07', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000247', '1000240', '-1,1000000,1000240', '农业生产含水量', 3, '/agrWaterConver', null, null, 'Y', null, '10000001', to_date('09-04-2019 21:15:28', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('09-04-2019 21:58:19', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000248', '1000240', '-1,1000000,1000240', '生物量与碳含量转换系数', 4, '/agrCarboncon', null, null, 'Y', null, '10000001', to_date('09-04-2019 21:59:27', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('09-04-2019 21:59:27', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
insert into COM_MENU (menu_id, parent_id, parent_ids, name, sort, href, target, icon, is_show, permission, create_by, create_date, update_by, update_date, remarks, del_flag)
values ('1000249', '1000240', '-1,1000000,1000240', '农业生产收获指数', 4, '/agrHarvestIndex', null, null, 'Y', null, '10000001', to_date('09-04-2019 22:00:08', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('09-04-2019 22:00:08', 'dd-mm-yyyy hh24:mi:ss'), null, 'N');
commit;
prompt 29 records loaded
prompt Loading COM_MENU_PERMISSION...
insert into COM_MENU_PERMISSION (menu_permission_id, menu_id, permission_code, permission_name, create_by, create_date, update_by, update_date, del_flag)
values ('1000006', '1000110', 'create', '保存', null, to_date('12-12-2016 13:57:46', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('30-03-2019 11:50:25', 'dd-mm-yyyy hh24:mi:ss'), 'Y');
insert into COM_MENU_PERMISSION (menu_permission_id, menu_id, permission_code, permission_name, create_by, create_date, update_by, update_date, del_flag)
values ('1000007', '1000107', 'create', '新增', null, null, '10000001', to_date('30-03-2019 11:50:28', 'dd-mm-yyyy hh24:mi:ss'), 'Y');
insert into COM_MENU_PERMISSION (menu_permission_id, menu_id, permission_code, permission_name, create_by, create_date, update_by, update_date, del_flag)
values ('1000011', '1000101', 'create', '保存', null, null, '10000001', to_date('30-03-2019 11:50:21', 'dd-mm-yyyy hh24:mi:ss'), 'Y');
insert into COM_MENU_PERMISSION (menu_permission_id, menu_id, permission_code, permission_name, create_by, create_date, update_by, update_date, del_flag)
values ('1000102', '1000111', 'create', '保存', null, to_date('25-03-2019 12:09:09', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('30-03-2019 11:50:21', 'dd-mm-yyyy hh24:mi:ss'), 'Y');
commit;
prompt 4 records loaded
prompt Loading COM_NATIONCODE...
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AC', '阿森松岛 ', 'Ascension Island', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AD', '安道尔', 'Andorra', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AE', '阿拉伯联合酋长国', 'United Arab Emirates', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AF', '阿富汗', 'Afghanistan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AG', '安提瓜和巴布达', 'Antigua and Barbuda', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AI', '安圭拉岛', 'Anguilla', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AL', '阿尔巴尼亚', 'Albania', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AM', '亚美尼亚', 'Armenia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AN', '荷属安的列斯群岛', 'Netherlands Antilles', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AO', '安哥拉', 'Angola', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AQ', '南极洲', 'Antarctica', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AR', '阿根廷', 'Argentina', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AS', '美属萨摩亚', 'American Samoa', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AT', '奥地利', 'Austria', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AU', '澳大利亚', 'Australia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AW', '阿鲁巴', 'Aruba', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AX', '奥兰群岛(芬兰属)', 'Aland Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('AZ', '阿塞拜疆', 'Azerbaijan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BA', '波斯尼亚和黑塞哥维那', 'Bosnia and Herzegovina', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BB', '巴巴多斯', 'Barbados', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BD', '孟加拉国', 'Bangladesh', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BE', '比利时', 'Belgium', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BF', '布基纳法索', 'Burkina Faso', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BG', '保加利亚', 'Bulgaria', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BH', '巴林', 'Bahrain', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BI', '布隆迪', 'Burundi', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BJ', '贝宁', 'Benin', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BM', '百慕大群岛', 'Bermuda', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BN', '文莱', 'Brunei Darussalam', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BO', '玻利维亚', 'Bolivia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BR', '巴西', 'Brazil', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BS', '巴哈马', 'Bahamas', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BT', '不丹', 'Bhutan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BV', '布韦岛', 'Bouvet Island', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BW', '博茨瓦纳', 'Botswana', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BY', '白俄罗斯', 'Belarus', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('BZ', '伯利兹', 'Belize', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CA', '加拿大', 'Canada', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CC', '科科斯群岛（基灵群岛）', 'Cocos (Keeling) Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CD', '刚果民主共和国', 'Congo, The Democratic Republic Of The', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CF', '中非共和国', 'Central African Republic', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CG', '刚果', 'Congo, Republic of the', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CH', '瑞士', 'Switzerland', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CI', '科特迪瓦', 'Cote d''Ivoire', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CK', '库克群岛', 'Cook Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CL', '智利', 'Chile', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CM', '喀麦隆', 'Cameroon', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CN', '中国', 'China, People''s Republic of', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CO', '哥伦比亚', 'Colombia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CR', '哥斯达黎加', 'Costa Rica', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CS', '塞尔维亚和黑山 ', 'Serbia and Montenegro', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CU', '古巴', 'Cuba', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CV', '佛得角', 'Cape Verde', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CX', '圣诞岛', 'Christmas Island', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CY', '塞浦路斯', 'Cyprus', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('CZ', '捷克共和国', 'Czech Republic', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('DE', '德国', 'Germany', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('DJ', '吉布提', 'Djibouti', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('DK', '丹麦', 'Denmark', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('DM', '多米尼加', 'Dominica', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('DO', '多米尼加共和国', 'Dominican Republic', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('DZ', '阿尔及利亚', 'Algeria', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('EC', '厄瓜多尔', 'Ecuador', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('EE', '爱沙尼亚', 'Estonia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('EG', '埃及', 'Egypt', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('EH', '西撒哈拉 ', 'Western Sahara', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('ER', '厄立特里亚', 'Eritrea', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('ES', '西班牙', 'Spain', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('ET', '埃塞俄比亚', 'Ethiopia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('EU', '欧盟', 'European Union', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('FI', '芬兰', 'Finland', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('FJ', '斐济群岛', 'Fiji', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('FK', '福克兰群岛(马尔维纳斯群岛)', 'Falkland Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('FM', '密克罗尼西亚', 'Micronesia, Federated States of', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('FO', '法罗群岛', 'Faroe Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('FR', '法国', 'France', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GA', '加蓬', 'Gabon', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GD', '格林纳达', 'Grenada', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GE', '乔治亚', 'Georgia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GF', '法属圭亚那', 'French Guiana', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GG', '格恩西', 'Guernsey', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GH', '加纳', 'Ghana', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GI', '直布罗陀', 'Gibraltar', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GL', '格陵兰', 'Greenland', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GM', '冈比亚', 'Gambia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GN', '几内亚', 'Guinea', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GP', '瓜德罗普岛', 'Guadeloupe', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GQ', '赤道几内亚', 'Equatorial Guinea', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GR', '希腊', 'Greece', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GS', '南乔治亚和南桑德威奇群岛', 'South Georgia and the South Sandwich Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GT', '危地马拉', 'Guatemala', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GU', '关岛', 'Guam', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GW', '几内亚比绍', 'Guinea-Bissau', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('GY', '圭亚那', 'Guyana', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('HK', '中国香港', 'Hong Kong', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('HM', '赫德和麦克唐纳群岛', 'Heard Island and McDonald Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('HN', '洪都拉斯', 'Honduras', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('HR', '克罗地亚', 'Croatia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('HT', '海地', 'Haiti', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('HU', '匈牙利', 'Hungary', 'N', null, null, null, null);
commit;
prompt 100 records committed...
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('ID', '印度尼西亚', 'Indonesia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('IE', '爱尔兰', 'Ireland', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('IL', '以色列', 'Israel', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('IM', '马恩岛', 'Isle of Man', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('IN', '印度', 'India', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('IO', '不列颠印度洋属土', 'British Indian Ocean Territory', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('IQ', '伊拉克', 'Iraq', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('IR', '伊朗', 'Iran, Islamic Republic of', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('IS', '冰岛', 'Iceland', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('IT', '意大利', 'Italy', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('JE', '泽西', 'Jersey', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('JM', '牙买加', 'Jamaica', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('JO', '约旦', 'Jordan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('JP', '日本', 'Japan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KE', '肯尼亚', 'Kenya', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KG', '吉尔吉斯斯坦', 'Kyrgyzstan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KH', '柬埔寨', 'Cambodia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KI', '基里巴斯', 'Kiribati', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KM', '科摩罗', 'Comoros', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KN', '圣基茨和尼维斯', 'Saint Kitts and Nevis', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KP', '朝鲜', 'Korea, Democratic People''s Republic of', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KR', '韩国', 'Korea, Republic of', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KW', '科威特', 'Kuwait', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KY', '开曼群岛', 'Cayman Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('KZ', '哈萨克斯坦', 'Kazakhstan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LA', '老挝', 'Lao People''s Democratic Republic', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LB', '黎巴嫩', 'Lebanon', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LC', '圣卢西亚', 'Saint Lucia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LI', '列支敦士登', 'Liechtenstein', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LK', '斯里兰卡', 'Sri Lanka', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LR', '利比里亚', 'Liberia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LS', '莱索托', 'Lesotho', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LT', '立陶宛', 'Lithuania', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LU', '卢森堡', 'Luxembourg', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LV', '拉脱维亚', 'Latvia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('LY', '利比亚', 'Libyan Arab Jamahiriya', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MA', '摩洛哥', 'Morocco', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MC', '摩纳哥', 'Monaco', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MD', '摩尔多瓦', 'Moldova, Republic of', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MG', '马达加斯加', 'Madagascar', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MH', '马绍尔群岛', 'Marshall Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MK', '马其顿,前南斯拉夫共和国', 'Macedonia, The Former Yugoslav Republic of', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('ML', '马里', 'Mali', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MM', '缅甸', 'Myanmar', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MN', '蒙古', 'Mongolia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MO', '中国澳门', 'Macao', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MP', '北马里亚纳群岛', 'Northern Mariana Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MQ', '马提尼克岛', 'Martinique', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MR', '毛里塔尼亚', 'Mauritania', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MS', '蒙特塞拉特', 'Montserrat', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MT', '马耳他', 'Malta', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MU', '毛里求斯', 'Mauritius', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MV', '马尔代夫', 'Maldives', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MW', '马拉维', 'Malawi', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MX', '墨西哥', 'Mexico', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MY', '马来西亚', 'Malaysia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('MZ', '莫桑比克', 'Mozambique', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NA', '纳米比亚', 'Namibia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NC', '新喀里多尼亚', 'New Caledonia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NE', '尼日尔', 'Niger', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NF', '诺福克岛', 'Norfolk Island', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NG', '尼日利亚', 'Nigeria', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NI', '尼加拉瓜', 'Nicaragua', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NL', '荷兰', 'Netherlands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NO', '挪威', 'Norway', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NP', '尼泊尔', 'Nepal', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NR', '瑙鲁', 'Nauru', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NU', '纽埃', 'Niue', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('NZ', '新西兰', 'New Zealand', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('OM', '阿曼', 'Oman', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PA', '巴拿马', 'Panama', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PE', '秘鲁', 'Peru', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PF', '法属波利尼西亚', 'French Polynesia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PG', '巴布亚新几内亚', 'Papua New Guinea', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PH', '菲律宾', 'Philippines', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PK', '巴基斯坦', 'Pakistan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PL', '波兰', 'Poland', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PM', '圣皮埃尔岛和密克隆岛', 'Saint-Pierre and Miquelon', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PN', '皮特克恩群岛', 'Pitcairn', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PR', '波多黎各', 'Puerto Rico', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PS', '巴勒斯坦当局', 'Palestinian Territory, Occupied', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PT', '葡萄牙', 'Portugal', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PW', '帕劳群岛', 'Palau', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('PY', '巴拉圭', 'Paraguay', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('QA', '卡塔尔', 'Qatar', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('RE', '留尼汪岛', 'Reunion', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('RO', '罗马尼亚', 'Romania', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('RU', '俄罗斯', 'Russian Federation', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('RW', '卢旺达', 'Rwanda', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SA', '沙特阿拉伯', 'Saudi Arabia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SB', '所罗门群岛', 'Solomon Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SC', '塞舌尔', 'Seychelles', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SD', '苏丹', 'Sudan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SE', '瑞典', 'Sweden', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SG', '新加坡', 'Singapore', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SH', '圣赫勒拿岛', 'Saint Helena', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SI', '斯洛文尼亚', 'Slovenia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SJ', '斯瓦尔巴群岛和扬马延', 'Svalbard and Jan Mayen', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SK', '斯洛伐克', 'Slovakia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SL', '塞拉利昂', 'Sierra Leone', 'N', null, null, null, null);
commit;
prompt 200 records committed...
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SM', '圣马力诺', 'San Marino', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SN', '塞内加尔', 'Senegal', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SO', '索马里', 'Somalia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SR', '苏里南', 'Suriname', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('ST', '圣多美和普林西比', 'S茫o Tom茅 and Pr铆ncipe', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SV', '萨尔瓦多', 'El Salvador', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SY', '叙利亚', 'Syrian Arab Republic', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('SZ', '斯威士兰', 'Swaziland', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TC', '特克斯群岛和凯科斯群岛', 'Turks and Caicos Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TD', '乍得', 'Chad', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TF', '法属南极地区', 'French Southern Territories', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TG', '多哥', 'Togo', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TH', '泰国', 'Thailand', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TJ', '塔吉克斯坦', 'Tajikistan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TK', '托克劳', 'Tokelau', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TL', '东帝汶 ', 'Timor-Leste', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TM', '土库曼斯坦', 'Turkmenistan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TN', '突尼斯', 'Tunisia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TO', '汤加', 'Tonga', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TP', '东帝汶', 'East Timor', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TR', '土耳其', 'Turkey', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TT', '特立尼达和多巴哥', 'Trinidad and Tobago', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TV', '图瓦卢', 'Tuvalu', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TW', '中国台湾', 'Taiwan (TAIWAN, Province of China)', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('TZ', '坦桑尼亚', 'Tanzania, United Republic Of', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('UA', '乌克兰', 'Ukraine', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('UG', '乌干达', 'Uganda', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('UK', '英国', 'United Kingdom', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('UM', '美属小奥特兰群岛', 'United States Minor Outlying Islands', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('US', '美国', 'United States', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('UY', '乌拉圭', 'Uruguay', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('UZ', '乌兹别克斯坦', 'Uzbekistan', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('VA', '梵蒂冈城', 'Vatican City State', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('VC', '圣文森特和格林纳丁斯', 'Saint Vincent and the Grenadines', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('VE', '委内瑞拉', 'Venezuela', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('VG', '维尔京群岛（英属）', 'Virgin Islands, British', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('VI', '维尔京群岛', 'Virgin Islands, U.S.', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('VN', '越南', 'Viet Nam', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('VU', '瓦努阿图', 'Vanuatu', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('WF', '瓦利斯群岛和富图纳群岛', 'Wallis and Futuna', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('WS', '萨摩亚', 'Samoa', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('YE', '也门', 'Yemen', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('YT', '马约特岛', 'Mayotte', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('YU', '塞尔维亚和门第内哥罗', 'Yugoslavia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('ZA', '南非', 'South Africa', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('ZM', '赞比亚', 'Zambia', 'N', null, null, null, null);
insert into COM_NATIONCODE (nation_code, nation_name, nation_en_name, del_flag, create_by, create_date, update_by, update_date)
values ('ZW', '津巴布韦', 'Zimbabwe', 'N', null, null, null, null);
commit;
prompt 247 records loaded
prompt Loading COM_ROLE...
insert into COM_ROLE (role_id, role_name, role_enname, role_type, data_scope, is_sys, remarks, create_by, create_date, update_by, update_date, del_flag)
values ('10000001', '系统管理员', 'admin', 'admin', '1', 'Y', null, null, null, '10000001', to_date('17-10-2018 19:02:47', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_ROLE (role_id, role_name, role_enname, role_type, data_scope, is_sys, remarks, create_by, create_date, update_by, update_date, del_flag)
values ('10000003', '普通用户', 'General User', null, null, null, '普通用户', '10000001', to_date('08-07-2016 22:02:07', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('26-01-2018 14:05:25', 'dd-mm-yyyy hh24:mi:ss'), 'N');
insert into COM_ROLE (role_id, role_name, role_enname, role_type, data_scope, is_sys, remarks, create_by, create_date, update_by, update_date, del_flag)
values ('10000120', '临时用户', 'casual user', null, null, null, '注册但未提交审批的用户', '10000001', to_date('16-07-2018 11:33:59', 'dd-mm-yyyy hh24:mi:ss'), '10000001', to_date('17-10-2018 19:02:55', 'dd-mm-yyyy hh24:mi:ss'), 'N');
commit;
prompt 3 records loaded
prompt Loading COM_ROLE_MENU...
prompt Table is empty
prompt Loading COM_ROLE_USER...
insert into COM_ROLE_USER (role_id, user_id, remarks, create_by, create_date, update_by, update_date, del_flag)
values ('10000001', '1001400', null, null, null, null, null, 'N');
insert into COM_ROLE_USER (role_id, user_id, remarks, create_by, create_date, update_by, update_date, del_flag)
values ('10000001', '10000001', null, null, null, null, null, 'N');
commit;
prompt 2 records loaded
prompt Loading COM_USER...
insert into COM_USER (user_id, office_id, login_name, password, user_name, email, phone_no, mobile_no, user_type, login_ip, login_date, create_by, create_date, update_by, update_date, del_flag, login_flag, remarks, employee_id, org_id)
values ('10000001', null, 'admin', '823ef22bc2c1d8978b3949f8212c349a4140b52e7a6e4a70ec1cb0bf', '系统管理员', '2459585@qq.com', '4564645', '13645845845', null, '127.0.0.1', to_date('04-05-2019 21:48:43', 'dd-mm-yyyy hh24:mi:ss'), '10000001', null, '10000001', to_date('03-04-2019 22:42:50', 'dd-mm-yyyy hh24:mi:ss'), 'N', null, null, null, '1000');
commit;
prompt 1 records loaded
set feedback on
set define on
prompt Done.
