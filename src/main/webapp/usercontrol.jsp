<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>用户权限管理页面</title>
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
          <a href="javascript:void(0);" id="adminlist"  onclick="newDoc3()">员工列表</a>
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
    <h1 style="margin-left: 600px">跟单批注表</h1>
			<div style="padding: 15px;">
				<input id="select" type="text" name="title" placeholder="请输入要查询的内容"
					class="layui-input"
					style="width: 150px; margin-top: 5px; display: inline-block;">
				<button class='layui-btn layui-btn-normal' id='list_select' onclick="selectfollow()">查询</button>
				<button class='layui-btn layui-btn-normal' id='list_add'
					data-method="offset" data-type="auto" onclick="addfollow()">新建</button>
			</div>
			<table class="layui-hide" id="test" lay-filter="test"></table>
		</div>
		<div hidden id="update_follow">
		<div class="layui-inline">
				<label class="layui-form-label">订单编号</label>
				<div class="layui-input-inline">
					<input type="text" name="update_followid" autocomplete="off"
						id="update_followid" class="layui-input" disabled="disabled"/>
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
				<label class="layui-form-label">订单意向</label>
                <div class="layui-input-block" style="width:120px;">
                <select name="update_customerorder" lay-verify="required" id="update_customerorder">
                <option value=""></option>
                <option value="0">拒绝下单</option>
                <option value="1">意向下单</option>
                <option value="2">下单成功</option>
                <option value="3">交易成功</option>
            </select>
           </div>
			</div>
			<div class="layui-form-item layui-form">
				<label class="layui-form-label">支付数额</label>
                <div class="layui-input-block" style="width:120px;">
                <input type="text" name="update_customerorder" autocomplete="off"
						id="update_customerorder" class="layui-input">
           </div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">负责人姓名</label>
				<div class="layui-input-inline">
					<input type="text" name="update_adminname" autocomplete="off"
						id="update_adminname" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item layui-form">
				<label class="layui-form-label">负责人职务</label>
                <div class="layui-input-block" style="width:120px;">
                <select name="update_adminposition" lay-verify="required" id="update_adminposition">
                <option value=""></option>
                <option value="0">业务员</option>
                <option value="1">组长</option>
                <option value="2">主管</option>
                <option value="3">经理</option>
            </select>
           </div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">回访内容</label>
				<div class="layui-input-inline style="width:240px;height:120px">
					<input type="text" name="update_followmessage" autocomplete="off"
						id="update_followmessage" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">批注内容</label>
				<div class="layui-input-inline style="width:160px;height:90px">
					<input type="text" name="update_followps" autocomplete="off"
						id="update_followps" class="layui-input">
				</div>
			</div>
		</div>
		<div hidden id="addfollow_div">
			<div class="layui-inline">
				<label class="layui-form-label">客户姓名</label>
				<div class="layui-input-inline">
					<input type="text" name="addcustomername" autocomplete="off"
						id="addcustomername" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item layui-form">
				<label class="layui-form-label">订单进程</label>
                <div class="layui-input-block" style="width:120px;">
                <select name="addcustomerorder" lay-verify="required" id="addcustomerorder">
                <option value=""></option>
                <option value="0">拒绝下单</option>
                <option value="1">意向下单</option>
                <option value="2">下单成功</option>
                <option value="3">交易成功</option>
            </select>
           </div>
			</div>
			<div class="layui-form-item layui-form">
				<label class="layui-form-label">支付数额</label>
                <div class="layui-input-block" style="width:120px;">
                <input type="text" name="addcustomerorder" autocomplete="off"
						id="addcustomerorder" class="layui-input">
           </div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">负责人姓名</label>
				<div class="layui-input-inline">
					<input type="text" name="addadminname" autocomplete="off"
						id="addadminname" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item layui-form">
				<label class="layui-form-label">负责人职务</label>
                <div class="layui-input-block" style="width:120px;">
                <select name="addadminposition" lay-verify="required" id="addadminposition">
                <option value=""></option>
                <option value="0">业务员</option>
                <option value="1">组长</option>
                <option value="2">主管</option>
                <option value="3">经理</option>
            </select>
           </div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">回访内容</label>
				<div class="layui-input-inline style="width:240px;height:120px">
					<input type="text" name="addfollowmessage" autocomplete="off"
						id="addfollowmessage" class="layui-input">
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">批注内容</label>
				<div class="layui-input-inline style="width:160px;height:90px">
					<input type="text" name="addfollowps" autocomplete="off"
						id="addfollowps" class="layui-input">
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
			
			//触发事件   
			function addcustomer() {
				$("#addfollow_div input").val("");
				layer.open({
					title : "新增订单回访信息",
					type : 1,
					content : $("#addfollow_div"),
					btn : [ "保存", "关闭" ],
					btn1 : function() {
						$.post("addfollow", {
							"customername" : $("#addcustomername").val(),
							"customerorder" : $("#customerorder").val(),
							"customercash" : $("#add_customercash").val(),
							"adminname" : $("#add_adminname").val(),
							"adminposition" : $("#add_adminposition").val(),
							"followmessage" : $("#add_followmessage").val(),
							"followps" : $("#add_followps").val(),
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
					url : "selectfollow",
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
					url : 'selectallfollow',
					cellMinWidth : 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
					,
					cols : [ [ {
						field : 'followid',
						width : '8%',
						title : 'ID',
						sort : true
					}, {
						field : 'customername',
						width : '6%',
						title : '客户姓名',
					}, {
						field : 'customerorder',
						width : '6%',
						title : '订单进程',
						sort : true
					}, {
						field : 'customercash',
						width : '6%',
						title : '支付额度'
					}, {
						field : 'adminname',
						title : '负责人姓名',
						width : '10%',
					} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
					,{
						field : 'adminposition',
						title : '负责人职务',
						width : '10%',
						minWidth : 100
					},{
						field : 'followmessage',
						title : '订单回访内容',
						width : '25%',
						minWidth : 100
					},{
						field : 'followps',
						title : '订单批注',
						width : '15%',
						minWidth : 100
					},{
						field : 'right',
						width : '14%',
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
									title : "修改订单信息",
									type : 1,
									content:$("#update_follow"),
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
										content:$("#update_follow"),
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