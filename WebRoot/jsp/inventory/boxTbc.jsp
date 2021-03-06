<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/taglibs.jsp"%>
<%@taglib prefix="tf" uri="localhost" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>装箱单确认</title>
<link href="${ctx}/css/css.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/css/input.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctx}/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="${ctx}/js/jquery.validate.min.js"></script> 
<style type="text/css">
<!--
.treven {
	background-color: #f3fbff;
}
.over {
	background-color: #ECECEC;
}
.STYLE1 {color: #FF0000}
-->
</style>
<script language="JavaScript">
 
	$(document).ready(function(){
		if($("#table")){
			$("#table tr:even").addClass("treven");
			$("#table tr").each(function(i){
				$(this).mouseover(function(){
					$(this).addClass("over");
				});
				$(this).mouseout(function(){
					$(this).removeClass("over");
				});
			});
		}

		//验证小数点后最多两位
		$.validator.addMethod("checkPoint", function(value, element) {
		var result = false; 
		var rule=/^[0-9]+([.]{1}[0-9]{1,2})?$/;

		if(rule.test(value)){ 
			result = true;
		}  

		return this.optional(element) || result;
		}, "发货费用小数点后最多有两位");

		$.validator.addMethod("checkNum", function(value, element) {
		var result = false; 
		 

		if(value*1>0){ 
			result = true;
		}  

		return this.optional(element) || result;
		}, "发货费用必须大于零");


		$("#addForm").validate({
		rules: {  
			"addPara.count": {
						digits: true,
						min: 0
					},
			"addPara.money": {
				checkPoint: true,
				checkNum: true,
				required: true
			}
		},
		messages: { 
			"addPara.count": "装箱件数必须为自然数",
			"addPara.money": {required:"请输入发货费用"}
		} ,
		errorClass: "invalid",
		onchange: true
		}); 
	

		//提交
		$("#btnSubmit").click(function(){
			 if($('#finaltbc').attr('checked')){
				 if(confirm("警告：确认后将不能再修改装箱件数和发货费用，请再次确认！")){
					$('#tbcFlag').val("1");
					$("#addForm").submit();
				 }
			 }else{ 
				 $("#addForm").submit();
			 }
			
		});

	}); 
 
</script>

</head>
<body>
<html:form method="post" action="boxTbc" styleId="addForm">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="ye_header_left">&nbsp;</td>
    <td class="ye_header_center"><img src="${ctx}/images/main_jt.jpg" />&nbsp; 当前位置： 库存管理 &gt;&gt; 装箱单管理 &gt;&gt; 装箱单回执确认</td>
    <td class="ye_header_right">&nbsp;</td>
  </tr>
  <tr>
    <td >&nbsp;</td>
    <td><br />
      <div class="div_tiao"> &nbsp;&nbsp;产品信息 </div>
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="biao3">
        <tr>
          <td class="td_01" height="18"> 产品分类名称</td>
          <td class="td_02">${box.productTypeName}&nbsp;</td>
          <td class="td_01"></td>
          <td class="td_02"></td>
        </tr>
      </table>
      <br />
     <table width="100%" border="0" cellpadding="0" cellspacing="0" class="biao1" id="table">
		<thead>
			<tr>
			  <th nowrap="nowrap" width="35px">序号</th>
			  <th nowrap="nowrap">发货单号</th>
			  <th nowrap="nowrap">库房名称</th>
			  <th nowrap="nowrap">产品编码</th>
			  <th nowrap="nowrap">产品名称</th>

			  <th nowrap="nowrap">规格型号</th>
			  <th nowrap="nowrap">单位</th>
			  <th nowrap="nowrap">发货数</th>
			  <th nowrap="nowrap" width="90">配货数</th>
			  <th nowrap="nowrap">库存数</th>
			</tr>
		</thead>
		<tbody id="orderTable">
			<c:if test="${boxProductList!=null}">
			<logic:iterate id="product" name="boxProductList" indexId="index">
				<tr>
					 
					<td height="18">${index+1}</td> 
					<td nowrap="nowrap" >${product.orderId}</td>
					<td nowrap="nowrap" class='productCode'>${product.stockroomName}</td>
					<td nowrap="nowrap" >${product.productCode}</td>
					<td nowrap="nowrap" >${product.productName}</td>

					<td nowrap="nowrap" >${product.productType}</td>
					<td nowrap="nowrap" >${product.productUnit}</td>
					<td nowrap="nowrap" style="text-align:right;">${product.count}&nbsp;</td>
					<td nowrap="nowrap" >&nbsp;</td>
					<td nowrap="nowrap" style="text-align:right;">${product.num}&nbsp;</td>
				</tr>
			</logic:iterate>
			</c:if> 
		</tbody>
      </table>
      <br />
      <div class="div_tiao"> &nbsp;&nbsp;发货信息</div> 
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="biao3">
        <tr>
          <td class="td_01" width="20%" height="18px">客户名称</td>
          <td class="td_02" width="30%" id="customerName">${box.customerName}&nbsp;</td>
          <td class="td_01" width="20%">货运方式</td>
          <td class="td_02" width="30%" id="transportWay">
			<c:if test="${box.customerTransportWay==0}">无指定</c:if>
			<c:if test="${box.customerTransportWay==1}">自提</c:if>
			<c:if test="${box.customerTransportWay==2}">快递</c:if>
			<c:if test="${box.customerTransportWay==3}">汽运</c:if>
			<c:if test="${box.customerTransportWay==4}">铁运</c:if>

			<c:if test="${box.customerTransportWay==5}">航空</c:if>
			<c:if test="${box.customerTransportWay==6}">海运</c:if>
			<c:if test="${box.customerTransportWay==7}">中铁</c:if>
		 
			<c:if test="${box.customerTransportWay==8}">市内送货</c:if>
			<c:if test="${box.customerTransportWay==9}">市内快递</c:if>&nbsp;
		</td>
        </tr>
		<c:if test="${box.customerTransportWay==1}">
        <tr>
          <td class="td_01" height="18px">提货人姓名</td>
          <td class="td_02" id="takeName">${box.takeName}&nbsp;</td>
          <td class="td_01">身份证号码</td>
          <td class="td_02" id="takeNumber">${box.takeNumber}&nbsp;</td>
        </tr>
		</c:if>
        <tr>
          <td class="td_01" height="18px">货物接收单位名称</td>
          <td colspan="3" class="td_02" id="customerAddressName">${box.customerAddressName}&nbsp;</td>
        </tr>
        <tr>
          <td class="td_01" height="18px">发货地址</td>
          <td colspan="3" class="td_02" id="customerAddress">${box.customerAddress}&nbsp;</td>
        </tr>
        <tr>
          <td class="td_01" height="18px">联系人</td>
          <td class="td_02" id="linkman">${box.linkman}&nbsp;</td>
          <td class="td_01" >邮编</td>
          <td class="td_02" id="postcode">${box.postcode}&nbsp;</td>
        </tr>
        <tr>
          <td class="td_01" height="18px">电话</td>
          <td class="td_02" id="tel">${box.tel}&nbsp;</td>
          <td class="td_01">手机</td>
          <td class="td_02" id="mobile">${box.mobile}&nbsp;</td>
        </tr>
        <tr>
          <td class="td_01"  height="18">物流公司名称</td>
          <td class="td_02" >${box.logisticsName}&nbsp;</td>
          <td class="td_01">要求货运方式</td>
          <td class="td_02" > 
			<c:if test="${box.transportWay==0}">无指定</c:if>
			<c:if test="${box.transportWay==1}">自提</c:if>
			<c:if test="${box.transportWay==2}">快递</c:if>
			<c:if test="${box.transportWay==3}">汽运</c:if>
			<c:if test="${box.transportWay==4}">铁运</c:if>

			<c:if test="${box.transportWay==5}">航空</c:if>
			<c:if test="${box.transportWay==6}">海运</c:if>
			<c:if test="${box.transportWay==7}">中铁</c:if>
		 
			<c:if test="${box.transportWay==8}">市内送货</c:if>
			<c:if test="${box.transportWay==9}">市内快递</c:if>  
		  </td>
        </tr>
        <tr>
          <td class="td_01" height="18"><span style="color:#FF0000">*</span>装箱件数</td>
          <td class="td_02" ><input type="text" id="addParaCount" name="addPara.count" style="width:120px;" value="${box.count}" maxlength="4"/>&nbsp;件</td>
          <td class="td_01"><span style="color:#FF0000">*</span>发货费用</td>
          <td class="td_02" >
			<input type="text" id="addParaMoney" name="addPara.money" style="width:120px;" value="${box.money}"/>&nbsp;元
			<input type="hidden" name="addPara.id" value="${box.id}" style="width:120px;" />
		  </td>
        </tr>
		<tr>
          <td class="td_01" height="18">最终确认</td>
          <td class="td_02" >
			<input type="checkbox" id="finaltbc"/>
			<input type="hidden" id="tbcFlag" name="addPara.tbcFlag" value="0"/>
		  </td>
          <td class="td_01">&nbsp;</td>
          <td class="td_02">&nbsp;</td>
        </tr>
      </table>
      <br />
      <div class="div_tiao"> &nbsp;&nbsp;运单信息</div>
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="biao3">
        <tr>
          <td class="td_01" width="20%" height="18px">运单号</td>
          <td class="td_02" width="30%">${box.no}&nbsp;</td>
          <td class="td_01" width="20%">实际货运方式</td>
          <td class="td_02" width="30%">
			 <c:if test="${box.realityWay==0}">无指定</c:if>
			<c:if test="${box.realityWay==1}">自提</c:if>
			<c:if test="${box.realityWay==2}">快递</c:if>
			<c:if test="${box.realityWay==3}">汽运</c:if>
			<c:if test="${box.realityWay==4}">铁运</c:if>

			<c:if test="${box.realityWay==5}">航空</c:if>
			<c:if test="${box.realityWay==6}">海运</c:if>
			<c:if test="${box.realityWay==7}">中铁</c:if>
		 
			<c:if test="${box.realityWay==8}">市内送货</c:if>
			<c:if test="${box.realityWay==9}">市内快递</c:if>
		  </td>
        </tr>
        <tr>
          <td class="td_01" height="18px">预计到货日期</td>
          <td class="td_02" >${box.estimateDate}&nbsp;</td>
          <td class="td_01">联系电话</td>
          <td class="td_02" >${box.noTel}&nbsp;</td>
        </tr>
        <tr>
          <td class="td_01" height="18px">在途信息</td>
          <td colspan="3" class="td_02" >${tf:replaceBr(box.info)}&nbsp;</td>
        </tr>
        <tr>
          <td class="td_01" height="18px">到货日期</td>
          <td class="td_02" >${box.arrivalDate}&nbsp;</td>
          <td class="td_01" >签收日期</td>
          <td class="td_02" >${box.signoffDate}&nbsp;</td>
        </tr>
        <tr>
          <td class="td_01" height="18px">签收人</td>
          <td class="td_02" >${box.signoffName}&nbsp;</td>
          <td class="td_01">回执确认日期</td>
          <td class="td_02" >${box.confirmDate}&nbsp;</td>
        </tr>
        <tr>
          <td class="td_01" height="18px">物流管理员</td>
          <td class="td_02" >${box.logAdmName}&nbsp;</td>
          <td class="td_01">&nbsp;</td>
          <td class="td_02" >&nbsp;</td>
        </tr>
      </table>
    </td>
    <td >&nbsp;</td>
  </tr>
  <tr>
    <td></td>
    <td height="50px" align="center" valign="bottom">
		<img id="btnSubmit" src="${ctx}/images/btnConfirm.gif" width="65" height="20" />
		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="${ctx}/boxList.do"><img src="${ctx}/images/btnBack.gif" /></a>
	</td>
  </tr>
</table>
<br />
</body>
</html:form>
</html>
