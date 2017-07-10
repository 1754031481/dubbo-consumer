<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/inc.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品添加页面</title>
</head>
<body>
	<div class="right-container">
		<div class="viewFramework-body">
			<div class="viewFramework-content">
				<div class="p20">
					<form id="finance_form" class="form1">
						<div class="border">
							<div class="title-container">
								<i class="icon-i w30 h30 va-middle title-left-icon"></i>商品管理-新增商品
							</div>
							<div class="content-container pl40 pt40 pr40 pb20">
								<ul class="gray6">
									<li class="mb10"><span class="display-ib w200 tr mr5"><em
											class="red pr5">*</em>商品编码：</span> <input name="goodsnum" maxlength="20"
										type="text" class="text border w300 pl5 required min-length-6"
										value="" /> <span tip></span> <span errortip class=""
										style="display: none"></span></li>
									<li class="mb10"><span class="display-ib w200 tr mr5">市场参考价：</span>
										<input name="marketmoney" maxlength="20" type="text"
										class="text border w300 pl5 " value="" /> <span tip></span> <span
										errortip class="" style="display: none"></span></li>
									<li><span class="display-ib w200 tr mr5"><em
											class="red pr5">*</em>商品类别</span> <select name="goodsleibie"
										id="goodsleibie" class="border mr20 h32 mw100">
											<option value="">全部</option>
											<option value="sjtx">手机通信</option>
											<option value="smyl">数码娱乐</option>
											<option value="jydq">家用电器</option>
											<option value="hfcz">话费充值</option>
									</select></li>

								<!-- 	<li id="szhyli" class="mb10"><span
										class="display-ib w200 tr mr5"><em class="red pr5">*</em>支付方式：</span>
										<input type="radio" name=zfb class="mr10" value="zfb"
										checked="checked" />支持积分购买 <input type="radio" name="jf"
										class="mr10" value="jf" />支持余额购买</li> -->
									<li id="shxy" class="mb10 sszhy"><span
										class="display-ib w200 tr mr5"><em class="red pr5">*</em>商品库存：</span>
										<input id="idF19" name="goodskucun" maxlength="18" type="text"
										mtest="/^([A-Za-z0-9]+){18}$/" mtestmsg="长度为18位，由字母,数字组成"
										class="text border w300 pl5 required"
										onkeyup="value=value.replace(/[\u4e00-\u9fa5]/g,'');value=value.trim()"
										value="" /> <span tip></span> <span errortip class=""
										style="display: none"></span> <span id="idShxy"
										style="display: none; color: red;"></span></li>
									<li id="yyzz" class="mb10 nszhy"><span
										class="display-ib w200 tr mr5"><em class="red pr5">*</em>限购数量</span>
										<input name="xgsl" maxlength="20" type="text"
										class="text border w300 pl5 required"
										onkeyup="value=value.replace(/[\u4e00-\u9fa5]/g,'');value=value.trim()"
										value="" /> <span tip></span> <span errortip class=""
										style="display: none"></span> <span id="idShxy"
										style="display: none; color: red;"></span></li>
							<!-- 		<li class="display-ib w200 tr mr5"><span
										class="display-ib w200 tr mr5"><em class="red pr5">*</em>PC商品logo:</span>
										<input type="file"></li>
									<li class="display-ib w200 tr mr5"><span
										class="display-ib w200 tr mr5"><em class="red pr5">*</em>APP商品logo:</span>
										<input type="file"></li> -->
									<!-- <li class="mb10"><span class="display-ib w200 tr mr5 fl"><em
											class="red pr5"></em>商品详情：</span> <textarea id="goodsdetails"
											name="goodsdetails" class="kindeditor"
											style="width: 700px; height: 300px;">
						</textarea> <span id="jkmsError" tip>20-60000字</span> <span id="errorContent">&nbsp;</span>
									</li> -->
									<!-- <input type="hidden" name="isInvestor" class="mr10" value="F" /> -->

									<li class="mb10">
										<div class="pl200 ml5">
											<input type="button" onclick="addFinance()"
												class="btn btn-blue2 radius-6 pl20 pr20 sumbitForme"
												value="提交" fromname="form1" /> <input type="button"
												onclick="window.location.href='/console/account/vipmanage/zhgl/zhList.htm'"
												class="btn btn-blue2 radius-6 pl20 pr20 ml40" value="取消" />
										</div>
									</li>
								</ul>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="popup_bg" style="display: none;"></div>
	<div id="info"></div>
</body>
<script type="text/javascript">
function addFinance(){
	$.ajax({
		type:'post',
		data:$('#finance_form').serialize(),
		url:'<%=request.getContextPath()%>/FinanceController/addOrFinance.do',
		success:function(){
			alert('添加成功')
			window.location.href='<%=request.getContextPath()%>/index.jsp'
		}
	})
}
	
</script>
</html>