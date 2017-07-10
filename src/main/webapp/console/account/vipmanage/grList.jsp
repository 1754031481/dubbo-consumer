<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>迪蒙网贷-后台系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/console/css/base.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/console/css/index.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/console/js/jquery/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/console/js/zankai.js"></script>
<script type='text/javascript'>{var a = window.opener||window.parent;while(a.parent!=a){a = a.parent;}}</script>
</head>
<body>
<div class="right-container">
    <div class="viewFramework-body">
      <div class="viewFramework-content">
      <form id="form1" action="/console/account/vipmanage/grxx/grList.htm" method="post">
		<div class="p20">
			<div class="border">
			    <div class="title-container"><i class="icon-i w30 h30 va-middle title-left-icon"></i>个人信息</div>
			    <div class="content-container pl40 pt30 pr40">
			      <ul class="gray6 input-list-container clearfix">
			        <li><span class="display-ib mr5">用户名</span>
			          <input type="text" name="userName" value="" class="text border pl5 mr20" />
			        </li>
			        <li><span class="display-ib mr5">姓名</span>
			          <input type="text" name="name" value="" class="text border pl5 mr20" />
			        </li>
			        <li><span class="display-ib mr5">手机号码</span>
			          <input type="text" name="phone" value="" class="text border pl5 mr20" />
			        </li>
			        <li><span class="display-ib mr5">邮箱</span>
			          <input type="text" name="email" value="" class="text border pl5 mr20" />
			          <input type="hidden"  name="dshFlg"  value=""/>
			        </li>
			        <li><span class="display-ib mr5">业务员工号</span>
			           <input type="text" name="employNum" value="" class="text border pl5 mr20" />
			        </li>
			        <li><span class="display-ib mr5">注册时间</span>
			          <input type="text" name="startTime" readonly="readonly" id="datepicker1" class="text border pl5 w120 date" />
			          <span class="pl5 pr5">至</span>
			          <input readonly="readonly" type="text" name="endTime" id="datepicker2" class="text border pl5 w120 mr20 date" />
			        </li>
			        <li><span class="display-ib mr5">状态</span>
	                  <select name="status" class="border mr10 h32 mw60">
	                                  	<option value="">全部</option>
	                                  	<option value="QY" >启用</option>
										<option value="SD" >锁定</option>
										<option value="HMD" >黑名单</option>
										</select>
	                </li>
			        <li><span class="display-ib mr5">注册来源</span>
			          <select name="zcType" class="border mr10 h32 mw80">
						<option value="">全部</option>
                        <option value="PCZC" >PC注册</option>
						<option value="APPZC" >APP注册</option>
						<option value="WXZC" >微信注册</option>
						<option value="HTTJ" >后台添加</option>
						</select>
			        </li>
			        <li> <a href="javascript:$('#form1').submit();" class="btn btn-blue radius-6 mr5 pl1 pr15"><i class="icon-i w30 h30 va-middle search-icon "></i>搜索</a></li>
			        <li>
                	<a href="javascript:void(0)" onclick="showExport()" class="btn btn-blue radius-6 mr5  pl1 pr15"><i class="icon-i w30 h30 va-middle export-icon "></i>导出</a>
                     	</li>
			      </ul>
			    </div>
			  </div>
			  
			  
			  <div class="border mt20 table-container">
			    <table class="table table-style gray6 tl">
			      <thead>
			        <tr class="title tc">
			          <th>序号</th>
			          <th>用户名</th>
			          <th>姓名</th>
			          <th>手机号码</th>
			          <th>身份证</th>
			          <th>邮箱</th>
			          <th>状态</th>
			          <th>业务员工号</th>
			          <th>注册来源</th>
			          <th>注册时间</th>
			          <th class="w200" style="text-align: center;">操作</th>
			        </tr>
			      </thead>
			      <tbody class="f12">
			        <tr class="title tc">
                          <td>1</td>
                          <td>yang3931</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td>启用</td>
                          <td></td>
                          <td>PC注册</td>
                          <td>2017-05-30 12:47:01</td>
                         <td>
                          	<a href="/console/account/vipmanage/grxx/jbxxView.htm?userId=112" class="link-blue mr20 click-link">查看</a>
                          	<a href="/console/account/vipmanage/grxx/updateGr.htm?userId=112" class="link-blue mr20">修改</a>
                          	<a href="/console/account/vipmanage/grxx/shList.htm?id=112" class="libk-deepblue mr20">审核</a>
                          		<a href="/console/account/vipmanage/grxx/shjlList.htm?yhId=112" class="link-orangered mr20">审核记录</a>
                        	</td>
                        </tr>
						<tr class="title tc">
                          <td>2</td>
                          <td>chenchen1</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td>锁定</td>
                          <td></td>
                          <td>PC注册</td>
                          <td>2017-05-27 20:47:54</td>
                         <td>
                          	<a href="/console/account/vipmanage/grxx/jbxxView.htm?userId=111" class="link-blue mr20 click-link">查看</a>
                          	<a href="/console/account/vipmanage/grxx/updateGr.htm?userId=111" class="link-blue mr20">修改</a>
                          	<a href="/console/account/vipmanage/grxx/shList.htm?id=111" class="libk-deepblue mr20">审核</a>
                          		<a href="/console/account/vipmanage/grxx/shjlList.htm?yhId=111" class="link-orangered mr20">审核记录</a>
                        	</td>
                        </tr>
						<tr class="title tc">
                          <td>3</td>
                          <td>zjb123</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td>启用</td>
                          <td></td>
                          <td>后台添加</td>
                          <td>2017-05-27 16:08:33</td>
                         <td>
                          	<a href="/console/account/vipmanage/grxx/jbxxView.htm?userId=110" class="link-blue mr20 click-link">查看</a>
                          	<a href="/console/account/vipmanage/grxx/updateGr.htm?userId=110" class="link-blue mr20">修改</a>
                          	<a href="/console/account/vipmanage/grxx/shList.htm?id=110" class="libk-deepblue mr20">审核</a>
                          		<a href="/console/account/vipmanage/grxx/shjlList.htm?yhId=110" class="link-orangered mr20">审核记录</a>
                        	</td>
                        </tr>
						<tr class="title tc">
                          <td>4</td>
                          <td>pan7199</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td>启用</td>
                          <td></td>
                          <td>后台添加</td>
                          <td>2017-05-27 16:01:17</td>
                         <td>
                          	<a href="/console/account/vipmanage/grxx/jbxxView.htm?userId=109" class="link-blue mr20 click-link">查看</a>
                          	<a href="/console/account/vipmanage/grxx/updateGr.htm?userId=109" class="link-blue mr20">修改</a>
                          	<a href="/console/account/vipmanage/grxx/shList.htm?id=109" class="libk-deepblue mr20">审核</a>
                          		<a href="/console/account/vipmanage/grxx/shjlList.htm?yhId=109" class="link-orangered mr20">审核记录</a>
                        	</td>
                        </tr>
						<tr class="title tc">
                          <td>5</td>
                          <td>zhangjx</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td>启用</td>
                          <td></td>
                          <td>后台添加</td>
                          <td>2017-05-27 14:29:10</td>
                         <td>
                          	<a href="/console/account/vipmanage/grxx/jbxxView.htm?userId=108" class="link-blue mr20 click-link">查看</a>
                          	<a href="/console/account/vipmanage/grxx/updateGr.htm?userId=108" class="link-blue mr20">修改</a>
                          	<a href="/console/account/vipmanage/grxx/shList.htm?id=108" class="libk-deepblue mr20">审核</a>
                          		<a href="/console/account/vipmanage/grxx/shjlList.htm?yhId=108" class="link-orangered mr20">审核记录</a>
                        	</td>
                        </tr>
						<tr class="title tc">
                          <td>6</td>
                          <td>tuli12</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td>启用</td>
                          <td></td>
                          <td>PC注册</td>
                          <td>2017-05-24 09:00:36</td>
                         <td>
                          	<a href="/console/account/vipmanage/grxx/jbxxView.htm?userId=107" class="link-blue mr20 click-link">查看</a>
                          	<a href="/console/account/vipmanage/grxx/updateGr.htm?userId=107" class="link-blue mr20">修改</a>
                          	<a href="/console/account/vipmanage/grxx/shList.htm?id=107" class="libk-deepblue mr20">审核</a>
                          		<a href="/console/account/vipmanage/grxx/shjlList.htm?yhId=107" class="link-orangered mr20">审核记录</a>
                        	</td>
                        </tr>
						<tr class="title tc">
                          <td>7</td>
                          <td>tuli123</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td>启用</td>
                          <td></td>
                          <td>PC注册</td>
                          <td>2017-05-23 20:21:20</td>
                         <td>
                          	<a href="/console/account/vipmanage/grxx/jbxxView.htm?userId=106" class="link-blue mr20 click-link">查看</a>
                          	<a href="/console/account/vipmanage/grxx/updateGr.htm?userId=106" class="link-blue mr20">修改</a>
                          	<a href="/console/account/vipmanage/grxx/shList.htm?id=106" class="libk-deepblue mr20">审核</a>
                          		<a href="/console/account/vipmanage/grxx/shjlList.htm?yhId=106" class="link-orangered mr20">审核记录</a>
                        	</td>
                        </tr>
						<tr class="title tc">
                          <td>8</td>
                          <td>chen111</td>
                          <td>陈鑫</td>
                          <td></td>
                          <td>45032619840627183X</td>
                          <td></td>
                          <td>启用</td>
                          <td></td>
                          <td>后台添加</td>
                          <td>2017-05-22 19:23:13</td>
                         <td>
                          	<a href="/console/account/vipmanage/grxx/jbxxView.htm?userId=105" class="link-blue mr20 click-link">查看</a>
                          	<a href="/console/account/vipmanage/grxx/updateGr.htm?userId=105" class="link-blue mr20">修改</a>
                          	<a href="/console/account/vipmanage/grxx/shList.htm?id=105" class="libk-deepblue mr20">审核</a>
                          		<a href="/console/account/vipmanage/grxx/shjlList.htm?yhId=105" class="link-orangered mr20">审核记录</a>
                        	</td>
                        </tr>
						<tr class="title tc">
                          <td>9</td>
                          <td>chen1234</td>
                          <td>陈乙鑫</td>
                          <td>13550271240</td>
                          <td>330224196702265835</td>
                          <td>285038871@qq.com</td>
                          <td>启用</td>
                          <td></td>
                          <td>后台添加</td>
                          <td>2017-05-16 14:03:28</td>
                         <td>
                          	<a href="/console/account/vipmanage/grxx/jbxxView.htm?userId=104" class="link-blue mr20 click-link">查看</a>
                          	<a href="/console/account/vipmanage/grxx/updateGr.htm?userId=104" class="link-blue mr20">修改</a>
                          	<a href="/console/account/vipmanage/grxx/shList.htm?id=104" class="libk-deepblue mr20">审核</a>
                          		<a href="/console/account/vipmanage/grxx/shjlList.htm?yhId=104" class="link-orangered mr20">审核记录</a>
                        	</td>
                        </tr>
						<tr class="title tc">
                          <td>10</td>
                          <td>tuli1234</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td>启用</td>
                          <td></td>
                          <td>PC注册</td>
                          <td>2017-05-15 16:56:43</td>
                         <td>
                          	<a href="/console/account/vipmanage/grxx/jbxxView.htm?userId=103" class="link-blue mr20 click-link">查看</a>
                          	<a href="/console/account/vipmanage/grxx/updateGr.htm?userId=103" class="link-blue mr20">修改</a>
                          	<a href="/console/account/vipmanage/grxx/shList.htm?id=103" class="libk-deepblue mr20">审核</a>
                          		<a href="/console/account/vipmanage/grxx/shjlList.htm?yhId=103" class="link-orangered mr20">审核记录</a>
                        	</td>
                        </tr>
						</tbody>
                            </table>
                        </div>

                        <!--分页-->
                        <input type='hidden' name='paging.current' id='_609fb9cfccb625fa' value='1'/>
