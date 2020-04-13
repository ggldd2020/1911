<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>职务权限管理</title>
<link rel="stylesheet" href="layui/css/layui.css">
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<div class="layui-logo">后台管理</div>
			<!-- 头部区域（可配合layui已有的水平导航） -->
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item"><a href="">在线人数：1</a></li>
				<li class="layui-nav-item"><a href="javascript:;">其它系统</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="">邮件管理</a>
						</dd>
						<dd>
							<a href="">消息管理</a>
						</dd>
						<dd>
							<a href="">授权管理</a>
						</dd>
					</dl></li>
			</ul>
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item"><a href="javascript:;"> <img
						src="http://t.cn/RCzsdCq" class="layui-nav-img"> 贤心
				</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="">基本资料</a>
						</dd>
						<dd>
							<a href="">安全设置</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item"><a href="">退出</a></li>
			</ul>
		</div>

		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<ul class="layui-nav layui-nav-tree" lay-filter="test">
					<li class="layui-nav-item layui-nav-itemed"><a class=""
						href="javascript:;">授权管理</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:void(0);" id="usercontrol"
									onclick="newDoc1()">跟单批注</a>
							</dd>
							<dd>
								<a href="javascript:void(0);" id="admincontrol"
									onclick="newDoc2()">员工授权管理</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:void(0);"
						id="userlist" onclick="newDoc()">用户列表</a></li>
					<li class="layui-nav-item"><a href="javascript:void(0);"
						id="adminlist" onclick="newDoc3()">员工列表</a></li>
					<li class="layui-nav-item"><a href="javascript:void(0);"
						id="department" onclick="newDoc4()">部门列表</a></li>
					<li class="layui-nav-item"><a href="javascript:void(0);"
						id="customer" onclick="newDoc5()">顾客列表</a></li>
					<li class="layui-nav-item"><a href="javascript:void(0);"
						id="role" onclick="newDoc6()">职务权限管理列表</a></li>
						<li class="layui-nav-item"><a href="javascript:void(0);"
						id="visit" onclick="newDoc7()">公海客户</a></li>
				</ul>
			</div>
		</div>

		<div class="layui-body">
			<!-- 内容主体区域 -->
			<h1 style="margin-left: 600px">职务权限管理</h1>
			<div style="padding: 15px;">
				<input id="select" type="text" name="title" placeholder="请输入要查询的内容"
					class="layui-input"
					style="width: 150px; margin-top: 5px; display: inline-block;">
				<button class='layui-btn layui-btn-normal' id='list_select'
					onclick="selectrole()">查询</button>
				<button class='layui-btn layui-btn-normal' id='list_add'
					data-method="offset" data-type="auto" onclick="addrole()">新建</button>
					<button class='layui-btn layui-btn-normal' id='rolecontrol'
					data-method="offset" data-type="auto" onclick="rolecontrol()">角色授权</button>
			</div>
			<table class="layui-hide" id="test" lay-filter="test"></table>
		</div>
		<div hidden id="update_id_div">
			<div class="layui-inline">
				<label class="layui-form-label">序列号</label>
				<div class="layui-input-inline">
					<input type="text" name="update_role_id" autocomplete="off"
						id="update_role_id" class="layui-input" disabled="disabled" />
				</div>
			</div>

			<div class="layui-inline">
				<label class="layui-form-label">职位名称</label>
				<div class="layui-input-inline">
					<input type="text" name="update_rolename" autocomplete="off"
						id="update_adminname" class="layui-input" disabled="disabled">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">职位权限</label>
				<div class="layui-input-inline">
					<input type="text" name="update_role_power" autocomplete="off"
						id="update_role_power" class="layui-input">
				</div>
			</div>

		</div>
		<div hidden id="addrole_div">
			<div class="layui-inline">
				<label class="layui-form-label">职位名称</label>
				<div class="layui-input-inline">
					<input type="text" name="addrole_name" autocomplete="off"
						id="addrole_name" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">职位权限</label>
				<div class="layui-input-inline">
					<input type="text" name="addrole_power" autocomplete="off"
						id="addrole_power" class="layui-input">
				</div>
			</div>
		</div>

		<script type="text/javascript" src="layui/jquery-3.4.1.min.js"></script>
		<script type="text/javascript" src="layui/layui.all.js"></script>
		<script type="text/javascript">
			var table = layui.table;
			var layer = layui.layer;

			//触发事件   
			function addrole() {
				layer.open({
					title : "新增信息",
					type : 1,
					content : $("#addrole_div"),
					btn : [ "保存", "关闭" ],
					btn1 : function() {
						$.post("addrole", {
							"role_name" : $("#addrole_name").val(),
							"role_power" : $("#addrole_power").val(),
						}, function() {
							//关闭窗口
							layer.closeAll();
							//列表刷新
							layer.msg("新建成功");
							table.reload("test");
						});
					},
					btn2 : function() {
						layer.closeAll();
					}
				});
			}
			function selectrole() {
				var select = $("#select").val();
				table.reload("test", {
					url : "selectrole",
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
					url : 'selectallrole',
					cellMinWidth : 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
					,
					cols : [ [ {
						field : 'role_id',
						width : '10%',
						title : 'ID',
						sort : true
					}, {
						field : 'role_name',
						width : '20%',
						title : '职位名称',
						width : '10%'
					}, {
						field : 'role_power',
						width : '50%',
						title : '职位权限',
						sort : true
					}, {
						field : 'right',
						width : '20%',
						align : 'center',
						toolbar : '#barDemo',
						sort : true
					} ] ]
				});
				table.on('tool(test)', function(obj) {
					var data = obj.data;
					var role_id = data.role_id;
					if (obj.event === 'del') {
						layer.confirm('真的删除该职位么', function(index) {
							$.post("delrole", {
								"role_id" : role_id
							}, function() {
								//重新加载列表
								layer.close(index);
								layer.msg("删除成功");
								table.reload("test");
							});
						});

					} else if (obj.event === 'edit') {
						$("#update_role_id").val(data.roleid);
						$("#update_role_name").val(data.rolename);
						$("#update_role_power").val(data.rolepower);
						layer.open({
							title : "修改信息",
							type : 1,
							content : $("#update_id_div"),
							btn : [ "保存", "关闭" ],
							btn1 : function() {
								$.post("updaterole", {
									"role_id" : $("#update_role_id").val(),
									"role_name" : $("#update_role_name").val(),
									"role_power" : $("#update_role_power").val(),
								}, function() {
									//关闭窗口
									layer.closeAll();
									//列表刷新
									layer.msg("修改成功");
									table.reload("test");
								});
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
			function rolecontrol() {
				window.location.assign("index")
			}
		</script>
	</div>

	<div class="layui-footer">
		<!-- 底部固定区域 -->
	</div>
	</div>
</body>
</html>