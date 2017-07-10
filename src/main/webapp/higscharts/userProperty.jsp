<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/inc.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>平台用户属性统计</title>
</head>
<body>
	 <div class="right-container">
		<div class="viewFramework-body">
			<div class="viewFramework-content">
				在线用户统计
				<div class="p10">
					<table class="table">
						<tr>
							<td class="ww50"><div class="p10">
									<div class="border">
										<div class="title-container pr10">投资/借款用户分布饼状图</div>
										<div class="tc">
											<div id="container" style="min-width: 360px; height: 300px; margin: 0 auto"></div>
										</div>
									</div>
								</div></td>
							<td class="ww50"><div class="p10">
									<div class="border">
										<div class="title-container pr10">平台用户性别比例饼状图</div>
										<div class="tc">
											<div id="container1" style="min-width: 360px; height: 300px; margin: 0 auto"></div>
										</div>
									</div>
								</div></td>
						</tr>
						<tr>
							<td><div class="p10">
									<div class="border">
										<div class="title-container pr10">平台用户年龄分布饼状图</div>
										<div class="tc">
											<div id="user_age" style="min-width: 360px; height: 300px; margin: 0 auto"></div>
										</div>
									</div>
								</div></td>
							<td><div class="p10">
									<div class="border">
										<div class="title-container pr10">平台注册用户终端饼状图</div>
										<div class="tc">
											<div id="user_register_source" style="min-width: 360px; height: 300px; margin: 0 auto"></div>
										</div>
									</div>
								</div></td>
						</tr>
					</table>

				</div>
			</div>
		</div>
	</div>
</body> 
<!--  <div  id="container" style="min-width: 400px;height: 400px;"></div> -->
<script type="text/javascript">




$(function(){
	$.ajax({
  	   type:"post",
  	   url:"${pageContext.request.contextPath}/userController/findUserPeople.do",
  	   dataType:"json",
  	   async:true,
  	   success:function(result){
  		   if(result.success){
  			 var chart = new Highcharts.Chart('container', {
 		        chart: {
 		            plotBackgroundColor: null,
 		            plotBorderWidth: null,
 		            plotShadow: false
 		        },
 		        title: {
 		            text: '  '
 		        },
 		        tooltip: {
 		            pointFormat: '{series.name}: <b>{point.y}</b>'
 		        },
 		        plotOptions: {
 		            pie: {
 		                allowPointSelect: true,
 		                cursor: 'pointer',
 		                dataLabels: {
 		                    enabled: true,
 		                   color : '#000000',
 							connectorColor : '#000000',
 							formatter : function() {
 								return '<b>' + this.point.name + this.y + ' 人';
 							}
 		                }
 		            }
 		        },
 		        series: [{
 		            type: 'pie',
 		            data: result.object,
 		        }]
 		    });
  		   }else{
  			   alert(result.msg);
  		   }
  	   },
  	   error:function(){
  		   alert("系统错误，请联系管理员！")
  	   }
	})
	
	$.ajax({
		      	   type:"post",
		      	   url:"${pageContext.request.contextPath}/userController/findUserSex.do",
		      	   dataType:"json",
		      	   async:true,
		      	   success:function(result){
		      		   if(result.success){
		      			 var chart = new Highcharts.Chart('container1', {
		     		        chart: {
		     		            plotBackgroundColor: null,
		     		            plotBorderWidth: null,
		     		            plotShadow: false
		     		        },
		     		        title: {
		     		            text: '  '
		     		        },
		     		        tooltip: {
		     		            pointFormat: '{series.name}: <b>{point.y}</b>'
		     		        },
		     		        plotOptions: {
		     		            pie: {
		     		                allowPointSelect: true,
		     		                cursor: 'pointer',
		     		                dataLabels: {
		     		                    enabled: true,
		     		                   color : '#000000',
		     							connectorColor : '#000000',
		     							formatter : function() {
		     								return '<b>' + '</b>性别：'+  this.point.name+ this.y + ' 人';
		     							}
		     		                }
		     		            }
		     		        },
		     		        series: [{
		     		            type: 'pie',
		     		            data: result.object,
		     		        }]
		     		    });
		      		   }else{
		      			   alert(result.msg);
		      		   }
		      	   },
		      	   error:function(){
		      		   alert("系统错误，请联系管理员！")
		      	   }
		         })
	
})






/* var investLoanData = ${userList};
var userAgeData =[
              
              ['18-25岁', 16]
              
              , ['26-35岁', 70]
          
              , ['36-45岁', 43]
          
              , ['46-55岁', 15]
          
              , ['56岁以上', 6]
          
              , ['其他', 149]
          
          ];
var userSexData =[
                  
                  ['女', 33]
                  
                  , ['男', 117]
              
                  , ['其他', 149]
              
              ];
var userRegisterSourceData =[
                  
                  ['APP', 10]
                  
                  , ['微信', 0]
              
                  , ['PC注册', 154]
              
                  , ['后台添加', 133]
              
              ];
           */
</script>
</html>