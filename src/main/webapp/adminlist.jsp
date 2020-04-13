<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>员工列表</title>
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
          <a href="javascript:void(0);" id="customerlist" onclick="newDoc5()">顾客列表</a>
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
			<h1 style="margin-left: 600px">员工基本信息管理</h1>
			<div style="padding: 15px;">
				<input id="select" type="text" name="title" placeholder="请输入要查询的内容"
					class="layui-input"
					style="width: 150px; margin-top: 5px; display: inline-block;">
				<button class='layui-btn layui-btn-normal' id='list_select' onclick="selectadmin()">查询</button>
				<button class='layui-btn layui-btn-normal' id='list_add'
					data-method="offset" data-type="auto" onclick="addadmin()">新建</button>
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
						id="update_adminname" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">年龄</label>
				<div class="layui-input-inline">
					<input type="text" name="update_adminage" autocomplete="off"
						id="update_adminage" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">性别</label>
				<div class="layui-input-inline">
					<input type="text" name="update_adminsex" autocomplete="off"
						id="update_adminsex" class="layui-input">
				</div>
			</div>
        	<div class="layui-inline">
				<label class="layui-form-label">联系方式</label>
				<div class="layui-input-inline">
					<input type="text" name="update_admintel" autocomplete="off"
						id="update_admintel" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">职位</label>
				<div class="layui-input-inline">
					<input type="text" name="update_adminposition" autocomplete="off"
						id="update_adminposition" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">任职部门</label>
				<div class="layui-input-inline">
					<input type="text" name="update_admintype" autocomplete="off"
						id="update_admintype" class="layui-input">
				</div>
			</div>
		</div>
		<div hidden id="addadmin_div">
		<!-- 自增不需要这个了 -->
			<!-- <div class="layui-inline">
				<label class="layui-form-label">用户编号</label>
				<div class="layui-input-inline">
					<input type="text" name="adduserid" autocomplete="off"
						id="adduserid" class="layui-input">
				</div>
			</div> -->
			<div class="layui-inline">
				<label class="layui-form-label">员工姓名</label>
				<div class="layui-input-inline">
					<input type="text" name="addadminname" autocomplete="off"
						id="addadminname" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">员工性别</label>
				<div class="layui-input-inline">
					<input type="text" name="addadminsex" autocomplete="off"
						id="addadminsex" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">员工年龄</label>
				<div class="layui-input-inline">
					<input type="text" name="addadminage" autocomplete="off"
						id="addadminage" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">员工职位</label>
				<div class="layui-input-inline">
					<input type="text" name="addadminposition" autocomplete="off"
						id="addadminposition" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">任职部门</label>
				<div class="layui-input-inline">
					<input type="text" name="addadmintype" autocomplete="off"
						id="addadmintype" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">员工联系方式</label>
				<div class="layui-input-inline">
					<input type="text" name="addusertel" autocomplete="off"
						id="addusertel" class="layui-input">
				</div>
			</div>
		</div>

		<script type="text/javascript" src="layui/jquery-3.4.1.min.js"></script>
		<script type="text/javascript" src="layui/layui.all.js"></script>
		<script type="text/javascript">
			var table = layui.table;
			var layer = layui.layer;
				 
			
			//触发事件   
			function addadmin() {
				layer.open({
					title : "新增信息",
					type : 1,
					content : $("#addadmin_div"),
					btn : [ "保存", "关闭" ],
					btn1 : function() {
						$.post("addadmin", {
							"adminname" : $("#addadminname").val(),
							"adminsex" : $("#addadminsex").val(),
							"adminage" : $("#addadminage").val(),
							"admintel" : $("#addadmintel").val(),
							"adminposition" : $("#addadminposition").val(),
							"admintype" : $("#addadmintype").val(),
						}, function() {
							//关闭窗口
							layer.closeAll();
							//列表刷新
							layer.msg("修改成功");
							table.reload("adminlist");
						});
					},
					btn2 : function() {
						layer.closeAll();
					}
				});
			}
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
  <a class="layui-btn layui-btn-xs" lay-event="edit" >编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
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
				    if(obj.event === 'del'){
				      layer.confirm('真的删除行么', function(index){
				    	  $.post("deladmin", {
								"adminid" : adminid
							}, function() {
								//重新加载列表
								layer.close(index);
								layer.msg("删除成功");
								table.reload("test");
							});
				      }); 
				        
				      }else if(obj.event === 'edit'){
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
									btn : [ "保存", "关闭" ],
									btn1 : function() {
										$.post("updateadmin", {
											"adminid" : $("#update_adminid").val(),
											"adminname" : $("#update_adminname").val(),
											"adminage" : $("#update_adminage").val(),
											"adminsex" : $("#update_adminsex").val(),
											"admintel" : $("#update_admintel").val(),
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