<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ include file="/core/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>生态供给上限量</title>
<link rel="stylesheet" href="${ctxStatic}/css/moveDiv.css" type="text/css">
<%@include file="/core/include/head.jsp"%>
<script type="text/javascript">

	//回车键进行查询
	$(document).keydown(function (event) {
	    if(event.keyCode=='13')
	    	$("#btnSearch").click();
	});
	
	$(document).ready(function() {
		$('#filed1Upload').rayfileupload('materialfiled1','fileDir');
		table = $('#datatable-form').raytable('form',{rightColumns:-1});
		$(".js-example-basic-single").select2();
		setWinMoved(); 
		
		$("#btnSearch").click(function() {
				table.ajax.reload();
		});
		
		$("#vendorDrugCode").keyup(function(event){
			if(event.keyCode == 13){
				$("#btnSearch").click();
			};
		});
		
		$("#drugName").keyup(function(event){
			if(event.keyCode == 13){
				$("#btnSearch").click();
			};
		});
		
		$("#firmName").keyup(function(event){
			if(event.keyCode == 13){
				$("#btnSearch").click();
			};
		});
		
		$("#aliasName").keyup(function(event){
			if(event.keyCode == 13){
				$("#btnSearch").click();
			};
		});
	});
	
	function fncExcel(){
		actSubmit($('#form'), ctx+"/suitableNumber/querySuitableNumberExcel");
	}
	
	function fncSave(){
		$.ajax({
			url:ctx+"/suitableNumber/saveSuitablePara",
			type:"POST",
			data:
			{
				suitablePara:$("#suitablePara").val()
			},
			success:function(data){
				if(data == "ok" ){
					rayDialog("计算完成！",function(){
						actCancel($('#form'), ctx + "/suitableNumber");												
					});
				}
			} 
		}); 
	}
	
	
</script>
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
							<form class="form-horizontal" id="form" action="/suitableNumber/suitableNumberList" method="post">
								<!-- <div class="form-group">
									<label class="col-sm-2 control-label">国家编码</label>
									<div class="col-sm-2">
										<input type="text" id="countrycode" name="countrycode" class="form-control" 	placeholder="国家编码" data-query="yes" data-toggle="tooltip" data-placement="bottom" >
									</div>
									<label class="col-sm-1 control-label">国家名称</label>
									<div class="col-sm-2">
										<input type="text" id="drugName" name="drugName" class="form-control" 	placeholder="国家名称" data-query="yes" data-toggle="tooltip" data-placement="bottom" >
									</div>
								</div> -->
								<div class="form-group">
									<label class="col-sm-2 control-label">生态保护情景参数2</label>
									<div class="col-sm-2">
										<input type="text" value="${data.suitablePara}" id="suitablePara" name="suitablePara" class="form-control" 	placeholder="情景参数" data-query="yes" data-toggle="tooltip" data-placement="bottom" >
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12 text-center btn-raycom-search">
										<!-- <button type="button" class="btn btn-default  btn-xs btn-raycom " id="btnSearch" >
											查&nbsp;询 
										</button> -->
										<button type="button" class="btn btn-default  btn-xs btn-raycom " onclick="fncSave()">
											计&nbsp;算 
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
										<th data-column="suitableNumber">生态供给适宜量</th>
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
</html>
