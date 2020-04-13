<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>后台主页面</title>

<link rel="stylesheet" href="layui/css/layui.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">后台管理</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="">在线人数：1</a></li>
      <li class="layui-nav-item">
        <a href="javascript:;">其它系统</a>
        <dl class="layui-nav-child">
          <dd><a href="">邮件管理</a></dd>
          <dd><a href="">消息管理</a></dd>
          <dd><a href="">授权管理</a></dd>
        </dl>
      </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
          贤心
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">基本资料</a></dd>
          <dd><a href="">安全设置</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="">退出</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">授权管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:void(0);" id="usercontrol"  onclick="newDoc1()">跟单批注</a></dd>
            <dd><a href="javascript:void(0);" id="admincontrol" onclick="newDoc2()">员工授权管理</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:void(0);" id="userlist" onclick="newDoc()">用户列表</a>
        </li>
         <li class="layui-nav-item">
          <a href="javascript:void(0);" id="adminlist" onclick="newDoc3()">员工列表</a>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:void(0);" id="department" onclick="newDoc4()">部门列表</a>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:void(0);" id="customer" onclick="newDoc5()">顾客列表</a>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:void(0);" id="role" onclick="newDoc6()">职务权限管理列表</a>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:void(0);" id="visit" onclick="newDoc7()">公海客户</a>
        </li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
    <div id="test1" class="demo-tree demo-tree-box"></div>
    <div class="button" style="margin-top:20px;">
    <button class="layui-btn" style="height:35px;width:60px">保存</button>
    <button class="layui-btn layui-btn-danger" style="height:35px;width:60px">取消</button>
    </div>
    
</div>
  </div>

 
</div>
<script>
function newDoc() {
    window.location.assign("userlist")
 }
function newDoc1() {
    window.location.assign("usercontrol")
 }
function newDoc2() {
    window.location.assign("admincontrol")
 }
function newDoc3() {
    window.location.assign("adminlist")
 }
function newDoc4() {
	window.location.assign("department")
}
function newDoc5() {
	window.location.assign("customerlist")
}
function newDoc6() {
	window.location.assign("role")
}
function newDoc7() {
	window.location.assign("visit")
}
</script>

<script src="layui/layui.all.js"></script>
<script>
var $=layui.jquery;
var table=layui.table;
var upload =layui.upload;
var tree=layui.tree;
$.ajaxSettings.async = false;
var testTree;
$.post("treeJson",function(d){
	testTree=d;
})
//常规用法
 tree.render({
   elem:'#test1' //默认是点击节点可进行收缩
   ,data: testTree
   ,showCheckbox: true
});
</script>

</body>
</html>