<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>迪蒙网贷-后台系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0"><link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/console/css/base.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/console/css/index.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/console/js/jquery/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/console/js/zankai.js"></script>
<script type='text/javascript'>{var a = window.opener||window.parent;while(a.parent!=a){a = a.parent;}}</script></head>
<body>
<div class="right-container">
    <div class="viewFramework-body">
      <div class="viewFramework-content">
                <form id="form1" action="/console/account/vipmanage/qyxx/qyList.htm" method="post">
                    <div class="p20">
                        <div class="border">
                            <div class="title-container"><i class="icon-i w30 h30 va-middle title-left-icon"></i>企业信息
                            </div>
                            <div class="content-container pl40 pt30 pr40">
                                <ul class="gray6 input-list-container clearfix">
                                    <li><span class="display-ib mr5">企业账号</span>
                                        <input type="text" name="account"
                                               value=""
                                               class="text border pl5 mr20"/>
                                    </li>
                                    <li><span class="display-ib mr5">企业名称</span>
                                        <input type="text" name="userName"
                                               value=""
                                               class="text border pl5 mr20"/>
                                    </li>
                                    <li><span class="display-ib mr5">联系人姓名</span>
                                        <input type="text" name="realName"
                                               value=""
                                               class="text border pl5 mr20"/>
                                    </li>
                                    <li><span class="display-ib mr5">联系人电话</span>
                                        <input type="text" name="msisdn"
                                               value=""
                                               class="text border pl5 mr20"/>
                                    </li>

                                    <li><span class="display-ib mr5">注册时间</span>
                                        <input type="text" name="createTimeStart" readonly="readonly" id="datepicker1"
                                               class="text border pl5 w120 date"/>
                                        <span class="pl5 pr5">至</span>
                                        <input readonly="readonly" type="text" name="createTimeEnd" id="datepicker2"
                                               class="text border pl5 w120 mr20 date"/>
                                    </li>
                                    <li><span class="display-ib mr5">状态</span>
                                        <select name="userState" class="border mr10 h32 mw60">
                                            <option value="">全部</option>
                                            <option value="QY" >启用</option>
                                            <option value="SD" >锁定</option>
                                            <option value="HMD" >黑名单</option>
                                            </select>
                                    </li>
                                    <li><span class="display-ib mr5">是否允许投资</span>
                                        <select name="investorType" class="border mr10 h32 mw60">
                                            <option value="">全部</option>
                                            <option value="S" >是</option>
                                            <option value="F" >否</option>
                                            </select>
                                    </li>
                                    <li><a href="javascript:void(0)" onclick="onSubmit()"
                                           class="btn btn-blue radius-6 mr5 pl1 pr15"><i
                                            class="icon-i w30 h30 va-middle search-icon "></i>搜索</a></li>
                                    <li>
                                        <a href="javascript:void(0)" onclick="showExport()"
                                           class="btn btn-blue radius-6 mr5  pl1 pr15"><i
                                                class="icon-i w30 h30 va-middle export-icon "></i>导出</a>
                                        </li>
                                </ul>
                            </div>
                        </div>
                        <div class="border mt20 table-container">
                            <table class="table table-style gray6 tl">
                                <thead>
                                <tr class="title">
                                    <th class="tc">序号</th>
                                    <th class="tc">企业账号</th>
                                    <th class="tc">企业名称</th>
                                    <th class="tc">联系人姓名</th>
                                    <th class="tc">联系人电话</th>
                                    <th class="tc">营业执照/社会信用代码</th>
                                    <th class="tc">注册时间</th>
                                    <th class="tc">状态</th>
                                    <th class="tc">是否允许投资</th>
                                    <th class="w200" style="text-align: center;">操作</th>
                                </tr>
                                </thead>
                                <tbody class="f12">
                                <tr class="tc">
                                    <td>1</td>
                                    <td>QYZH58482000072</td>
                                    <td>企业名称企业名称AAA</td>
                                    <td></td>
                                    <td></td>
                                    <td>3432423</td>
                                    <td>2017-01-18 17:12:57</td>
                                    <td>启用</td>
                                    <td>是</td>
                                    <td>
                                    	<a href="/console/account/vipmanage/qyxx/viewQyxx.htm?id=73" class="link-blue mr20 click-link">查看</a>
                                        <a href="/console/account/vipmanage/qyxx/updateQyxx.htm?id=73" class="link-blue ">修改</a>
                                        </td>
                                </tr>
                                <tr class="tc">
                                    <td>2</td>
                                    <td>QYZH51433000051</td>
                                    <td>深圳迪蒙科技</td>
                                    <td></td>
                                    <td></td>
                                    <td>91440300777189105E</td>
                                    <td>2016-12-06 17:58:28</td>
                                    <td>启用</td>
                                    <td>是</td>
                                    <td>
                                    	<a href="/console/account/vipmanage/qyxx/viewQyxx.htm?id=52" class="link-blue mr20 click-link">查看</a>
                                        <a href="/console/account/vipmanage/qyxx/updateQyxx.htm?id=52" class="link-blue ">修改</a>
                                        </td>
                                </tr>
                                <tr class="tc">
                                    <td>3</td>
                                    <td>QYZH89621000006</td>
                                    <td>哈森贸易有限公司</td>
                                    <td></td>
                                    <td></td>
                                    <td>1345776412368555</td>
                                    <td>2016-07-26 09:32:13</td>
                                    <td>启用</td>
                                    <td>是</td>
                                    <td>
                                    	<a href="/console/account/vipmanage/qyxx/viewQyxx.htm?id=7" class="link-blue mr20 click-link">查看</a>
                                        <a href="/console/account/vipmanage/qyxx/updateQyxx.htm?id=7" class="link-blue ">修改</a>
                                        </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <!--分页-->
                        <input type='hidden' name='paging.current' id='_879dae84e542198b' value='1'/>
<script type='text/javascript'>
<!--
function _7c6ca9c09f89d2eb(p){var _cur=document.getElementById('_879dae84e542198b');if(_cur){if(p){_cur.value=p;}_cur.form.submit();}}
function enterPress(e) {
var e = e || window.event; 
if(e.keyCode == 13){
pageSubmit();
}
}
function pageSubmit() {
var page = document.getElementById('_e75d2767c48072fd').value;
var re =  /^[1-9]+[0-9]*]*$/ // 判断正整数 //判断字符串是否为数字/^[0-9]+.?[0-9]*$/;
if(!re.test(page)){
return;
}
document.getElementById('_879dae84e542198b').value=page;
document.getElementById('_879dae84e542198b').form.submit();
}
//-->
</script>
<div class="paging clearfix pt20"><div class="page-number"></div><div class='page-size fr gray6 mr20 lh30'><span data-bind="text: formatedItemCount">总共<span class="main-color pl5 pr5">3</span>条记录</span></div></div><!--分页 end-->
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
        document.getElementById("form1").action = "/console/account/vipmanage/qyxx/exportQy.htm";
        $("#form1").submit();
        document.getElementById("form1").action = "/console/account/vipmanage/qyxx/qyList.htm";
    }

    function onSubmit() {
        $("#form1").submit();
    }
</script>
</body>
</html>