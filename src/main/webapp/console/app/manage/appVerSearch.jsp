<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>APP版本管理</title>

	<jsp:include page="/inc.jsp"></jsp:include>
</head>
<body>
	<!-- 展示列表id -->
	<table id = "appVerSearchId" data-options="fit:true,border:false"></table>
	<!-- 条件 -->
	<form id="tb" style="padding:2px 5px;">
		<div>
	       名称: <input id="name" class="easyui-validatebox" name="name" data-options="required:true" />  
	          <a href="javascript:void(0)" class="easyui-linkbutton" onclick = "userPoginationList();" iconCls="icon-search">Search</a>
		</div>
    </form>
	
	<script type="text/javascript">
	
		$(function(){
			$("#appVerSearchId").datagrid({
				url:"${pageContext.request.contextPath}/appEditionController/appEditionAdminList.do",
				method:'post',
				columns:[[
				         {field:'id',title:'id',width:50},	//sortable:true 允许列使用排序
				         {field:'name',title:'APP名字',width:100,sortable:true},
				         {field:'type',title:'类型',width:100,
				        	formatter:function(value,row,index){
				        		if(value==1){
				        			return "运动";
				        		}else if(value==2){
				        			return "娱乐";
				        		}else if(value==3){
				        			return "新闻";
				        		}
				        	},
				         },
				         {field:'edition',title:'版本号',width:100},
				         {field:'ynpass',title:'是否过检',width:100,
				        	 formatter:function(value,row,index){
					        		if(value==1){
					        			return "是";
					        		}else if(value==0){
					        			return "否";
					        		}
					        	},	 
				         },
				         {field:'release',title:'是否上市',width:100,
				        	 formatter:function(value,row,index){
					        		if(value==1){
					        			return "是";
					        		}else if(value==0){
					        			return "否";
					        		}
					        	},	 	 
				         },
				         {field:'releasetime',title:'上市时间',width:100},
				         ]],
				         pagination:true,
				         pageSize:4,
				         pageList:[4,8,10],
				         fit:true,
				         toolbar:'#tb',
				 	     queryParams: {
				 			name: $("#name").val(),
				 		},
			});
		})
	
	</script>

</body>
</html>