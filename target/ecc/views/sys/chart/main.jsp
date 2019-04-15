<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/core/include/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="/core/include/head.jsp" %>	
 <script src="${ctxStatic}/plugins/echarts/3.2.2/echarts.js"></script>
<title>图表化展示</title>
</head>
<body >
<div id="content" class="col-xs-12 col-sm-12" >
<div id="ajax-content">
<div class="row">
	<form id="form" method="post" action=""></form>
	<div class="col-xs-12 col-sm-12" style="height:100%"></div>
	<%-- <div class="col-xs-12 col-sm-6">
		<div class="box">
		<%@include file="/core/include/boxHead.jsp" %>	
			<div class="box-content">
				<ul class="nav nav-tabs">
					<li ><a href="javascript:void(0)" onclick="fncSwitchChart2('1')" class="tab-link" data-toggle="tab" >线形图</a></li>
					<li class="active"><a href="javascript:void(0)" onclick="fncSwitchChart2('2')" class="tab-link" data-toggle="tab" >饼图</a></li>
				</ul>	
				<div id="container2" class="ct-chart tab-pane fade in active" style="height: 250%; width: 100%;"></div>
			</div>
		</div>
	</div> --%>
	<div class="col-xs-12 col-sm-10">
		<div class="box">
		<%@include file="/core/include/boxHead.jsp" %>	
			<div class="box-content">
				<!-- <ul class="nav nav-tabs">
					<li ><a href="javascript:void(0)" onclick="fncSwitchChart('1')" class="tab-link" data-toggle="tab" >线形图</a></li>
					<li class="active"><a href="javascript:void(0)" onclick="fncSwitchChart('2')" class="tab-link" data-toggle="tab" >柱形图</a></li>
				</ul>	 -->
				<div id="container" class="ct-chart tab-pane fade in active" style="height: 450%; width: 100%;"></div>
			</div>
		</div>
	</div>
