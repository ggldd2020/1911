<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>部门信息管理</title>
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
          <a class="" href="javascript:void(0);" >授权管理</a>
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
			<h1 style="margin-left: 600px">部门信息管理</h1>
			<div style="padding: 15px;">
				<input id="select" type="text" name="title" placeholder="请输入要查询的内容"
					class="layui-input"
					style="width: 150px; margin-top: 5px; display: inline-block;">
				<button class='layui-btn layui-btn-normal' id='list_select' onclick="selectdepartment()">查询</button>
				<button class='layui-btn layui-btn-normal' id='list_add'
					data-method="offset" data-type="auto" onclick="adddepartment()">新建</button>
			</div>
			<table class="layui-hide" id="test" lay-filter="test"></table>
		</div>
		<div hidden id="update_id_div">
		<div class="layui-inline">
				<label class="layui-form-label">部门序号</label>
				<div class="layui-input-inline">
					<input type="text" name="update_departmentid" autocomplete="off"
						id="update_departmentid" class="layui-input" disabled="disabled"/>
				</div>
			</div>
			
			<div class="layui-inline">
				<label class="layui-form-label">部门名称</label>
				<div class="layui-input-inline">
					<input type="text" name="update_departmentname" autocomplete="off"
						id="update_departmentname" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">部门经理</label>
				<div class="layui-input-inline">
					<input type="text" name="update_supervisor" autocomplete="off"
						id="update_supervisor" class="layui-input">
				</div>
			</div>
			
		</div>
		<div hidden id="adddepartment_div">
		
			<div class="layui-inline">
				<label class="layui-form-label">部门名称</label>
				<div class="layui-input-inline">
					<input type="text" name="adddepartmentname" autocomplete="off"
						id="adddepartmentname" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">部门经理</label>
				<div class="layui-input-inline">
					<input type="text" name="addsupervisor" autocomplete="off"
						id="addsupervisor" class="layui-input">
				</div>
			</div>
			
		</div>

		<script type="text/javascript" src="layui/jquery-3.4.1.min.js"></script>
		<script type="text/javascript" src="layui/layui.all.js"></script>
		<script type="text/javascript">
			var table = layui.table;
			var layer = layui.layer;
				 
			
			//触发事件   
			function adddepartment() {
				layer.open({
					title : "新增信息",
					type : 1,
					content : $("#adddepartment_div"),
					btn : [ "保存", "关闭" ],
					btn1 : function() {
						$.post("adddepartment", {
							"departmentname" : $("#adddepartmentname").val(),
							"supervisor" : $("#addsupervisor").val(),
						}, function() {
							//关闭窗口
							layer.closeAll();
							//列表刷新
							layer.msg("修改成功");
							table.reload("department");
						});
					},
					btn2 : function() {
						layer.closeAll();
					}
				});
			}
			function selectdepartment(){
				var select = $("#select").val();
				table.reload("test", {
					url : "selectdepartment",
					where : {
						"param" : select,
					}
				});

				}
			
		</script>

		<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-xs" lay-event="edit" >编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
		<script>
			layui.use('table', function() {
				var table = layui.table;
				table.render({
					elem : '#test',
					url : 'selectalldepartment',
					cellMinWidth : 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
					,
					cols : [ [ {
						field : 'departmentid',
						width : '20%',
						title : 'ID',
						sort : true
					}, {
						field : 'departmentname',
						width : '40%',
						title : '部门名称',
						width : '20%'
					}, {
						field : 'supervisor',
						width : '20%',
						title : '部门经理',
						sort : true
					}, {
						field : 'right',
						width : '20%',
						align : 'center',
						toolbar : '#barDemo',
						sort : true
					} ] ]
				});
				table.on('tool(test)', function(obj){
				    var data = obj.data;
				    var departmentid =data.departmentid;
				    if(obj.event === 'del'){
				      layer.confirm('真的删除行么', function(index){
				    	  $.post("deldepartment", {
								"departmentid" : departmentid
							}, function() {
								//重新加载列表
								layer.close(index);
								layer.msg("删除成功");
								table.reload("test");
							});
				      }); 
				        
				      }else if(obj.event === 'edit'){
							$("#update_departmentid").val(data.departmentid);
							$("#update_departmentname").val(data.departmentname);
							$("#update_supervisor").val(data.supervisor);
								layer.open({
									title : "修改信息",
									type : 1,
									content:$("#update_id_div"),
									btn : [ "保存", "关闭" ],
									btn1 : function() {
										$.post("updatedepartment", {
											"departmentid" : $("#update_departmentid").val(),
											"departmentname" : $("#update_departmentname").val(),
											"supervisor" : $("#update_supervisor").val(),
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