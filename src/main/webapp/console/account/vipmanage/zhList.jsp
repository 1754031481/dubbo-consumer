<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>迪蒙网贷-后台系统</title>
<jsp:include page="/inc.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/console/css/base.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/console/css/index.css" />
	
<script type="text/javascript" src="<%=request.getContextPath()%>/console/js/jquery/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/console/js/zankai.js"></script>
</head>
<body>
	<div class="right-container">
		<div class="viewFramework-body">
			<div class="viewFramework-content">
				<form id="form1" action="/console/account/vipmanage/zhList.jsp"
					method="post">
					
					<div class="p20">
						<div class="border">
							<div class="title-container">
								<i class="icon-i w30 h30 va-middle title-left-icon"></i>账号管理
							</div>

						</div>
					</div>
					<table id="myTable"></table>
				</form>
			</div>
		</div>
	</div>
</body>
		<script type="text/javascript">
			$(function(){
				$("#myTable").bootstrapTable({
					title:"书籍展示",
					url:"${pageContext.request.contextPath}/accountController/queryAccount.do",
					method:"post",
					striped: true,
					singleSelect:true,
					clickToSelect:true,
					showToggle:true,
					cardView: false,
					//uniqueId: "stuId",
					showColumns: true,
					showRefresh: true,
					minimumCountColumns: 2,
					detailView: false,
					contentType:'application/x-www-form-urlencoded;charset=UTF-8',
					toolbar:'#tb',
					columns:[
					         {field:"bookId",title:"书籍id",width:"100px",
					        	 formatter:function(value,row,index){   
										return "<input type='checkbox' value="+value+" name='chk'/>";
										}	 
					         
					         },
					         {field:"bookName",title:"书籍名称",width:"100px"},
					         {field:"bookPrice",title:"书籍价格",width:"100px"},
					         {field:"bookType",title:"书籍类型",width:"100px"},
					         {field:"bookDate",title:"出版日期",width:"100px"},
					         {field:"imgId",title:"书籍图片",width:"100px",
					        		formatter:function(value,row,index){
						         		return "<img class='img-responsive img-circle' width='100' height='100'  src='<%=request.getContextPath()%>/"+value+"'/>";
						         		
						         	} 
					         }
					         ],
					         queryParams: function(params) {
									var whereParams = {    
										 	"pages.pageDataCount":params.limit,
										 	"pages.pageStart":params.offset,
										 	"book.bookName":params.search,//精确搜索产品名称
										}
											 return whereParams;
									},
									 search:true,
									 searchOnEnterKey:true,
									 sidePagination:'server',
									 pagination: true,                 
									 pageNum:1,                     
									 pageSize:3,                     
									 pageList:[3,5,10,15],
					
				})
			})	
		
		</script>

</html>