<%-- 
    Document   : [考勤出差单]列表页
    Created on : 2018-03-21 16:05:40
    Author     : mansan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
<title>[考勤出差单]列表管理</title>
<%@include file="/commons/list.jsp"%>
</head>
<body>
	 <div class="mini-toolbar" >
		 <div class="searchBox">
			 <form id="searchForm" class="search-form" >
				 <ul>
					 <li><span class="text">用户ID:</span><input class="mini-textbox" name="Q_USER_ID_S_LK"></li>
					 <li><span class="text">出差类型:</span><input class="mini-textbox" name="Q_TRIP_TYPE_S_LK"></li>
					 <li class="liBtn">
						 <a class="mini-button"   plain="true" onclick="searchFrm()">查询</a>
						 <a class="mini-button btn-red"   plain="true" onclick="clearForm()">清空查询</a>
						<span class="unfoldBtn" onclick="no_more(this,'moreBox')">
							<em>展开</em>
							<i class="unfoldIcon"></i>
						</span>
					 </li>
				 </ul>
				 <div id="moreBox">
					 <ul>
						 <li><span class="text">流程运行ID:</span><input class="mini-textbox" name="Q_RUN_ID_S_LK"></li>
						 <li>
							 <span class="text">开始时间 从</span>:<input  name="Q_START_TIME_D_GE"  class="mini-datepicker" format="yyyy-MM-dd"/>
						 </li>
						 <li>
							 <span class="text-to">至: </span><input  name="Q_START_TIME_D_LE" class="mini-datepicker" format="yyyy-MM-dd"  />
						 </li>
					 </ul>
					 <ul>
						 <li><span class="text">出差时间:</span><input class="mini-textbox" name="Q_TRIP_TIME_S_LK"></li>
						 <li>
							 <span class="text">结束时间 从</span>:<input  name="Q_END_TIME_D_GE"  class="mini-datepicker" format="yyyy-MM-dd" />
						 </li>
						 <li>
							 <span class="text-to">至: </span><input  name="Q_END_TIME_D_LE" class="mini-datepicker" format="yyyy-MM-dd"  />
						 </li>
					 </ul>
				 </div>
			 </form>
		 </div>
		 <ul class="toolBtnBox">
			 <li><a class="mini-button"  plain="true" onclick="add()">增加</a></li>
			 <li><a class="mini-button"  plain="true" onclick="edit()">编辑</a></li>
			 <li><a class="mini-button btn-red"  plain="true" onclick="remove()">删除</a></li>
		 </ul>
     </div>
	
	<div class="mini-fit" style="height: 100%;">
		<div id="datagrid1" class="mini-datagrid" style="width: 100%; height: 100%;" allowResize="false"
			url="${ctxPath}/oa/ats/atsTrip/listData.do" idField="id"
			multiSelect="true" showColumnsMenu="true" sizeList="[5,10,20,50,100,200,500]" pageSize="20" allowAlternating="true" pagerButtons="#pagerButtons">
			<div property="columns">
				<div type="checkcolumn" width="20" headerAlign="center" align="center"></div>
				<div name="action" cellCls="actionIcons" width="100"  renderer="onActionRenderer" cellStyle="padding:0;">操作</div>
				<div field="userId"  sortField="USER_ID"  width="120" headerAlign="center" allowSort="true">用户ID</div>
				<div field="tripType"  sortField="TRIP_TYPE"  width="120" headerAlign="center" allowSort="true">出差类型</div>
				<div field="startTime" sortField="START_TIME" dateFormat="yyyy-MM-dd HH:mm:ss" width="120" headerAlign="center" allowSort="true">开始时间</div>
				<div field="endTime" sortField="END_TIME" dateFormat="yyyy-MM-dd HH:mm:ss" width="120" headerAlign="center" allowSort="true">结束时间</div>
				<div field="tripTime"  sortField="TRIP_TIME"  width="120" headerAlign="center" allowSort="true">出差时间</div>
				<div field="runId"  sortField="RUN_ID"  width="120" headerAlign="center" allowSort="true">流程运行ID</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		//行功能按钮
		function onActionRenderer(e) {
			var record = e.record;
			var pkId = record.pkId;
			var s = '<span  title="明细" onclick="detailRow(\'' + pkId + '\')">明细</span>'
					+'<span  title="编辑" onclick="editRow(\'' + pkId + '\',true)">编辑</span>'
					+'<span  title="删除" onclick="delRow(\'' + pkId + '\')">删除</span>';
			return s;
		}
	</script>
	<redxun:gridScript gridId="datagrid1" entityName="com.redxun.oa.ats.entity.AtsTrip" winHeight="450"
		winWidth="700" entityTitle="考勤出差单" baseUrl="oa/ats/atsTrip" />
</body>
</html>