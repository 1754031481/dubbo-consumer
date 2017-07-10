<%@ page language="java" contentType="text/html; charset=UTF-8"
	isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/common/inc.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="right-container">
		<div class="viewFramework-body">
			<div class="viewFramework-content">
				<div class="p20">
					<div class="border">
						<div class="title-container">
							<i class="icon-i w30 h30 va-middle title-left-icon"></i>商品管理-新增商品
						</div>
						<div class="content-container pl40 pt40 pr40 pb20">
							<form  id="finance_form"
								enctype="multipart/form-data" class="form1">
								<input type="hidden" name="goodsid"  value="${financeGoods.goodsid}">
								<input type="hidden" name="2c894a14-9399-41cb-9a23-c340819b4565"
									value="38171135-e78f-477e-b4d5-944e71436fa7">
								<ul class="gray6">
									<li class="mb10"><span class="display-ib w200 tr mr5"><em
											class="red pr5">*</em>商品编码：</span> <input type="text" maxlength="30"
										onKeyUp="value=value.replace(/[^\w\/]/ig,'')"
										class="text border pl5 w300 required max-length-30 min-length-2"
										name="goodsnum" value="${financeGoods.goodsnum}" /> <font>&emsp;长度2~30个字</font> <span tip></span>
										<span errortip class="" style="display: none"></span></li>
									<li class="mb10"><span class="display-ib w200 tr mr5"><em
											class="red pr5">*</em>商品名称：</span> <input type="text" maxlength="30"
										onKeyUp="value=value.replace(/\s/g,'')"
										class="text border pl5 w300 required max-length-30 min-length-2"
										name="goodsname" value="${financeGoods.goodsname}" /> <font>&emsp;长度2~30个字</font> <span tip></span>
										<span errortip class="" style="display: none"></span></li>
									<li class="mb10"><span class="display-ib w200 tr mr5"><em
											class="red pr5">*</em>商品类别：</span> <select id="catId"
										class="border mr20 h32 mw100 required" name="goodsleibie">
											<option value="">--请选择--</option>
											<option value="sjtx" ${financeGoods.goodsleibie=='sjtx'?"selected":""}>手机通讯</option>
											<option value="jydq" ${financeGoods.goodsleibie=='jydq'?"selected":""}>家用电器</option>
											<option value="hfcz" ${financeGoods.goodsleibie=='hfcz'?"selected":""}>话费充值</option>
									</select> <span errortip class="" style="display: none"></span></li>
									<li class="mb10"><span class="display-ib w200 tr mr5"><em
											class="red pr5">*</em>支付方式：</span> <input type="checkbox" id="score"
										class="mr10" name="paymethod" value="jf" ${financeGoods.paymethod=='jf'?"checked":"" }/><label for="score">支持积分购买</label>

										&nbsp;&nbsp;&nbsp; <input type="checkbox" id="money"
										class="mr10" name="paymethod" value="ye" ${financeGoods.paymethod=='ye'?"checked":"" } /><label for="money">支持余额购买</label>
										<span tip></span> <span errortip class=""
										style="display: none"></span></li>
									<li class="mb10" id="score_li_id" ><span
										class="display-ib w200 tr mr5"><em class="red pr5">*</em>商品积分：</span>
										<input type="text" maxlength="9"
										class="text border pl5 w300 required max-length-9 isint minf-size-1"
										name="goodsfinance"  value="${financeGoods.goodsfinance}" /> <span tip></span> <span errortip
										class="" style="display: none"></span></li>
									<li class="mb10" id="money_li_id" ><span
										class="display-ib w200 tr mr5"><em class="red pr5">*</em>商品价格：</span>
										<input type="text" maxlength="9"
										class="text border pl5 w300 required max-length-9 minf-size-0.01"
										mtest="/^((([1-9][0-9]*)|0)|((([1-9][0-9]*)|0)\.[0-9]{1,2}))$/"
										mtestmsg="必须为数字格式(且是两位小数)" name="goodsmoney"  value="${financeGoods.goodsmoney}" /> <span tip></span>
										<span errortip class="" style="display: none"></span></li>
									<li class="mb10"><span class="display-ib w200 tr mr5"><em
											class="red pr5"></em>市场参考价：</span> <input type="text" maxlength="9"
										class="text border pl5 w300 max-length-9 minf-size-0.01"
										mtest="/^((([1-9][0-9]*)|0)|((([1-9][0-9]*)|0)\.[0-9]{1,2}))$/"
										mtestmsg="必须为数字格式(且是两位小数)" name="marketmoney"  value="${financeGoods.marketmoney}" /> <span tip></span>
										<span errortip class="" style="display: none"></span></li>
									<li class="mb10"><span class="display-ib w200 tr mr5"><em
											class="red pr5">*</em>商品库存：</span> <input type="text" maxlength="9"
										class="text border pl5 w300 required max-length-9 isint"
										name="goodskucun"  value="${financeGoods.goodskucun}" /> <span tip></span> <span errortip
										class="" style="display: none"></span></li>
									<li class="mb10"><span class="display-ib w200 tr mr5">限购数量：</span>
										<input type="text" maxlength="9"
										class="text border pl5 w300 max-length-9 isint minf-size-0"
										name="xgsl" value="${financeGoods.xgsl}" /> <font>&emsp;允许每个用户购买的最大数量值（值为0，则不限制）</font>
										<span tip></span> <span errortip class=""
										style="display: none"></span></li>

									<li class="mb10"><span class="display-ib w200 tr mr5">PC商品LOGO：</span>
										<input type="file" name="file" value="${financeGoods.goodsphoto }"
										accept="image/jpg,image/gif,image/png,image/jpeg,"> <font>&emsp;图片仅支持jpg,gif,png,jpeg格式，大小不超过1MB，建议尺寸800*800</font>
										<span tip></span> <span errortip class=""
										style="display: none"></span></li>
							<!-- 		<li class="mb10"><span class="display-ib w200 tr mr5">APP商品LOGO：</span>
										<input type="file" name="F09" value=""
										accept="image/jpg,image/gif,image/png,image/jpeg,"> <font>&emsp;图片仅支持jpg,gif,png,jpeg格式，大小不超过1MB，建议尺寸280*280</font>
										<span tip></span> <span errortip class=""
										style="display: none"></span></li> -->
							<!-- 		<li class="mb10"><span class="display-ib w200 tr mr5 fl"><em
											class="red pr5">*</em>商品详情：</span>
										<div class="pl200 ml5">
											<textarea name="goodsdetails" cols="100" rows="8"
												style="width: 700px; height: 500px; visibility: hidden;"
												class="required min-length-20 max-length-60000"></textarea>
											<span id="F10Error" tip>20-60000字</span> <span
												id="errorContent">&nbsp;</span>
										</div>
										<div class="clear"></div></li> -->
									<li class="mb10"><span class="display-ib w200 tr mr5">上架：</span>
										<input type="radio" name="typesj" value="s"  ${financeGoods.typesj=='s'?"checked":"" } class="mr5 ml10" />是
										 <input type="radio" name="typesj" value="f" ${financeGoods.typesj=='f'?"checked":"" } class="mr5 ml10" />否 <span tip></span> <span
										errortip class="" style="display: none"></span></li>
									<li>
										<div class="pl200 ml5" id="saveBtn">
											<input type="button" onclick="addFinance()" class="btn btn-blue2 radius-6 pl20 pr20 sumbitForme"
												fromname="form1" value="提交" /> 
												<input type="button"  class="btn btn-blue2 radius-6 pl20 pr20 ml40"
												onclick="window.location.href='<%=request.getContextPath()%>/index.jsp'"
												value="取消">
										</div>
									</li>
								</ul>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="popup_bg hide"></div>
	<div id="info"></div>
