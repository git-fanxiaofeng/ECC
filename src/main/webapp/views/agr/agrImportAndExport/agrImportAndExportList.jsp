<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ include file="/core/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>农产品进出口页面</title>
<link rel="stylesheet" href="${ctxStatic}/css/moveDiv.css" type="text/css">
<%@include file="/core/include/head.jsp"%>
<%@include file="/core/include/vue/vue.jsp" %>
</head> 
<body>

	<div id="content" class="col-xs-12 col-sm-12">
		<div id="ajax-content">
			<rt:navigation/>
			<div class="row">
				<div class="col-xs-12 col-sm-12">
				  <div class="box">
					<div>
					<%@include file="/core/include/boxHead.jsp"%>
					 <div class="no-move"></div>
					</div>
					<div class="box-content">
							<form class="form-horizontal" id="form" action="/agrImportAndExport/agrImportAndExportList" method="post">
								<div class="form-group">
									<label class="col-sm-1 control-label" >数据类别</label>
									<div class="col-sm-2" >
										<rt:select2  id="dataType"  name = "dataType"  dataQuery="yes"  comCode="agrImportAndExport"  >
										</rt:select2>
									</div>
									<label class="col-sm-1 control-label">国家编码</label>
									<div class="col-sm-2">
										<input type="text"  v-model="countryCode" id="countryCode" name="countryCode" class="form-control" 	placeholder="国家编码" data-query="yes" data-toggle="tooltip"data-placement="bottom" >
									</div>
									<label class="col-sm-1 control-label">国家名称</label>
									<div class="col-sm-2">
										<input type="text" v-model="countryName" id="countryName" name="countryName" class="form-control" 	placeholder="国家名称" data-query="yes" data-toggle="tooltip"data-placement="bottom" >
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12 text-center btn-raycom-search">
										<button @click="chaxun()" type="button" class="btn btn-default  btn-xs btn-raycom " id="btnSearch" >
											查&nbsp;询 
										</button>
									</div>
								</div>
						</form>
					</div>
				</div>
				</div>
			</div>
		</div>
		<div class="col-sm-12 text-left btn-raycom-nav ">
			<input id="filed1Upload" name="file"  type="file" >
		 	<input v-model="materialfiled1" type="hidden" class="form-control" id="materialfiled1" name="materialfiled1">
			<button v-on:click="importExcel" type="button" class="btn btn-default btn-xs btn-raycom">
   				批量导入
  			</button>
			<button type="button" class="btn btn-default  btn-xs btn-raycom" onclick="fncExcel()" >
				导出Excel
			</button>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<div class="box-header">
						<%@include file="/core/include/boxHead.jsp"%>
						<div class="no-move"></div>
					</div>
					<div class="box-content no-padding">
						<table class="table table-striped table-bordered "	id="datatable-form" width="100%">
							<thead>
								<tr>
									<tr>
										<th data-column="num">序号</th>
										<th data-column="countryCode">国家编码</th>
										<th data-column="countryName">国家名称</th>
										<th data-column="tea">茶</th>
										<th data-column="beans">豆类</th>
										<th data-column="nuts">坚果类</th>
										<th data-column="coffee">咖啡</th>
										<th data-column="cocoa">可可 </th>
										<th data-column="hemp">麻类</th>
										<th data-column="cotton">棉花</th>
										<th data-column="otherGrains">其他谷物</th>
										<th data-column="vegetables">蔬果</th>
										<th data-column="potato">薯类</th>
										<th data-column="rice">水稻</th>
										<th data-column="grass">饲草</th>
										<th data-column="feed">饲料</th>
										<th data-column="corn">玉米</th>
										<th data-column="sugarPro">糖料产品</th>
										<th data-column="sugar">糖料作物</th>
										<!-- <th data-column="op"data-method="[
										{targets:-1,title:'查看',fncName:'fncDetail',params:'vendorDrugDictId'},
										{targets:-1,title:'删除',fncName:'fncDelete',params:'vendorDrugDictId',icon:'del'}
										]">操作</th> -->
									</tr>
							</thead>
							<tbody></tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">

	//回车键进行查询
	$(document).keydown(function (event) {
	    if(event.keyCode=='13')
	    	$("#btnSearch").click();
	});
	
	 var fxf = new Vue({
		el:'#content',
		data:{
			countryCode:'',
			countryName:'',
			materialfiled1:'',
			dataType:'',
		},
		 mounted:function(){
			$('#filed1Upload').rayfileupload('materialfiled1','fileDir');
			table = $('#datatable-form').raytable('form',{rightColumns:-1});
			$(".js-example-basic-single").select2();
			setWinMoved(); 
			
			$("#btnSearch").click(function() {
					table.ajax.reload();
			}); 
			
		}, 
		methods:{
			chaxun:function(){
				table.ajax.reload();
			},
			importExcel:function(){
				var _this = this;
				_this.materialfiled1 = $("#materialfiled1").val();
	 			if(_this.materialfiled1==""||_this.materialfiled1==null){
						rayDialog("请先选择要上传的Excel文件！");
				}else{
					_this.dataType = $('#dataType option:selected').text();
					rayDialogConfirm("确定要上传"+_this.dataType+"数据吗？",function(){
						$.ajax({
							url:ctx+"/agrImportAndExport/import",
							type:"POST",
							data:
							{
								fileId:_this.materialfiled1
							},
							success:function(data){
								if(data.hasError == "Y" ){
									rayDialog(data.errorMsg+"或填入信息有误！");
								}else{
									rayDialog("导入成功！",function(){
										actCancel($('#form'), ctx + "/agrImportAndExport");												
									});
								}
							} 
						}); 
					});
				}
			},
		},
		
	});
	
</script>
</html>