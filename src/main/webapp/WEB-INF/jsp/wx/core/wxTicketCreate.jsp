
<%-- 
    Document   : [微信卡券]编辑页
    Created on : 2017-08-22 10:23:23
    Author     : 陈茂昌
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>[微信卡券]编辑</title>
<%@include file="/commons/edit.jsp"%>
<style type="text/css">
.colorBlob{
height: 25px;
width: 25px;
display: inline-block;
border-radius:5px;
margin-top: 5px;
}
.colorBlob:hover{
opacity:0.8;
border:solid 2px #EEB4B4;
margin:-2px;
}
.SelectedColorBlob{
border:outset 3px white;
margin:-3px;
}

.toggleButton{
	margin: 10px;
	display: inline;
	color: #FFFFFF;
	background-color: #99CCFF;
	border: 1px solid #6699CC;
	border-radius: 35%;
	cursor: pointer;
	}
.toggleButton:hover{
	background-color: #79CDCD;
	}
.togglePlusButton{
	margin: 10px;
	display: inline;
	color: #FFFFFF;
	background-color: #FFB6C1;
	border: 1px solid #6699CC;
	border-radius: 35%;
	cursor: pointer;
	}
.togglePlusButton:hover{
	background-color: #FF6A6A;
	}
</style>
</head>
<body>
	
<div class="topToolBar">
	<div>
   <a class="mini-button"   plain="true" onclick="createTicket()">保存</a>
   <a class="mini-button btn-red"   plain="true" onclick="CloseWindow('cancel')">取消</a>