</div>
</div>
<!--End Container-->
</div>
</body>
<!--  <script type="text/javascript"">
 
	/* function jumpPage(){
		actSubmit($('#form'), ctx+"/purchase");
	}
	function fncToNotice(){
		actSubmit($('#form'), ctx+"/sys/notice");
	}
	function fncNoticeDetail(noticeId){
		
		actSubmit($('#form'), ctx+"/sys/notice/detail?noticeId="+noticeId);
	}

	function fncSwitchChart2(charType){
		if(charType == "1"){
			var dom = document.getElementById("container2");
			var myChart = echarts.init(dom);
			myChart.setOption(getLineOption2());
			// 处理点击事件并且跳转到相应的资质效期页面
		    myChart.on('click', function (params) {
				actSubmit($('#form'), ctx+"/");
		    });
		}else if(charType == "2"){
			var dom = document.getElementById("container2");
			var myChart = echarts.init(dom);
			myChart.setOption(getPieOption2());
			myChart.on('click', function (params) {
				actSubmit($('#form'), ctx+"/");
		    });
			
			
		}
	}
	
	var dom2 = document.getElementById("container2");
	var myChart2 = echarts.init(dom2);
	var app = {};
	option = null;
	myChart2.showLoading();
	myChart2.hideLoading();
	myChart2.setOption(getPieOption2());
	
	function fncSwitchChart(charType){
		if(charType == "1"){
			var dom = document.getElementById("container");
			var myChart = echarts.init(dom);
			myChart.setOption(getLineOption2());
			// 处理点击事件并且跳转到相应的资质效期页面
		    myChart.on('click', function (params) {
				actSubmit($('#form'), ctx+"/");
		    });
		}else if(charType == "2"){
			var dom = document.getElementById("container");
			var myChart = echarts.init(dom);
			myChart.setOption(getPieOption2());
			myChart.on('click', function (params) {
				actSubmit($('#form'), ctx+"/");
		    });
			
			
		}
	}
	
	 var dom = document.getElementById("container");
	var myChart = echarts.init(dom);
	var app = {};
	option = null;
	myChart.showLoading();
	myChart.hideLoading();
	
 myChart.setOption(getLineOption()); 
 
 function getPieOption2(){
 	$.ajax({
			async : false,
			cache : false,
			type : "post",
			url : ctx + "/chart/certValidLine",
			success : function(data) {
				xData2=data.xData;
				yData2=data.yData;
				pieData2=data.pie;
				pie21=pieData2[0].NUM;
				pie22=pieData2[1].NUM;
				pie23=pieData2[2].NUM;
			},
			/* error : function() {
				alert("请求失败")
			} */
		});
 	var option = {
 		    title : {
 		        text: '生态供给管理',
 		        x:'center'
 		    },
 		    tooltip : {
 		        trigger: 'item',
 		        formatter: "{a} <br/>{b} : {c} ({d}%)"
 		    },
 		    legend: {
 		        orient: 'vertical',
 		        left: 'left',
 		        data: ['生态供给量','生态供给上限量','生态供给适宜量']
 		    },
 		    series : [
 		        {
 		            name: '生态供给管理',
 		            type: 'pie',
 		            radius : '55%',
 		            center: ['50%', '60%'],
 		            data:[
 		                {value:pie21, name:'生态供给量'},
   		                {value:pie22, name:'生态供给上限量'},
   		                {value:pie23, name:'生态供给适宜量'},
 		            ],
 		            itemStyle: {
 		                emphasis: {
 		                    shadowBlur: 10,
 		                    shadowOffsetX: 0,
 		                    shadowColor: 'rgba(0, 0, 0.5)'
 		                }
 		            }
 		        }
 		    ]
 		}; 
 	return option;
 }
 
 
 function getPieOption(){
	 	$.ajax({
				async : false,
				cache : false,
				type : "post",
				url : ctx + "/chart/certValidLine",
				success : function(data) {
					xData2=data.xData;
					yData2=data.yData;
					pieData2=data.pie;
					pie21=pieData2[0].NUM;
					pie22=pieData2[1].NUM;
					pie23=pieData2[2].NUM;
				},
				/* error : function() {
					alert("请求失败")
				} */
			});
	 	var option = {
	 		    title : {
	 		        text: '农业管理',
	 		        x:'center'
	 		    },
	 		    tooltip : {
	 		        trigger: 'item',
	 		        formatter: "{a} <br/>{b} : {c} ({d}%)"
	 		    },
	 		    legend: {
	 		        orient: 'vertical',
	 		        left: 'left',
	 		        data: ['农业生产量','农业含水量','碳含量转换','农业生产收获指数','农业生产消耗量']
	 		    },
	 		    series : [
	 		        {
	 		            name: '生态供给管理',
	 		            type: 'pie',
	 		            radius : '55%',
	 		            center: ['50%', '60%'],
	 		            data:[
	 		                {value:pie21, name:'农业生产量'},
	   		                {value:pie22, name:'农业含水量'},
	   		                {value:pie23, name:'碳含量转换'},
	   		             	{value:pie24, name:'农业生产收获指数'},
	   		                {value:pie25, name:'农业生产消耗量'},
	 		            ],
	 		            itemStyle: {
	 		                emphasis: {
	 		                    shadowBlur: 10,
	 		                    shadowOffsetX: 0,
	 		                    shadowColor: 'rgba(0, 0, 0.5)'
	 		                }
	 		            }
	 		        }
	 		    ]
	 		}; 
	 	return option;
	 }
 */
 </script> -->
 <script type="text/javascript">
 var dom;
 
 $(document).ready(function() {
	 fncSwitchChart("2");
		
	});
 
 function fncSwitchChart(charType){
		if(charType == "1"){
			
		}else if(charType == "2"){
			dom = document.getElementById("container");
			var myChart = echarts.init(dom);
			myChart.setOption(getPieOption());
			myChart.on('click', function (params) {
				actSubmit($('#form'), ctx+"/");
		    });
			
			
		}
	}
 function getPieOption(){
	   var posList = [
	                'left', 'right', 'top', 'bottom',
	                'inside',
	                'insideTop', 'insideLeft', 'insideRight', 'insideBottom',
	                'insideTopLeft', 'insideTopRight', 'insideBottomLeft', 'insideBottomRight'
	            ];
	  
	   dom.configParameters = {
	                rotate: {
	                    min: -90,
	                    max: 90
	                },
	                align: {
	                    options: {
	                        left: 'left',
	                        center: 'center',
	                        right: 'right'
	                    }
	                },
	                verticalAlign: {
	                    options: {
	                        top: 'top',
	                        middle: 'middle',
	                        bottom: 'bottom'
	                    }
	                },
	                position: {
	                    options: echarts.util.reduce(posList, function (map, pos) {
	                        map[pos] = pos;
	                        return map;
	                    }, {})
	                },
	                distance: {
	                    min: 0,
	                    max: 100000
	                }
	            };

	   dom.config = {
	                rotate: 90,
	                align: 'left',
	                verticalAlign: 'middle',
	                position: 'insideBottom',
	                distance: 15,
	                onChange: function () {
	                    var labelOption = {
	                        normal: {
	                            rotate: dom.config.rotate,
	                            align: dom.config.align,
	                            verticalAlign: dom.config.verticalAlign,
	                            position: dom.config.position,
	                            distance: dom.config.distance
	                        }
	                    };
	                    myChart.setOption({
	                        series: [{
	                            label: labelOption
	                        }, {
	                            label: labelOption
	                        }, {
	                            label: labelOption
	                        }, {
	                            label: labelOption
	                        }]
	                    });
	                }
	            };


	            var labelOption = {
	                normal: {
	                    show: true,
	                    position: dom.config.position,
	                    distance: dom.config.distance,
	                    align: dom.config.align,
	                    verticalAlign: dom.config.verticalAlign,
	                    rotate: dom.config.rotate,
	                    //formatter: '{c}  {{a}}',
	                   /*  fontSize: 16,
	                    rich: {
	                        name: {
	                            textBorderColor: '#fff'
	                        }
	                    } */
	                }
	            };  

	          var option = {
	        		  title : {
	        		        text: '农业管理',
	        		        x:'left'
	        		    },  
	                color: ['#003366', '#006699', '#4cabce', '#e5323e','#003366', '#006699', '#4cabce', '#e5323e','#003366', '#006699', '#4cabce', '#e5323e','#003366', '#006699', '#4cabce'],
	                tooltip: {
	                    trigger: 'axis',
	                    axisPointer: {
	                        type: 'shadow'
	                    }
	                },
	                legend: {
	                    data: ['茶', '豆类','坚果','咖啡','可可','茶', '豆类','坚果','咖啡','茶', '豆类','坚果','咖啡','可可','茶', '豆类','坚果','咖啡']
	                },
	                toolbox: {
	                    show: true,
	                    orient: 'vertical',
	                    left: 'right',
	                    top: 'center',
	                    feature: {
	                        mark: {show: true},
	                        dataView: {show: true, readOnly: false},
	                        magicType: {show: true, type: ['line', 'bar', 'stack', 'tiled']},
	                        restore: {show: true},
	                        saveAsImage: {show: true}
	                    }
	                },
	                calculable: true,
	                xAxis: [
	                    {
	                        type: 'category',
	                        axisTick: {show: false},
	                        data: ['Armenia','Afghanistan','Armenia','Afghanistan','Bangladesh']
	                    }
	                ],
	                yAxis: [
	                    {
	                        type: 'value'
	                    }
	                ],
	                series: [
	                    {
	                        name: '含水量',
	                        type: 'bar',
	                        barGap: 0,
	                        label: labelOption,
	                        data: [32011122, 332131232, 301231231, 3331232134, 312312390]
	                    },
	                    {
	                        name: '含水量',
	                        type: 'bar',
	                        label: labelOption,
	                        data: [32011122, 332131232, 301231231, 3331232134, 312312390]
	                    }, 
	                    {
	                        name: '收获指数',
	                        type: 'bar',
	                        label: labelOption,
	                        data: [32011122, 332131232, 301231231, 3331232134, 312312390]
	                    },
	                    {
	                        name: '消耗量',
	                        type: 'bar',
	                        label: labelOption,
	                        data: [32011122, 332131232, 301231231, 3331232134, 312312390]
	                    },
	                    {
	                        name: '',
	                        type: 'bar',
	                        barGap: 0,
	                        label: labelOption,
	                        data: [32011122, 332131232, 301231231, 3331232134, 312312390]
	                    },
	                    {
	                        name: '含水量',
	                        type: 'bar',
	                        label: labelOption,
	                        data: [32011122, 332131232, 301231231, 3331232134, 312312390]
	                    }, 
	                    {
	                        name: '收获指数',
	                        type: 'bar',
	                        label: labelOption,
	                        data: [32011122, 332131232, 301231231, 3331232134, 312312390]
	                    },
	                    {
	                        name: '消耗量',
	                        type: 'bar',
	                        label: labelOption,
	                        data: [32011122, 332131232, 301231231, 3331232134, 312312390]
	                    },
	                    {
	                        name: '含水量',
	                        type: 'bar',
	                        barGap: 0,
	                        label: labelOption,
	                        data: [32011122, 332131232, 301231231, 3331232134, 312312390]
	                    },
	                    {
	                        name: '含水量',
	                        type: 'bar',
	                        label: labelOption,
	                        data: [32011122, 332131232, 301231231, 3331232134, 312312390]
	                    }, 
	                    {
	                        name: '收获指数',
	                        type: 'bar',
	                        label: labelOption,
	                        data: [32011122, 332131232, 301231231, 3331232134, 312312390]
	                    },
	                    {
	                        name: '消耗量',
	                        type: 'bar',
	                        label: labelOption,
	                        data: [32011122, 332131232, 301231231, 3331232134, 312312390]
	                    },
	                    {
	                        name: '',
	                        type: 'bar',
	                        barGap: 0,
	                        label: labelOption,
	                        data: [32011122, 332131232, 301231231, 3331232134, 312312390]
	                    },
	                    {
	                        name: '含水量',
	                        type: 'bar',
	                        label: labelOption,
	                        data: [32011122, 332131232, 301231231, 3331232134, 312312390]
	                    }, 
	                    {
	                        name: '收获指数',
	                        type: 'bar',
	                        label: labelOption,
	                        data: [32011122, 332131232, 301231231, 3331232134, 312312390]
	                    },
	                    {
	                        name: '消耗量',
	                        type: 'bar',
	                        label: labelOption,
	                        data: [32011122, 332131232, 301231231, 3331232134, 312312390]
	                    }
	                    ,
	                    {
	                        name: '消耗量',
	                        type: 'bar',
	                        label: labelOption,
	                        data: [32011122, 332131232, 301231231, 3331232134, 312312390]
	                    }
	                    
	                ]
	            };
	            return option;
 }
 
 </script>
</html>