<script type='text/javascript'>
<!--
function _e7b1bad832dda255(p){var _cur=document.getElementById('_609fb9cfccb625fa');if(_cur){if(p){_cur.value=p;}_cur.form.submit();}}
function enterPress(e) {
var e = e || window.event; 
if(e.keyCode == 13){
pageSubmit();
}
}
function pageSubmit() {
var page = document.getElementById('_93d2664044a76ace').value;
var re =  /^[1-9]+[0-9]*]*$/ // 判断正整数 //判断字符串是否为数字/^[0-9]+.?[0-9]*$/;
if(!re.test(page)){
return;
}
document.getElementById('_609fb9cfccb625fa').value=page;
document.getElementById('_609fb9cfccb625fa').form.submit();
}
//-->
</script>
<div class="paging clearfix pt20"><div class="page-number"><a href="javascript:void(0)" class="next"><</a><a href='javascript:void(0)' class='number selected'>1</a><a href='javascript:_e7b1bad832dda255(2)' class='number'>2</a><a href='javascript:_e7b1bad832dda255(3)' class='number'>3</a><a href='javascript:_e7b1bad832dda255(4)' class='number'>4</a><a href='javascript:_e7b1bad832dda255(5)' class='number'>5</a>...<a href='javascript:_e7b1bad832dda255(10)' class='number'>10</a><a href='javascript:_e7b1bad832dda255(11)' class='number'>11</a><a href='javascript:_e7b1bad832dda255(2)' class='next'>></a>第<input type='text' id='_93d2664044a76ace' class='border ml5 mr5 w30 pl5 pr5' name='enterPage' onkeypress='enterPress(event)'  value=''/>页
<a href='javascript:pageSubmit()' class='number button radius-6'>GO</a>
</div><div class='page-size fr gray6 mr20 lh30'><span data-bind="text: formatedItemCount">总共<span class="main-color pl5 pr5">106</span>条记录</span></div></div><!--分页 end-->
                    </div>
                </form>

            </div>
        </div>
    </div>
    <!--右边内容 结束-->


