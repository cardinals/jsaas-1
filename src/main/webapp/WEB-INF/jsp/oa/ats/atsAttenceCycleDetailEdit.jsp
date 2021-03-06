
<%-- 
    Document   : [考勤周期明细]编辑页
    Created on : 2018-03-21 16:05:40
    Author     : mansan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>[考勤周期明细]编辑</title>
<%@include file="/commons/edit.jsp"%>
</head>
<body>
	<rx:toolbar toolbarId="toolbar1" pkId="atsAttenceCycleDetail.id" />
	<div id="p1" class="form-outer">
		<form id="form1" method="post">
			<div class="form-inner">
				<input id="pkId" name="id" class="mini-hidden" value="${atsAttenceCycleDetail.id}" />
				<table class="table-detail" cellspacing="1" cellpadding="0">
					<caption>[考勤周期明细]基本信息</caption>
					<tr>
						<th>考勤周期：</th>
						<td>
							
								<input name="cycleId" value="${atsAttenceCycleDetail.cycleId}"
							class="mini-textbox"   style="width: 90%" />
						</td>
					</tr>
					<tr>
						<th>名称：</th>
						<td>
							
								<input name="name" value="${atsAttenceCycleDetail.name}"
							class="mini-textbox"   style="width: 90%" />
						</td>
					</tr>
					<tr>
						<th>开始时间：</th>
						<td>
							
								<input name="startTime" value="${atsAttenceCycleDetail.startTime}"
							class="mini-datepicker"  format="yyyy-MM-dd" />
						</td>
					</tr>
					<tr>
						<th>结束时间：</th>
						<td>
							
								<input name="endTime" value="${atsAttenceCycleDetail.endTime}"
							class="mini-datepicker"  format="yyyy-MM-dd" />
						</td>
					</tr>
					<tr>
						<th>描述：</th>
						<td>
							
								<input name="memo" value="${atsAttenceCycleDetail.memo}"
							class="mini-textbox"   style="width: 90%" />
						</td>
					</tr>
				</table>
			</div>
		</form>
	</div>
	<rx:formScript formId="form1" baseUrl="oa/ats/atsAttenceCycleDetail"
		entityName="com.redxun.oa.ats.entity.AtsAttenceCycleDetail" />
	
	<script type="text/javascript">
	mini.parse();
	
	
	

	</script>
</body>
</html>