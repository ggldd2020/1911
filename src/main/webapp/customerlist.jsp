<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>顾客管理</title>
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
				<button class='layui-btn layui-btn-normal' id='list_select' onclick="selectcustomer()">查询</button>
				<button class='layui-btn layui-btn-normal' id='list_add'
					data-method="offset" data-type="auto" onclick="addcustomer()">新建</button>
			</div>
			<table class="layui-hide" id="test" lay-filter="test"></table>
		</div>
		<div hidden id="update_id_div">
		<div class="layui-inline">
				<label class="layui-form-label">客户编号</label>
				<div class="layui-input-inline">
					<input type="text" name="update_customerid" autocomplete="off"
						id="update_customerid" class="layui-input" disabled="disabled"/>
				</div>
			</div>
			
			<div class="layui-inline">
				<label class="layui-form-label">客户姓名</label>
				<div class="layui-input-inline">
					<input type="text" name="update_customername" autocomplete="off"
						id="update_customername" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">客户联系方式</label>
				<div class="layui-input-inline">
					<input type="text" name="update_customertel" autocomplete="off"
						id="update_customertel" class="layui-input">
				</div>
			</div>
        	<div class="layui-form-item layui-form">
				<label class="layui-form-label">客户类型</label>
                <div class="layui-input-block" style="width:120px;">
                <select name="update_customertype" lay-verify="required" id="update_customertype">
                <option value=""></option>
                <option value="跟单客户">跟单客户</option>
                <option value="下单客户">下单客户</option>
                <option value="付款客户">付款客户</option>
                <option value="成交客户">成交客户</option>
            </select>
           </div>
			</div>
			<div class="layui-form-item layui-form">
				<label class="layui-form-label">客户状态</label>
                <div class="layui-input-block" style="width:120px;">
                <select name="update_customerorder" lay-verify="required" id="update_customerorder">
                <option value=""></option>
                <option value="有意向">有意向</option>
                <option value="未付款">未付款</option>
                <option value="已付款">已付款</option>
            </select>
           </div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">最终回访时间</label>
				<div class="layui-input-inline">
					<input type="text" name="update_customerlastvisit" autocomplete="off"
						id="update_customerlastvisit" class="layui-input">
				</div>
			</div>
		</div>
		<div hidden id="addcustomer_div">
			<div class="layui-inline">
				<label class="layui-form-label">客户姓名</label>
				<div class="layui-input-inline">
					<input type="text" name="addcustomername" autocomplete="off"
						id="addcustomername" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">客户联系方式</label>
				<div class="layui-input-inline">
					<input type="text" name="addcustomertel" autocomplete="off"
						id="addcustomertel" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item layui-form">
				<label class="layui-form-label">客户类型</label>
                <div class="layui-input-block" style="width:120px;">
                <select name="add_customertype" lay-verify="required" id="add_customertype">
                <option value=""></option>
                <option value="跟单客户">跟单客户</option>
                <option value="下单客户">下单客户</option>
                <option value="付款客户">付款客户</option>
                <option value="成交客户">成交客户</option>
            </select>
           </div>
			</div>
			<div class="layui-form-item layui-form">
				<label class="layui-form-label">客户状态</label>
                <div class="layui-input-block" style="width:120px;">
                <select name="add_customerorder" lay-verify="required" id="add_customerorder">
                <option value=""></option>
                <option value="有意向">有意向</option>
                <option value="未付款">未付款</option>
                <option value="已付款">已付款</option>
            </select>
           </div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">最后回访时间</label>
				<div class="layui-input-inline">
					<input type="text" name="add_customerlastvisit" id="add_customerlastvisit" lay-verify="date"  autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>

		<script type="text/javascript" src="layui/jquery-3.4.1.min.js"></script>
		<script type="text/javascript" src="layui/layui.all.js"></script>
		<script type="text/javascript">
			var table = layui.table,laydate=layui.laydate;
			var layer = layui.layer;
				 
			 //日期
			  laydate.render({
			    elem: '#add_customerlastvisit'
			  });
			  laydate.render({
				    elem: '#update_customerlastvisit'
				  });
			//触发事件   
			function addcustomer() {
				$("#addcustomer_div input").val("");
				layer.open({
					title : "新增信息",
					type : 1,
					content : $("#addcustomer_div"),
					btn : [ "保存", "关闭" ],
					btn1 : function() {
						$.post("addcustomer", {
							"customername" : $("#addcustomername").val(),
							"customertel" : $("#addcustomertel").val(),
							"customertype" : $("#add_customertype").val(),
							"customerorder" : $("#add_customerorder").val(),
							"customerlastvisit" : $("#add_customerlastvisit").val(),
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
			function selectcustomer(){
				var select = $("#select").val();
				table.reload("test", {
					url : "selectcustomer",
					where : {
						"param" : select,
					}
				});

				}
			
		</script>

		<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-xs" lay-event="edit2" >放弃跟单</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit" >编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
		<script>
			layui.use('table', function() {
				var table = layui.table;
				table.render({
					elem : '#test',
					url : 'selectallcustomer',
					cellMinWidth : 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
					,
					cols : [ [ {
						field : 'customerid',
						width : 80,
						title : 'ID',
						sort : true
					}, {
						field : 'customername',
						width : '10%',
						title : '客户姓名',
						width : '10%'
					}, {
						field : 'customertel',
						width : '15%',
						title : '客户联系方式',
						sort : true
					}, {
						field : 'customertype',
						width : '10%',
						title : '客户类型'
					}, {
						field : 'customerorder',
						title : '客户状态',
						width : '10%',
						minWidth : 100
					} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
					, {
						field : 'customerlastvisit',
						title : '最后回访时间',
						sort : true
					}, {
						field : 'right',
						width : '15%',
						align : 'center',
						toolbar : '#barDemo',
						sort : true
					} ] ]
				});
				table.on('tool(test)', function(obj){
				    var data = obj.data;
				    var customerid =data.customerid;
				    if(obj.event === 'del'){
				      layer.confirm('真的删除行么', function(index){
				    	  $.post("delcustomer", {
								"customerid" : customerid
							}, function() {
								//重新加载列表
								layer.close(index);
								layer.msg("删除成功");
								table.reload("test");
							});
				      }); 
				        
				      }else if(obj.event === 'edit'){
							$("#update_customerid").val(data.customerid);
							$("#update_customername").val(data.customername);
							$("#update_customertel").val(data.customertel);
							$("#update_customertype").val(data.customertype);
							$("#update_customerorder").val(data.customerorder);
							$("#update_customerlastvisit").val(data.customerlastvisit);
								layer.open({
									title : "修改信息",
									type : 1,
									content:$("#update_id_div"),
									btn : [ "保存", "关闭" ],
									btn1 : function() {
										$.post("updatecustomer", {
											"customerid" : $("#update_customerid").val(),
											"customername" : $("#update_customername").val(),
											"customertel" : $("#update_customertel").val(),
											"customertype" : $("#update_customertype").val(),
											"customerorder" : $("#update_customerorder").val(),
											"customerlastvisit" : $("#update_customerlastvisit").val(),
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

							}else if(obj.event === 'edit2'){
								$("#update_customerid").val(data.customerid);
								$("#update_customername").val(data.customername);
								$("#update_customertel").val(data.customertel);
								$("#update_customertype").val(data.customertype);
								$("#update_customerorder").val(data.customerorder);
								$("#update_customerlastvisit").val(data.customerlastvisit);
									layer.open({
										title : "取消跟单",
										type : 1,
										content:$("#update_id_div"),
										btn : [ "确认", "取消" ],
										btn1 : function() {
											$.post("addvisit1", {
												"visitname" : $("#update_customername").val(),
												"visittel" : $("#update_customertel").val(),
									}),
									 $.post("delcustomer", {
											"customerid" : customerid
										}, 

									function() {
													//关闭窗口
													layer.closeAll();
													//列表刷新
													layer.msg("取消成功");
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