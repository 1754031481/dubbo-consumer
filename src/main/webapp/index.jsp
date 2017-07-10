<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/inc.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>积分商城的商城列表</title>
</head>
<body>
	<div class="right-container">
		<div class="viewFramework-body">
			<div class="viewFramework-content">
				<form id="form1" action="/console/bid/lcgl/zqgl/tbzList.htm"
					method="post">
					<div class="p20">
						<div class="border">
							<div class="title-container">
								<i class="icon-i w30 h30 va-middle title-left-icon"></i>商品列表
							</div>
							<div class="content-container pl40 pt30 pr40">
								<ul class="gray6 input-list-container clearfix">
									<li><span class="display-ib mr5">商品名称</span> <input
										type="text" name="goodsname" id="goodsname" class="text border pl5 mr20"
										value="" /></li>
									<li><span class="display-ib mr5">创建时间</span> 
									<input onclick="WdatePicker()" type="text" name="startDate"  id="startDate" class="text border pl5 w120 date" /> <span class="pl5 pr5">至</span> 
									<input onclick="WdatePicker()" type="text" name="endDate" id="endDate" class="text border pl5 w120 mr20 date" /></li>
									<li><span class="display-ib mr5">状态</span> <select
										name="investUserType" class="border mr20 h32 mw100">
											<option value="">全部</option>
											<option value="ysj">已上架</option>
											<option value="yxj">已下架</option>
											<option value="dsj">待上架</option>
									</select></li>
									<li><span class="display-ib mr5">商品类别</span> <select
										name="investUserType"  id="goodsleibie" class="border mr20 h32 mw100">
											<option value="">全部</option>
											<option value="sjtx">手机通信</option>
											<option value="smyl">数码娱乐</option>
											<option value="jydq">家用电器</option>
											<option value="hfcz">话费充值</option>
									</select></li>
									<li><span class="display-ib mr5">库存</span> <input
										type="text" name="userName" class="text border pl5 mr20"
										value="" /><span class="pl5 pr5">至</span><input type="text"
										name="userName" class="text border pl5 mr20" value="" /></li>
									<li><a href="javascript:void(0);" onclick="onSubmit()"
										class="btn btn-blue radius-6 mr5 pl1 pr15 ml10"><i
											class="icon-i w30 h30 va-middle search-icon "></i>搜索</a></li>
									<li><a href="javascript:void(0)" onclick="exportExcel()"
										class="btn btn-blue radius-6 mr5  pl1 pr15"><i
											class="icon-i w30 h30 va-middle export-icon "></i>导出</a></li>
									<li><a href="<%=request.getContextPath()%>/add.jsp"
										class="btn btn-blue2 radius-6 mr5 pl10 pr10">新增商品</a></li>

								</ul>
							</div>
						</div>
						<div class="border mt20 table-container">
							<table id="finance_bootstrap" class="table table-style gray6 tl">

							</table>
						</div>
						<div class="mb10">
							成交数量总计：<em class="red">14</em>件&nbsp;&nbsp;&nbsp;&nbsp; 库存数量总计：<em
								class="red">9131</em>件
						</div>



					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
/* 回显 */
function updateFinanceGoods(id){
	location.href='<%=request.getContextPath()%>/FinanceController/updateFinanceGoods.do?goodsid='+id;
}
/* 查看 */
function chakanFinanceGoods(id){
		location.href='<%=request.getContextPath()%>/FinanceController/chakanFinanceGoods.do?goodsid='+id;
 }

function updateTypesj(id){
	$.ajax({
		type:'post',
		url:'<%=request.getContextPath()%>/FinanceController/updateTypeSj.do?goodsid='+id,
		success:function(){
			alert('下架成功')
			location.href=location
		}
	})
}

/* 分页 */
$(document).ready(function (){
	$("#finance_bootstrap").bootstrapTable({
		 url:"<%=request.getContextPath()%>/FinanceController/findFinanceGoods.do",
		 method:"post",
		 striped: true,  	// 斑马线效果     默认false 
		 singleSelect:true,
		 clickToSelect:true,
		contentType:'application/x-www-form-urlencoded;charset=UTF-8',   //数据编码纯文本  offset=0&limit=5
		toolbar:'#tabToolBar',   //  工具定义位置
		columns:[      
		           	{field:'goodsid',title:'序号',width:50},
					{field:'goodsnum',title:'商品编码',width:100},
					{field:'goodsname',title:'商品名称',width:100},
					{field:'goodsfinance',title:'商品积分',width:100},
					{field:'goodsmoney',title:'商品价格(元)',width:100},
					{field:'goodsnumber',title:'成交数量',width:100},
					{field:'goodsbishu',title:'成交笔数',width:100},
					{field:'goodskucun',title:'库存',width:100},
					{field:'goodsstate',title:'状态',width:100,
						formatter:function(value,row,index){
							if(value=="ysj"){
				        		return  "已上架";
							}else if(value=="yxj"){
								return "已下架"
							}else if(value=="dsj"){
								return "待上架"
							}
						}	
					},
					{field:'createpeople',title:'创建人',width:100},
					{field:'createtime',title:'创建时间',width:100},
					{field:'updatetime',title:'操作时间',width:100},
					{field:'操作',title:'操作',width:50,
						formatter : function(value, row, index) {
							var a = '<a href="javascript:void(0);"  class="link-blue" onclick="updateFinanceGoods('+row.goodsid+');">修改</a> ';
							var b = '<a href="javascript:void(0);"  class="link-blue" onclick="updateTypesj('+row.goodsid+');">下架</a> ';
							var c = '<a href="javascript:void(0);"  class="link-blue" onclick="chakanFinanceGoods('+row.goodsid+');">查看</a> ';
							return a + b + c;
						}	
					}
		         ], 
		        

		         sidePagination:'server',
				 pagination: true,
				 pageNum: 1,                     
				 pageSize: 3,                      
				 pageList: [3, 6, 9,12],        
	});
});

function exportExcel(){
	window.location.href="${pageContext.request.contextPath}/FinanceController/poiRecharge.do";
}
/* 条件查询 */
function onSubmit() {
	$("#finance_bootstrap").bootstrapTable('refresh', {
		query : {
			"goodsname" : $("#goodsname").val(),
			"startDatea" : $("#startDate").val(),
			"endDatea" : $("#endDate").val(),
		}
	});
}
</script>
</html>