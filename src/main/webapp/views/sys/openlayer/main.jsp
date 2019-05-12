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
    <div id="map" style="width: 100%, height: 400px"></div>
     <script type="text/javascript">
        window.onload = function () {
            //实例化全屏显示控件
            var fullScreenControl = new ol.control.FullScreen();
 
            //实例化地图
            var map = new ol.Map({
                target: 'map',
                layers: [
                    new ol.layer.Tile({
                        source:new ol.source.OSM()
                    })
                ],
                view: new ol.View({
                    center: [12900000, 4900000],
                    zoom:8
                })
            });
 
            //将全屏显示控件加载到map中
            map.addControl(fullScreenControl);
        };
    </script>
</body>
</html>
