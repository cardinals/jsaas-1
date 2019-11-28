
<%-- 
    Document   : [日志模块]明细页
    Created on : 2017-09-25 16:49:23
    Author     : 陈茂昌
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>[日志模块]明细</title>
        <%@include file="/commons/get.jsp" %>
    </head>
    <body>

	<rx:toolbar toolbarId="toolbar1"/>

	<div class="mini-fit">
        <div id="form1" class="form-container">
             <div style="padding:5px;">
             	<table style="width:100%" class="table-detail column-two" cellpadding="0" cellspacing="1">
                	<caption>[日志模块]基本信息</caption>
					<tr>
						<td>模　块</td>
						<td>
							${logModule.module}
						</td>
					</tr>
					<tr>
						<td>子模块</td>
						<td>
							${logModule.subModule}
						</td>
					</tr>
					<tr>
						<td>启　用</td>
						<td>
							${logModule.enable}
						</td>
					</tr>
				</table>
             </div>
    	</div>
	</div>
        <rx:detailScript baseUrl="sys/log/logModule" 
        entityName="com.redxun.sys.log.entity.LogModule"
        formId="form1"/>
        
        <script type="text/javascript">
        addBody();
		mini.parse();
		var form = new mini.Form("#form1");
		var pkId = ${logModule.id};
		$(function(){
			$.ajax({
				type:'POST',
				url:"${ctxPath}/sys/log/logModule/getJson.do",
				data:{ids:pkId},
				success:function (json) {
					form.setData(json);
				}					
			});
		})
		</script>
    </body>
</html>