</div>
</div>
<div class="mini-fit">
<div class="form-container" style="padding-top: 8px;">
<div id="p1" class="form-outer">
		<form id="form1" method="post">
			<div class="form-inner">
				<input id="id" name="id" class="mini-hidden" value="${cardId}" />
				<input class="mini-hidden"  id="logoUrl"  name="logoUrl" />
				<input class="mini-hidden"  id="logoUrlFileId"  name="logoUrlFileId" />
				<input class="mini-hidden"  id="icon_url_list" name="icon_url_list" />
				<input class="mini-hidden"  id="icon_url_listField" name="icon_url_listField" />
				<input class="mini-hidden"  id="pubId"  name="pubId" value="${pubId}"/>
				<input class="mini-hidden"  id="cardColor"  name="cardColor"  value="${wxTicket.color}"/>
				<table class="table-detail column-two" cellspacing="1" cellpadding="0">
						<tr>
							<td>
								<span class="starBox">
									商户名称<span class="star">*</span>
								</span>
							</td>
							<td><input id="brandName" name="brandName" class="mini-textbox" emptyText="12个汉字以内" maxLength="12" required="true" value="${wxTicket.brandName}"/></td>
						</tr>
						<tr>
							<td>
								<span class="starBox">
									卡  券  名<span class="star">*</span>
								</span>
							</td>
							<td><input id="title" name="title" class="mini-textbox" emptyText="9个汉字以内" maxLength="9" required="true" value="${wxTicket.title}"/></td>
						</tr>
						<tr>
							<td>商户logo</td>
							<td><img id="uploadLogo" name="uploadLogo" alt="请上传" style="width: 50px; height: 45px; margin-top: 5px; margin-left: 10px;" onclick="openUpload()"></img>
							</td>
						</tr>
						<tr>
							<td>券  类  型</td>
							<td><div id="cardType" name="cardType" class="mini-radiobuttonlist" repeatItems="6" repeatLayout="table" required="true"
									onvaluechanged="changeCardType" textField="text" valueField="id" value="GROUPON"
									data="[{'id':'GROUPON','text':'团购券'},{'id':'CASH','text':'代金券'},{'id':'DISCOUNT','text':'折扣券'},{'id':'GIFT','text':'兑换券'},{'id':'GENERAL_COUPON','text':'优惠券'}]"></td>
						</tr>
						<tr>
						<tr>
						<td>选择卡券背景色</td>
						<td>
							<div class="colorBlob" id="Color010" style="background-color: #63b359;" onclick="chooseColor('Color010')"></div>
							<div class="colorBlob" id="Color020" style="background-color: #2c9f67;" onclick="chooseColor('Color020')"></div>
							<div class="colorBlob" id="Color030" style="background-color: #509fc9;" onclick="chooseColor('Color030')"></div>
							<div class="colorBlob" id="Color040" style="background-color: #5885cf;" onclick="chooseColor('Color040')"></div>
							<div class="colorBlob" id="Color050" style="background-color: #9062c0;" onclick="chooseColor('Color050')"></div>
							<div class="colorBlob" id="Color060" style="background-color: #d09a45;" onclick="chooseColor('Color060')"></div>
							<div class="colorBlob" id="Color070" style="background-color: #e4b138;" onclick="chooseColor('Color070')"></div>
							<div class="colorBlob" id="Color080" style="background-color: #ee903c;" onclick="chooseColor('Color080')"></div>
							<div class="colorBlob" id="Color081" style="background-color: #f08500;" onclick="chooseColor('Color081')"></div>
							<div class="colorBlob" id="Color082" style="background-color: #a9d92d;" onclick="chooseColor('Color082')"></div>
							<div class="colorBlob" id="Color090" style="background-color: #dd6549;" onclick="chooseColor('Color090')"></div>
							<div class="colorBlob" id="Color100" style="background-color: #cc463d;" onclick="chooseColor('Color100')"></div>
							<div class="colorBlob" id="Color101" style="background-color: #cf3e36;" onclick="chooseColor('Color101')"></div>
							<div class="colorBlob" id="Color102" style="background-color: #5E6671;" onclick="chooseColor('Color102')"></div>
						</td>
					</tr>
					<tr>
						<td>券  码  型</td>
						<td><div id="codeType" name="codeType" class="mini-radiobuttonlist" repeatItems="6" repeatLayout="table"  required="true"
    textField="text" valueField="id" value="CODE_TYPE_TEXT"  data="[{'id':'CODE_TYPE_TEXT','text':'文本'},{'id':'CODE_TYPE_BARCODE','text':'一维码'},{'id':'CODE_TYPE_QRCODE','text':'二维码'},{'id':'CODE_TYPE_ONLY_QRCODE','text':'二维码无code'},{'id':'CODE_TYPE_ONLY_BARCODE','text':'一维码无code'},{'id':'CODE_TYPE_NONE','text':'空类型'}]" >
						</td>
					</tr>
					<tr>
					<td>卡券库存</td>
					<td>
					<input id="quantity" name="quantity" class="mini-spinner"  minValue="0" maxValue="100000000" required="true" format="0"/>
					</td>
					</tr>
					<tr>
					<td rowspan="2">
						<span class="starBox">
							时效类型<span class="star">*</span>
						</span>
					</td>
					<td>
					<div id="type" name="type" class="mini-radiobuttonlist" repeatItems="6" repeatLayout="table" onvaluechanged="changeType" required="true"
    textField="text" valueField="id" value="DATE_TYPE_FIX_TIME_RANGE"  data="[{'id':'DATE_TYPE_FIX_TIME_RANGE','text':'固定日期区间'},{'id':'DATE_TYPE_FIX_TERM','text':'表示固定时长'}]" >
					</td>
					</tr>
					<tr class="DATE_TYPE_FIX_TIME_RANGE" style="display: none;">
					<td>
					<input id="begin_timestamp" name="begin_timestamp" class="mini-datepicker" style="width:200px;margin-left: -200px;"  nullValue="null" required="true"
        format="yyyy-MM-dd H:mm:ss" timeFormat="HH:mm:ss" showTime="true" showOkButton="true" showClearButton="false"/>
        至
        <input id="end_timestamp" name="end_timestamp"  class="mini-datepicker" style="width:200px;"  nullValue="null" required="true"
        format="yyyy-MM-dd H:mm:ss" timeFormat="HH:mm:ss" showTime="true" showOkButton="true" showClearButton="false"/>
					</td>
					</tr>
					<tr class="DATE_TYPE_FIX_TERM" style="display: none;">
					<td>
					<input id="fixed_begin_term" name="fixed_begin_term" class="mini-spinner"  minValue="0" maxValue="10000" style="width:50px;" required="true"/>天后启用,
					<input id="fixed_term" name="fixed_term" class="mini-spinner"  minValue="1" maxValue="10000" style="width:50px;" required="true"/>天内有效
					</td>
					</tr>
					<tr>
					<td>
						<span class="starBox">
							使用提示<span class="star">*</span>
						</span>
					</td>
					<td><input id="notice" name="notice" class="mini-textbox" emptyText="16个汉字以内"  maxLength="16" style="width: 500px;" required="true" value="${wxTicket.notice}"/></td>
					</tr>
					<tr>
					<td>
						<span class="starBox">
							使用说明<span class="star">*</span>
						</span>
					</td>
					<td><textarea id="description" name="description" class="mini-textarea" emptyText="1024个汉字以内"  maxLength="1024" style="width: 500px;" required="true" value="${wxTicket.description}"></textarea></td>
					</tr>
					<tr class="GROUPON" style="display: none;">
					<td>
						<span class="starBox">
							团购详情<span class="star">*</span>
						</span>
					</td>
					<td><textarea id="deal_detail" name="deal_detail" class="mini-textarea" emptyText="3072个汉字以内"  maxLength="3072" style="width: 500px;" required="true"></textarea></td>
					</tr>
					<tr class="CASH" style="display: none;">
					<td>满减详情</td>
					<td>满<input id="least_cost" name="least_cost" class="mini-spinner"  minValue="0" maxValue="100000000" format="¥#,0.00"/>元减
					<input id="reduce_cost" name="reduce_cost" class="mini-spinner"  minValue="0" maxValue="100000000"  format="¥#,0.00"/>元
					</td>
					</tr>
					<tr class="DISCOUNT" style="display: none;">
					<td>减免额度</td>
					<td><input id="discount" name="discount" class="mini-spinner"  minValue="0" maxValue="100"  required="true" format="0"/>%</td>
					</tr>
					<tr class="GIFT" style="display: none;">
					<td>兑换内容</td>
					<td><textarea id="gift" name="gift" class="mini-textarea" emptyText="3072个汉字以内"  maxLength="3072" style="width: 500px;" required="true"></textarea></td>
					</tr>
					<tr class="GENERAL_COUPON" style="display: none;">
					<td>优惠内容</td>
					<td><textarea id="default_detail" name="default_detail" class="mini-textarea" emptyText="3072个汉字以内"  maxLength="3072" style="width: 500px;" required="true"></textarea></td>
					</tr>
					<!-- -------------------------------------------分隔表单--------------------------------------------------------------- -->
					<tr>
					<td colspan="2" style="text-align: center;font-size: large;"><div class="toggleButton" title="非必填内容" onclick="toggleForm()">︾</div><div class="togglePlusButton" title="额外内容" onclick="togglePlusForm()">︾</div></td>
					</tr>
					<tr class="advanced" style="display: none;background-color: #FFF5EE;">
					<td>客服电话</td>
					<td><input id="service_phone" name="service_phone" class="mini-textbox" emptyText="请输入电话"  maxLength="15"  /></td>
					</tr>
					<tr class="advanced" style="display: none;background-color: #FFF5EE;">
					<td>顶部按钮文字</td>
					<td><input id="center_title" name="center_title" class="mini-textbox" emptyText="请填写按钮文字,如:立即使用"  maxLength="15"  />
					<input id="center_url" name="center_url" class="mini-textbox" emptyText="请填写按钮URL"  maxLength="128"  />
					</td>
					</tr>
					<tr class="advanced" style="display: none;background-color: #FFF5EE;">
					<td>卡券副标题</td>
					<td><input id="center_sub_title" name="center_sub_title" class="mini-textbox" emptyText="请输入副标题"  maxLength="15"  /></td>
					</tr>
					<tr class="advanced" style="display: none;background-color: #FFF5EE;">
					<td>下方自定义入口</td>
					<td><input id="custom_url_name" name="custom_url_name" class="mini-textbox" emptyText="请填写入口名称"  maxLength="15"  />
					<input id="custom_url" name="custom_url" class="mini-textbox" emptyText="请填写入口url"  maxLength="128"  />
					<input id="custom_url_sub_title" name="custom_url_sub_title" class="mini-textbox" emptyText="请填写入口提示语"  maxLength="18"  /></td>
					</tr>
					<tr class="advanced" style="display: none;background-color: #FFF5EE;">
					<td>分享权限</td>
					<td><div id="can_share" name="can_share" class="mini-checkbox"  value="true"  text="领卡页面可分享"></div>&nbsp;
					<div id="can_give_friend" name="can_give_friend" class="mini-checkbox"  value="true"  text="卡券可转赠"></div></td>
					</tr>
					<!-- -------------------------------------------分隔表单   PLUS--------------------------------------------------------------- -->
					<tr class="PLUSCASH" style="display: none;background-color: #F0FFF0;">
					<td>限定类目</td>
					<td>适用于<input id="accept_category" name="accept_category" class="mini-textbox" emptyText="指定类目"  maxLength="500"  />&nbsp;	
					不适用于<input id="reject_category" name="reject_category" class="mini-textbox" emptyText="指定类目"  maxLength="500"  />
					</td>
					</tr>
					<tr class="cashAndGift" style="display: none;background-color: #F0FFF0;">
					<td>满减门槛</td>
					<td>满<input id="plus_least_cost" name="plus_least_cost" class="mini-spinner" minValue="0" maxValue="1000000"  format="0"/>元可用</td>
					</tr>
					<tr class="PLUSGIFT" style="display: none;background-color: #F0FFF0;">
					<td>可用类型</td>
					<td><input id="object_use_for" name="object_use_for" class="mini-textbox" emptyText="填写类型名称"  maxLength="500"  /></td>
					</tr>
					<tr class="plus" style="display: none;background-color: #F0FFF0;">
					<td>与其他优惠</td>
					<td>
					<div id="can_use_with_other_discount" name="can_use_with_other_discount" class="mini-checkbox"  value="true"  text="共享优惠"></div>
					</td>
					</tr>
					<tr class="plus" style="display: none;background-color: #F0FFF0;">
					<td>封面图片</td>
					<td ><img id="abstractIcon"  alt="请点击上传封面" style="width: 120px; height: 50px; margin-top: 5px;" onclick="openUploadAbstract()">
					<input id="abstract" name="abstract" class="mini-textbox" emptyText="填写封面摘要"  maxLength="24"  style="margin-top: -30px;width: 300px;" /></td>
					</tr>
					<tr class="plus" style="display: none;background-color: #F0FFF0;">
					<td>服务类型</td>
					<td><div id="business_service" name="business_service" class="mini-checkboxlist" repeatItems="4" repeatLayout="table" data="[{'id':'BIZ_SERVICE_DELIVER','text':'外卖服务'},{'id':'BIZ_SERVICE_WITH_PET','text':'可带宠物'},{'id':'BIZ_SERVICE_FREE_PARK','text':'停车位'},{'id':'BIZ_SERVICE_FREE_WIFI','text':'免费wifi'}]"
        textField="text" valueField="id" ></td>
					</tr>
					<tr class="plus" style="display: none;background-color: #F0FFF0;">
					<td>适用周期</td>
					<td><div id="week" name="week" class="mini-checkboxlist" repeatItems="7" repeatLayout="table" data="[{'id':'MONDAY','text':'周一'},{'id':'TUESDAY','text':'周二'},{'id':'WEDNESDAY','text':'周三'},{'id':'THURSDAY','text':'周四'},{'id':'FRIDAY','text':'周五'},{'id':'SATURDAY','text':'周六'},{'id':'SUNDAY','text':'周日'}]"
        textField="text" valueField="id" ></td>
					</tr>
					<tr class="plus" style="display: none;background-color: #F0FFF0;">
					<td>适用时间段</td>
					<td>开始时分<input id="beginUseTime" name="beginUseTime" class="mini-timespinner"  format="H:mm" />-结束时分<input id="endUseTime" name="endUseTime" class="mini-timespinner"  format="H:mm" /></td>
					</tr>
				</table>
			</div>
		</form>
	</div>