<script type="text/javascript">
function addFinance(){
	$.ajax({
		type:'post',
		data:$('#finance_form').serialize(),
		url:'<%=request.getContextPath()%>/FinanceController/addOrFinance.do',
		success:function(){
			alert('添加成功')
			location.href='<%=request.getContextPath()%>/index.jsp'
		}
	})
}
	
</script>
	<script type="text/javascript">
		var _cURL = '/console/bid/loanmanage/jkgl/checkUserInfo.htm';
		var isCommit = true;
		//富文本框
		KindEditor.ready(function(K) {
			editor1 = K.create('textarea[name="F10"]', {
				uploadJson : '/console/upload/upload.htm?type=13',
				allowFileManager : false,
				formatUploadUrl : false,
				afterBlur : function() {
					this.sync();
					$error = $("#F10Error");
					if (this.count() > 60000 || this.count() < 20) {
						$error.addClass("error_tip");
						$error.html("长度不对，20-60000字！");
						jkmsFlgs = true;
					} else {
						$error.removeClass("error_tip");
						$error.html("20-60000字");
						jkmsFlgs = false;
					}
				},
				afterChange : function() {
					var maxNum = 60000, text = this.text();
					if (this.count() > maxNum) {
						text = text.substring(0, maxNum);
						this.text(text);
					}
				}
			});
			prettyPrint();
		});

		function onSubmit() {

			if (!$("input[name='F16']").is(':checked')
					&& !$("input[name='F17']").is(':checked')) {
				$("#info").html(showDialogInfo("请选择支付方式", "wrong"));
				$("div.popup_bg").show();
				return false;
			}
			$error = $("#F10Error");
			if (editor1.count('text') == '') {
				$error.addClass("error_tip");
				$error.html("商品详情不能为空");
				jkmsFlgs = true;
				return false;
			} else {
				$error.removeClass("error_tip");
				$error.html("&nbsp;");
				jkmsFlgs = false;
				return true;
			}
		}

		/* $(function() {

			$("#score").bind("click", function() {
				if ($(this).attr("checked") == "checked") {
					$("#score_li_id").show();
				} else {
					$("#score_li_id").hide();
				}
			})

			$("#money").bind("click", function() {
				if ($(this).attr("checked") == "checked") {
					$("#money_li_id").show();
				} else {
					$("#money_li_id").hide();
				}
			})

			$("#catId").on("change", function() {
				if ($(this).val() != null && $(this).val() != "") {
					$(this).nextAll("span").empty();
				}
			});
		}) */
	</script>
</body>
</html>