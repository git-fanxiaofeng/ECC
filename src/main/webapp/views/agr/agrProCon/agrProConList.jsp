<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ include file="/core/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>农产品生产量</title>
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
		actSubmit($('#form'), ctx+"/agrProCon/Excel");
	}
	
	function fncSave(){
		$.ajax({
			url:ctx+"/agrProCon/save",
			type:"POST",
			data:
			{
				wlr:$("#wlr").val(),
				prores:$("#proRes").val()
			},
			success:function(data){
				if(data == "ok" ){
					rayDialog("计算完成！",function(){
						actCancel($('#form'), ctx + "/agrProCon");												
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
							<form class="form-horizontal" id="form" action="/agrProCon/agrProConList" method="post">
								<div class="form-group">
									<label class="col-sm-2 control-label">农业生产资源利用率</label>
									<div class="col-sm-2">
										<input type="text" value="${data.PRORES}" id="proRes" name="proRes" class="form-control" 	placeholder="农业生产资源利用率" data-query="yes" data-toggle="tooltip"data-placement="bottom" >
									</div>
									<label class="col-sm-2 control-label">农业生产浪费率提升率</label>
									<div class="col-sm-2">
										<input type="text" value="${data.WLR}" id="wlr" name="wlr" class="form-control" 	placeholder="农业生产浪费率提升率" data-query="yes" data-toggle="tooltip"data-placement="bottom" >
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
			<!-- <input id="filed1Upload" name="file"  type="file" >
		 	<input type="hidden" class="form-control" id="materialfiled1" name="materialfiled1">
			<button type="button" class="btn btn-default btn-xs btn-raycom" onclick="importExcel()">
   				批量导入
  			  	</button> -->
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
										<th data-column="sugar">糖料作物</th>
										<th data-column="wheat">小麦</th>
										<th data-column="tobacco">烟草</th>
										<th data-column="corn">玉米</th>
										<th data-column="oil">油料作物</th>
										<th data-column="palm">棕榈</th>
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
