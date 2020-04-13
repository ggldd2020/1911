<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>公海客户</title>
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
			<h1 style="margin-left: 600px">顾客基本信息管理</h1>
			<div style="padding: 15px;">
				<input id="select" type="text" name="title" placeholder="请输入要查询的内容"
					class="layui-input"
					style="width: 150px; margin-top: 5px; display: inline-block;">
				<button class='layui-btn layui-btn-normal' id='list_select' onclick="selectvisit()">查询</button>
				<button class='layui-btn layui-btn-normal' id='list_add'
					data-method="offset" data-type="auto" onclick="addvisit()">新建</button>
			</div>
			<table class="layui-hide" id="test" lay-filter="test"></table>
		</div>
		<div hidden id="update_id_div">
		<div class="layui-inline">
				<label class="layui-form-label">客户编号</label>
				<div class="layui-input-inline">
					<input type="text" name="update_visitid" autocomplete="off"
						id="update_visitid" class="layui-input" disabled="disabled"/>
				</div>
			</div>
			
			<div class="layui-inline">
				<label class="layui-form-label">客户姓名</label>
				<div class="layui-input-inline">
					<input type="text" name="update_visitname" autocomplete="off"
						id="update_visitname" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">客户联系方式</label>
				<div class="layui-input-inline">
					<input type="text" name="update_visittel" autocomplete="off"
						id="update_visittel" class="layui-input">
				</div>
			</div>
		</div>
		<div hidden id="addvisit_div">
			<div class="layui-inline">
				<label class="layui-form-label">客户姓名</label>
				<div class="layui-input-inline">
					<input type="text" name="addvisitname" autocomplete="off"
						id="addvisitname" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">客户联系方式</label>
				<div class="layui-input-inline">
					<input type="text" name="addvisittel" autocomplete="off"
						id="addvisittel" class="layui-input">
				</div>
			</div>
		</div>

		<script type="text/javascript" src="layui/jquery-3.4.1.min.js"></script>
		<script type="text/javascript" src="layui/layui.all.js"></script>
		<script type="text/javascript">
			var table = layui.table,laydate=layui.laydate;
			var layer = layui.layer;
			//触发事件   
			function addvisit() {
				$("#addvisit_div input").val("");
				layer.open({
					title : "新增信息",
					type : 1,
					content : $("#addvisit_div"),
					btn : [ "保存", "关闭" ],
					btn1 : function() {
						$.post("addvisit1", {
							"visitname" : $("#addvisitname").val(),
							"visittel" : $("#addvisittel").val(),
							"visittype" : $("#add_visittype").val(),
							"visitorder" : $("#add_visitorder").val(),
							"visitlastvisit" : $("#add_visitlastvisit").val(),
						}, function() {
							//关闭窗口
							layer.closeAll();
							//列表刷新
							layer.msg("新增成功");
							table.reload("test");
						});
					},
					btn2 : function() {
						layer.closeAll();
					}
				});
			}
			function selectvisit(){
				var select = $("#select").val();
				table.reload("test", {
					url : "selectvisit1",
					where : {
						"param" : select,
					}
				});

				}
			
		</script>

		<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-xs" lay-event="edit1" >跟单</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit" >编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
		<script>
			layui.use('table', function() {
				var table = layui.table;
				table.render({
					elem : '#test',
					url : 'selectallvisit1',
					cellMinWidth : 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
					,
					cols : [ [ {
						field : 'visitid',
						width : '20%',
						title : 'ID',
						sort : true
					}, {
						field : 'visitname',
						width : '10%',
						title : '客户姓名',
						width : '10%'
					}, {
						field : 'visittel',
						width : '20%',
						title : '客户联系方式',
						sort : true
					},  {
						field : 'right',
						width : '50%',
						align : 'center',
						toolbar : '#barDemo',
						sort : true
					} ] ]
				});
				table.on('tool(test)', function(obj){
				    var data = obj.data;
				    var visitid =data.visitid;
				    if(obj.event === 'del'){
				      layer.confirm('真的删除行么', function(index){
				    	  $.post("delvisit1", {
								"visitid" : visitid
							}, function() {
								//重新加载列表
								layer.close(index);
								layer.msg("删除成功");
								table.reload("test");
							});
				      }); 
				        
				      }else if(obj.event === 'edit'){
							$("#update_visitid").val(data.visitid);
							$("#update_visitname").val(data.visitname);
							$("#update_visittel").val(data.visittel);
								layer.open({
									title : "修改信息",
									type : 1,
									content:$("#update_id_div"),
									btn : [ "保存", "关闭" ],
									btn1 : function() {
										$.post("updatevisit", {
											"visitid" : $("#update_visitid").val(),
											"visitname" : $("#update_visitname").val(),
											"visittel" : $("#update_visittel").val(),
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
				      else if(obj.event === 'edit1'){
							$("#update_visitid").val(data.visitid);
							$("#update_visitname").val(data.visitname);
							$("#update_visittel").val(data.visittel);
								layer.open({
									title : "客户跟单",
									type : 1,
									content:$("#update_id_div"),
									btn : [ "跟单", "放弃" ],
									btn1 : function() {
										$.post("addcustomer", {
											"customername" : $("#update_visitname").val(),
											"customertel" : $("#update_visittel").val(),
								    }), 
								        $.post("delvisit1", {
										"visitid" : visitid
									}, function() {
												//关闭窗口
												layer.closeAll();
												//列表刷新
												layer.msg("跟单成功");
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