</div>
</div>
	<script type="text/javascript">
	addBody();
	mini.parse();
	var form = new mini.Form("#form1");
	var logoUrl=mini.get("logoUrl");
	var logoUrlFileId=mini.get("logoUrlFileId");
	var icon_url_list=mini.get("icon_url_list");
	var icon_url_listField=mini.get("icon_url_listField");
	var cardColor=mini.get("cardColor");
	var type=mini.get("type");
	var begin_timestamp=mini.get("begin_timestamp");
	var end_timestamp=mini.get("end_timestamp");
	var cardType=mini.get("cardType");
	var codeType=mini.get("codeType");
	var quantity=mini.get("quantity");
	var notice=mini.get("notice");
	var begin_timestamp=mini.get("begin_timestamp");
	var end_timestamp=mini.get("end_timestamp");
	var fixed_begin_term=mini.get("fixed_begin_term");
	var fixed_term=mini.get("fixed_term");
	var deal_detail=mini.get("deal_detail");
	var least_cost=mini.get("least_cost");
	var reduce_cost=mini.get("reduce_cost");
	var discount=mini.get("discount");
	var gift=mini.get("gift");
	var title=mini.get("title");
	var brandName=mini.get("brandName");
	var default_detail=mini.get("default_detail");
	var service_phone=mini.get("service_phone");
	var center_url=mini.get("center_url");
	var center_title=mini.get("center_title");
	var center_sub_title=mini.get("center_sub_title");
	var custom_url_name=mini.get("custom_url_name");
	var custom_url=mini.get("custom_url");
	var custom_url_sub_title=mini.get("custom_url_sub_title");
	var can_share=mini.get("can_share");
	var can_give_friend=mini.get("can_give_friend");
	var week=mini.get("week");
	var accept_category=mini.get("accept_category");
	var reject_category=mini.get("reject_category");
	var plus_least_cost=mini.get("plus_least_cost");
	var object_use_for=mini.get("object_use_for");
	var beginUseTime=mini.get("beginUseTime");
	var endUseTime=mini.get("endUseTime");
	var business_service=mini.get("business_service");
	var abstractEL=mini.get("abstract");
	var can_use_with_other_discount=mini.get("can_use_with_other_discount");
	var cardTypeArray=["GROUPON","CASH","DISCOUNT","GIFT","GENERAL_COUPON"];	
	var toggleAdvancedFormSign=false;//非必填字段默认为收起来
	var togglePlusFormSign=false;//额外内容默认为收起来
	
	var form=new mini.Form("#form1");
	changeType();
	changeCardType();
	initData();
	function openUpload(){ 
		_UploadFileDlg({
			from:'SELF',
			types:"Image",
			single:true,
			onlyOne:true,
			showMgr:false,
			callback:function(files){
				logoUrlFileId.setValue(files[0].fileId);
				$("#uploadLogo").attr("src","${ctxPath}/sys/core/file/download/"+files[0].fileId+".do ");
				$.ajax({
					url:"${ctxPath}/wx/core/wxMeterial/uploadImgToGetUrl.do",
					data:{pubId:"${pubId}",fileId:files[0].fileId},
					type:"post",
					success:function (result){
						logoUrl.setValue(result);
					}
				});
			}
		});
	}
	
	function openUploadAbstract(){ 
		_UploadFileDlg({
			from:'SELF',
			types:"Image",
			single:true,
			onlyOne:true,
			showMgr:false,
			callback:function(files){
				icon_url_listField.setValue(files[0].fileId);
				$("#abstractIcon").attr("src","${ctxPath}/sys/core/file/download/"+files[0].fileId+".do ");
				$.ajax({
					url:"${ctxPath}/wx/core/wxMeterial/uploadImgToGetUrl.do",
					data:{pubId:"${pubId}",fileId:files[0].fileId},
					type:"post",
					success:function (result){
						icon_url_list.setValue(result);
					}
				});
			}
		});
	}
	
	function toggleForm(){
		var toggleContent=$(".advanced");
		if(toggleAdvancedFormSign){
			toggleContent.hide();
			toggleAdvancedFormSign=false;
		}else{
			toggleContent.show();
			toggleAdvancedFormSign=true;
		}
	}
	
	function togglePlusForm(){
		var toggleContent=$(".plus");
		if(togglePlusFormSign){
			toggleContent.hide();
			$(".PLUSCASH").hide();
			$(".PLUSGIFT").hide();
			togglePlusFormSign=false;
		}else{
			toggleContent.show();
			togglePlusFormSign=true;
			changeCardType();
		}
	}
	

	function chooseColor(id){
		$(".SelectedColorBlob").removeClass("SelectedColorBlob");
		$("#"+id).addClass("SelectedColorBlob");
		cardColor.setValue(id);
	}
	
	function changeType(){
		var typeValue=type.getValue();
		if(typeValue=="DATE_TYPE_FIX_TIME_RANGE"){
			$(".DATE_TYPE_FIX_TIME_RANGE").show();
			$(".DATE_TYPE_FIX_TERM").hide();
		}else{
			$(".DATE_TYPE_FIX_TIME_RANGE").hide();
			$(".DATE_TYPE_FIX_TERM").show();
		}
	}
	
	function initData(){
		 if(${!empty wxTicket.id}){
			var specialConfig=mini.decode('${wxTicket.specialConfig}');
			var sku=mini.decode('${wxTicket.sku}');
			var dateInfo=mini.decode('${wxTicket.dateInfo}');
			var baseInfo=mini.decode('${wxTicket.baseInfo}');
			var advancedInfo=mini.decode('${wxTicket.advancedInfo}');
			
			if(JSON.stringify(baseInfo)!='{}'){
				toggleForm();
			}
			if(JSON.stringify(advancedInfo)!='{}'){
				togglePlusForm();
			}
			logoUrl.setValue("${wxTicket.logoUrl}");
			$("#uploadLogo").attr("src","${ctxPath}/sys/core/file/download/"+specialConfig.logoUrlFileId+".do ");
			cardType.setValue("${wxTicket.cardType}");
			chooseColor("${wxTicket.color}");
			codeType.setValue("${wxTicket.codeType}");
			quantity.setValue(sku.quantity);
			type.setValue(dateInfo.type);
			changeType();
			if(type.getValue()=="DATE_TYPE_FIX_TIME_RANGE"){
				begin_timestamp.setValue(new Date(dateInfo.begin_timestamp*1000));
				end_timestamp.setValue(new Date(dateInfo.end_timestamp*1000));
			}else{
				fixed_begin_term.setValue(new Date(dateInfo.fixed_begin_term*1000));
				fixed_term.setValue(new Date(dateInfo.fixed_term*1000));
			}
			changeCardType();
			var cardTypeValue=cardType.getValue();
      		if("GROUPON"==cardTypeValue){
      			deal_detail.setValue(specialConfig.deal_detail);
			}else if("CASH"==cardTypeValue){
				least_cost.setValue(specialConfig.least_cost);
				reduce_cost.setValue(specialConfig.reduce_cost);
			}else if("DISCOUNT"==cardTypeValue){
				discount.setValue(specialConfig.discount);
			}else if("GIFT"==cardTypeValue){
				gift.setValue(specialConfig.gift);
			}else if("GENERAL_COUPON"==cardTypeValue){
				default_detail.setValue(specialConfig.default_detail);
			}
      		
      		service_phone.setValue(baseInfo.service_phone);
      		center_title.setValue(baseInfo.center_title);
      		center_url.setValue(baseInfo.center_url);
      		center_sub_title.setValue(baseInfo.center_sub_title);
      		custom_url_name.setValue(baseInfo.custom_url_name);
      		custom_url.setValue(baseInfo.custom_url);
      		custom_url_sub_title.setValue(baseInfo.custom_url_sub_title);
      		can_share.setValue(baseInfo.can_share);
      		can_give_friend.setValue(baseInfo.can_give_friend);
      		
      		try{
      			accept_category.setValue(advancedInfo.use_condition.accept_category);
          		reject_category.setValue(advancedInfo.use_condition.reject_category);
          		plus_least_cost.setValue(advancedInfo.use_condition.plus_least_cost);
          		can_use_with_other_discount.setValue(advancedInfo.use_condition.can_use_with_other_discount);
          		abstractEL.setValue(advancedInfo.abstract.abstract);
      		}catch(e){
      		}
      		business_service.setValue(advancedInfo.business_service);
      		var weekArray=[];
      		for(var date in advancedInfo.time_limit){
      			weekArray.push(advancedInfo.time_limit[date].type);
      		}
      		week.setValue(weekArray);
      		beginUseTime.setValue(specialConfig.beginUseTime);
      		endUseTime.setValue(specialConfig.endUseTime);
      		if(specialConfig.icon_url_listField!=undefined){
      			$("#abstractIcon").attr("src","${ctxPath}/sys/core/file/download/"+specialConfig.icon_url_listField+".do ");
      		}
      		forbiddenFields();
		} 
		
	}
	
	function forbiddenFields(){
		brandName.setEnabled(false);
		title.setEnabled(false);
		cardType.setEnabled(false);
		default_detail.setEnabled(false);
		gift.setEnabled(false);
		discount.setEnabled(false);
		reduce_cost.setEnabled(false);
		least_cost.setEnabled(false);
		deal_detail.setEnabled(false);
		beginUseTime.setEnabled(false);
		endUseTime.setEnabled(false);
		week.setEnabled(false);
		business_service.setEnabled(false);
		abstractEL.setEnabled(false);
		can_use_with_other_discount.setEnabled(false);
		service_phone.setEnabled(false);
		center_title.setEnabled(false);
		center_url.setEnabled(false);
		center_sub_title.setEnabled(false);
		custom_url_name.setEnabled(false);
		custom_url.setEnabled(false);
		custom_url_sub_title.setEnabled(false);
		can_share.setEnabled(false);
		can_give_friend.setEnabled(false);
		plus_least_cost.setEnabled(false);
		object_use_for.setEnabled(false);
		reject_category.setEnabled(false);
		accept_category.setEnabled(false);
	}
	
	function createTicket(){
		form.validate();
	    if (!form.isValid()) {
	    	mini.showTips({
	            content: "<b>提醒</b> <br/>请完善表单",
	            state: 'warning',
	            x: 'center',
	            y: 'center',
	            timeout: 3000
	        });
	        return;
	    }
	    if(!validateLogoAndColor()){
	    	mini.showTips({
	            content: "<b>提醒</b> <br/>不要忘了颜色和图片",
	            state: 'warning',
	            x: 'center',
	            y: 'center',
	            timeout: 3000
	        });
	        return;
	    }
	    if(!validateTimeLimit()){
	    	mini.showTips({
	            content: "<b>提醒</b> <br/>注意时间区间是否合理",
	            state: 'warning',
	            x: 'center',
	            y: 'center',
	            timeout: 3000
	        });
	        return;
	    }
	    var data=form.getData(true);
	    data.toggleAdvancedFormSign=toggleAdvancedFormSign;
	    data.togglePlusFormSign=togglePlusFormSign;
	   	var url;
	   	if(${!empty wxTicket.id}){
	   		url="${ctxPath}/wx/core/wxTicket/editTicket.do";
	   	}else{
	   		url="${ctxPath}/wx/core/wxTicket/createTicket.do"
	   	}
	    $.ajax({
	    	url:url,
	    	data:data,
	    	type:"post",
	    	success:function(result){
	    		if(result.success){
	    			CloseWindow("ok");
	    		}else{
	    			mini.alert(result.errMsg);
	    		}
	    	}
	    });
	}
	
	function validateLogoAndColor(){
		var logoUrlValue=logoUrl.getValue();
		var cardColorValue=cardColor.getValue();
		var typeValue=type.getValue();
		var end_timestampValue=end_timestamp.getValue();
		var begin_timestampValue=begin_timestamp.getValue();
		if((typeValue=='DATE_TYPE_FIX_TIME_RANGE')&&(end_timestampValue<=begin_timestampValue)){//开始时间必须小于结束时间
			return false;
		}
		if((logoUrlValue==null||logoUrlValue=="")||(cardColorValue==null||cardColorValue=="")){//几个隐藏值必须要有
			return false;
		}else{
			return true;
		}
	}
	
	function changeCardType(){
		var cardTypeValue=cardType.getValue();
		for(var i=0;i<cardTypeArray.length;i++){
			if(cardTypeArray[i]==cardTypeValue){
				$("."+cardTypeArray[i]).show();
				toggleWithPlusArea(cardTypeArray[i]);
			}else{
				$("."+cardTypeArray[i]).hide();
			}
		}
		}
	
	function toggleWithPlusArea(type){
		if(togglePlusFormSign){//没隐藏的条件下才去考虑联动显示对应内容
			if(type=="GIFT"){
				$(".PLUSGIFT").show();
				$(".cashAndGift").show();
				$(".PLUSCASH").hide();
			}else if(type=="CASH"){
				$(".PLUSCASH").show();
				$(".cashAndGift").show();
				$(".PLUSGIFT").hide();
			}else{
				$(".cashAndGift").hide();
				$(".PLUSCASH").hide();
				$(".PLUSGIFT").hide();
			}
		}	
	}
	
	function validateTimeLimit(){
		if(togglePlusFormSign){
			if(beginUseTime.getValue()>=endUseTime.getValue()){
				return false;
			}else{
				return true;
			}
		}else{
			return true;
		}
	}
	
	</script>
</body>
</html>