<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/console/js/jquery-ui-1.10.4/css/smoothness/jquery-ui-1.10.4.custom.min.css" media="screen" />
<script type="text/javascript" src="<%=request.getContextPath() %>/console/js/jquery-ui-1.10.4/js/jquery-ui-1.10.4.custom.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/console/js/jquery-ui-1.10.4/js/jquery-ui-i18n.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/console/js/jquery-ui-1.10.4/js/time.js"></script>
<script type="text/javascript">
	Date.prototype.Format = function(fmt)   
	{
	  var o = {   
	    "M+" : this.getMonth()+1,                 //月份   
	    "d+" : this.getDate(),                    //日   
	    "h+" : this.getHours(),                   //小时   
	    "m+" : this.getMinutes(),                 //分   
	    "s+" : this.getSeconds(),                 //秒   
	    "q+" : Math.floor((this.getMonth()+3)/3), //季度   
	    "S"  : this.getMilliseconds()             //毫秒   
	  };   
	  if(/(y+)/.test(fmt))   
	    fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));   
	  for(var k in o)   
	    if(new RegExp("("+ k +")").test(fmt))   
	  fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));   
	  return fmt;   
	}
	
	$(function() {
		$.datepicker.setDefaults($.datepicker.regional['zh-CN']);
		$.datepicker.setDefaults({
			dateFormat : 'yy-mm-dd',
			showButtonPanel : true,
			
			onSelect : function(input, inst) {
				this.value = input;
			}
		});
		
		//用来存放当前正在操作的日期文本框的引用。  
		var datepicker_CurrentInput = '';

		// 设置DatePicker 的默认设置  
		$.datepicker.setDefaults({
			showButtonPanel : true,
			closeText : '清空',
			beforeShow : function(input, inst) {
				datepicker_CurrentInput = input;
			}
		});

		// 绑定“Done”按钮的click事件，触发的时候，清空文本框的值  
		$(".ui-datepicker-close").live("click", function() {
			var index = $(".hasDatepicker").index(datepicker_CurrentInput);
			if(index == 0){
				var datepicker = $(".hasDatepicker").eq(1);
				if(datepicker != undefined){
		    		datepicker.datepicker("option", "minDate", null);
	    		}
			}
			datepicker_CurrentInput.value = "";
		});
	    
	    $(".ui-datepicker-current").live("click",function(){
	    	datepicker_CurrentInput.value = new Date().Format("yyyy-MM-dd");
	    	var index = $(".hasDatepicker").index(datepicker_CurrentInput);
	    	if(index == 0){
	    		var datepicker = $(".hasDatepicker").eq(1);
	    		if(datepicker != undefined){
		    		datepicker.datepicker("option", "minDate", new Date().Format("yyyy-MM-dd"));
		    		datepicker.focus().select();
	    		}else{
	    			$("body").focus().select();
	    		}
	    	}else{
	    		$("body").focus().select();
	    	}
	    });
	});
</script><script type="text/javascript" src="<%=request.getContextPath() %>/console/js/validation.js"></script>
<script type="text/javascript">
    $(function () {
        $("#datepicker1").datepicker({
            inline: true,
            onSelect: function (selectedDate) {
                $("#datepicker2").datepicker("option", "minDate", selectedDate);
            }
        });
        $('#datepicker1').datepicker('option', {dateFormat: 'yy-mm-dd'});
        $("#datepicker2").datepicker({inline: true});
        $('#datepicker2').datepicker('option', {dateFormat: 'yy-mm-dd'});
        
        $("#datepicker2").datepicker('option', 'minDate', $("#datepicker1").datepicker().val());
    });

    function showExport() {
        document.getElementById("form1").action = "/console/account/vipmanage/grxx/exportGr.htm";
        $("#form1").submit();
        document.getElementById("form1").action = "/console/account/vipmanage/grxx/grList.htm";
    }
    /* function onSubmit(){
     $("#form1").submit();
     } */
</script>
</body>
</html>