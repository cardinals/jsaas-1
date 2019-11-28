<%-- 
    Document   : 关注列表页
    Created on : 2015-3-21, 0:11:48
    Author     : 陈茂昌
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="redxun" uri="http://www.redxun.cn/gridFun"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>[ProWorkAtt]列表管理</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<%@include file="/commons/dynamic.jspf"%>
<link href="${ctxPath}/styles/commons.css" rel="stylesheet" type="text/css" />
<link href="${ctxPath}/styles/list.css" rel="stylesheet" type="text/css" />
<link href="${ctxPath}/styles/icons.css" rel="stylesheet" type="text/css" />
<script src="${ctxPath}/scripts/boot.js" type="text/javascript"></script>
<script src="${ctxPath}/scripts/share.js" type="text/javascript"></script>
<script src="${ctxPath}/scripts/jquery/plugins/jQuery.download.js" type="text/javascript"></script>

</head>
<body>

	<redxun:toolbar entityName="com.redxun.oa.pro.entity.ProWorkAtt"  excludeButtons="popupAddMenu,popupAttachMenu,popupSearchMenu,popupSettingMenu,edit,saveCurGridView,saveAsNewGridView" >
		<div class="self-toolbar">
				</div>
			</redxun:toolbar>

	<div class="mini-fit" style="height: 100%;">
		<div id="datagrid1" class="mini-datagrid" style="width: 100%; height: 100%;" allowResize="false"
			url="${ctxPath}/oa/pro/proWorkAtt/listData.do" idField="attId" multiSelect="true" showColumnsMenu="true"
			sizeList="[5,10,20,50,100,200,500]" pageSize="20" allowAlternating="true" ondrawcell="onDrawCell" onupdate="_LoadUserInfo();">
			<div property="columns">
				<div type="checkcolumn" width="20"></div>
				<div name="action" cellCls="actionIcons" width="22" headerAlign="center" align="center" renderer="onActionRenderer"
					cellStyle="padding:0;">#</div>
				<div field="typePk" width="120" headerAlign="center" allowSort="true">所关注名称</div>
				<div field="noticeType" width="120" headerAlign="center" allowSort="true">通知方式</div>
				<div field="type" width="120" headerAlign="center" allowSort="true">关注类型</div>
				
			</div>
		</div>
	</div>

	<script type="text/javascript">
        	//行功能按钮
	        function onActionRenderer(e) {
	            var record = e.record;
	            var pkId = record.pkId;
	            var s = '<span class="icon-detail" title="明细" onclick="detailRow(\'' + pkId + '\')"></span>'
	                   /*  + ' <span class="icon-edit" title="编辑" onclick="editRow(\'' + pkId + '\')"></span>' */
	                    + ' <span class="icon-remove" title="删除" onclick="delRow(\'' + pkId + '\')"></span>';
	            return s;
	        }
        	
	    
        	
	       //绘制名称等等
			function onDrawCell(e) {
		        var tree = e.sender;
		        var record=e.record;
		        var field=e.field;
		        	 if(field=='typePk'){//给typePk那列显示成名字
		        	 $.ajax({
		        		 type:"post",
		        		 url:"${ctxPath}/oa/pro/proWorkAtt/getAttName.do?typePk="+e.record.typePk+"&pkId="+record.attId,
		        		 async:false,
		        		 success:function(result){
		        			 e.cellHtml=result.name;
		        		 }
		        	 })
		        	} 
		    }  
        </script>
	<script src="${ctxPath}/scripts/common/list.js" type="text/javascript"></script>	
	<redxun:gridScript gridId="datagrid1" entityName="com.redxun.oa.pro.entity.ProWorkAtt" winHeight="450" winWidth="700"
		entityTitle="关注" baseUrl="oa/pro/proWorkAtt" />
</body>
</html>