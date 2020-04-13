<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>员工授权管理页面</title>
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
            <dd><a href="javascript:void(0);" id="usercontrol" onclick="newDoc1()">跟单批注</a></dd>
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
          <a href="javascript:void(0);" id="customer" onclick="newDoc5()">顾客管理</a>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:void(0);" id="role" onclick="newDoc6()">职务授权权限管理</a>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:void(0);" id="visit" onclick="newDoc7()">公海客户</a>
        </li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
   <!-- 内容主体区域 -->
			<h1 style="margin-left: 600px">员工基本信息管理</h1>
			<div style="padding: 15px;">
				<input id="select" type="text" name="title" placeholder="请输入要查询的内容"
					class="layui-input"
					style="width: 150px; margin-top: 5px; display: inline-block;">
				<button class='layui-btn layui-btn-normal' id='list_select' onclick="selectadmin()">查询</button>
			</div>
			<table class="layui-hide" id="test" lay-filter="test"></table>
		</div>
		<div hidden id="update_id_div">
		<div class="layui-inline">
				<label class="layui-form-label">序列号</label>
				<div class="layui-input-inline">
					<input type="text" name="update_adminid" autocomplete="off"
						id="update_adminid" class="layui-input" disabled="disabled"/>
				</div>
			</div>
			
			<div class="layui-inline">
				<label class="layui-form-label">员工姓名</label>
				<div class="layui-input-inline">
					<input type="text" name="update_adminname" autocomplete="off"
						id="update_adminname" class="layui-input" disabled="disabled">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">年龄</label>
				<div class="layui-input-inline">
					<input type="text" name="update_adminage" autocomplete="off"
						id="update_adminage" class="layui-input" disabled="disabled">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">性别</label>
				<div class="layui-input-inline">
					<input type="text" name="update_adminsex" autocomplete="off"
						id="update_adminsex" class="layui-input" disabled="disabled">
				</div>
			</div>
        	<div class="layui-inline">
				<label class="layui-form-label">联系方式</label>
				<div class="layui-input-inline">
					<input type="text" name="update_admintel" autocomplete="off"
						id="update_admintel" class="layui-input" disabled="disabled">
				</div>
			</div>
			<div class="layui-form-item layui-form">
				<label class="layui-form-label">职位</label>
                <div class="layui-input-block" style="width:120px;">
                <select name="customertype" lay-verify="required" id="adminposition">
                <option value=""></option>
                <option value="0">专员</option>
                <option value="1">组长</option>
                <option value="2">主管</option>
                <option value="3">经理</option>
            </select>
           </div>
			</div>
			<div class="layui-form-item layui-form">
				<label class="layui-form-label">部门类别</label>
                <div class="layui-input-block" style="width:120px;">
                <select name="customertype" lay-verify="required" id="admintype">
                <option value=""></option>
                <option value="0">人力资源部</option>
                <option value="1">信息研发部</option>
                <option value="2">产品推广部</option>
                <option value="3">市场部</option>
            </select>
           </div>
			</div>
		</div>
		

		<script type="text/javascript" src="layui/jquery-3.4.1.min.js"></script>
		<script type="text/javascript" src="layui/layui.all.js"></script>
		<script type="text/javascript">
			var table = layui.table;
			var layer = layui.layer;
			//触发事件   
			function selectadmin(){
				var select = $("#select").val();
				table.reload("test", {
					url : "selectadmin",
					where : {
						"param" : select,
					}
				});

				}
			
		</script>

		<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-xs" lay-event="edit" >授权</a>
</script>
		<script>
			layui.use('table', function() {
				var table = layui.table;
				table.render({
					elem : '#test',
					url : 'selectalladmin',
					cellMinWidth : 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
					,
					cols : [ [ {
						field : 'adminid',
						width : 80,
						title : 'ID',
						sort : true
					}, {
						field : 'adminname',
						width : 80,
						title : '员工姓名',
						width : '10%'
					}, {
						field : 'adminsex',
						width : 80,
						title : '员工性别',
						sort : true
					}, {
						field : 'adminage',
						width : 80,
						title : '员工年龄'
					}, {
						field : 'adminposition',
						title : '职位',
						width : '10%',
						minWidth : 100
					} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
					, {
						field : 'admintype',
						title : '所属部门',
						sort : true
					}, {
						field : 'admintel',
						title : '员工联系方式',
						sort : true
					}, {
						field : 'right',
						width : 178,
						align : 'center',
						toolbar : '#barDemo',
						sort : true
					} ] ]
				});
				table.on('tool(test)', function(obj){
				    var data = obj.data;
				    var adminid =data.adminid;
				  if(obj.event === 'edit'){
					  $("#update_adminid").val(data.adminid);
						    $("#update_adminname").val(data.adminname);
						    $("#update_adminage").val(data.adminage);
					     	$("#update_adminsex").val(data.adminsex);
						    $("#update_admintel").val(data.admintel);
							$("#update_adminposition").val(data.adminposition);
							$("#update_admintype").val(data.admintype);
								layer.open({
									title : "修改信息",
									type : 1,
									content:$("#update_id_div"),
									btn : [ "授权", "取消" ],
									btn1 : function() {
										$.post("updateadmin", {
											"adminposition" : $("#update_adminposition").val(),
											"admintype" : $("#update_admintype").val(),
								}, function() {
												//关闭窗口
												layer.closeAll();
												//列表刷新
												layer.msg("修改成功");
												table.reload("test");
											}, 'html');
										},
										btn2 : function() {
											layer.closeAll();
										}
									});

							}
			});
			});
		</script>
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
	</div>

	<div class="layui-footer">
		<!-- 底部固定区域 -->
	</div>
	</div>
</body>
</html>