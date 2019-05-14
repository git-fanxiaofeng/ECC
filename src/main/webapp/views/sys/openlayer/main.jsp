<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/core/include/taglib.jsp"%>
<!DOCTYPE html>
<html xmlns=http://www.w3.org/1999/xhtml>
<head>                  
    <meta http-equiv=Content-Type content="text/html;charset=utf-8">
    <meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1">
    <meta content=always name=referrer>
    <title>OpenLayers 3展示</title>
    <%@include file="/core/include/head.jsp" %>
    <%@include file="/core/include/vue/vue.jsp" %>		
</head>
<body>
<div id="content" class="col-xs-12 col-sm-12" >
<div id="ajax-content">
<!-- nav -->
<rt:navigation/>
	<div class="row">
	<div class="col-xs-12 col-sm-12">
    			<div id="mapDiv" style="width: 100%;height: 500px" ></div>
    </div>
   	</div>
</div>
<!--End Container-->
</div> 
    <script>
    var mapDiv = document.getElementById('mapDiv');
    map = new ol.Map({
        target: 'mapDiv',// 地图容器
        controls: ol.control.defaults().extend([
           // graphViewControl,// 自定义拓扑控件
            new ol.control.OverviewMap(),// 地图全局视图控件
            new ol.control.ScaleLine(),// 比例尺控件
            new ol.control.ZoomSlider(),// 缩放刻度控件
            new ol.control.ZoomToExtent()// 缩放到全局控件
        ]),
        layers: [// 图层
            new ol.layer.Tile({
                source: new ol.source.XYZ({// 谷歌地图 
                    url:'http://www.google.cn/maps/vt/pb=!1m4!1m3!1i{z}!2i{x}!3i{y}!2m3!1e0!2sm!3i345013117!3m8!2szh-CN!3scn!5e1105!12m4!1e68!2m2!1sset!2sRoadmap!4e0'  
                })  
            })
        ],
        view: new ol.View({// 地图视图
            projection: 'EPSG:3857',// 投影
            center: ol.proj.fromLonLat([12900000, 4900000]),// 视图的初始中心 中心的坐标系由projection选项指定    
            zoom: 4// 缩放级别 用于计算视图的初始分辨率
        })
    });
    </script>
</body>
</html>
