
<%-- 
    Document   : [项目]编辑页
    Created on : 2017-09-29 14:38:27
    Author     : 陈茂昌
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>[项目]编辑</title>
<%@include file="/commons/edit.jsp"%>
</head>
<body>
	
	<div id="toolbar1" class="topToolBar" >
		<div>
			 <a class="mini-button"  plain="true" onclick="saveItem">保存</a>
		</div>
	</div>
	<div id="p1" class="form-outer shadowBox90">
		<form id="form1" method="post">
			<div class="form-inner">
				<input id="pkId" name="id" class="mini-hidden" value="${proItem.ID}" />
				<table class="table-detail column_2_m" cellspacing="1" cellpadding="0">
					<caption>基本信息</caption>
					<tr>
						<th>项  目  名</th>
						<td>
							
								<input name="name" value="${proItem.name}"
							class="mini-textbox"  required="true" style="width: 90%" />
						</td>
					</tr>
					<%-- <tr>
						<th>版本：</th>
						<td>
							
								<input name="version" value="${proItem.version}"
							class="mini-textbox"   style="width: 90%" />
						</td>
					</tr> --%>
					<tr>
						<th>项目别名</th>
							<td>
								<input name="alias" value="${proItem.alias}" required="true" class="mini-textbox"   style="width: 90%" />
							</td>
						<!-- <th>文档生成路径</th>
							<td>
								<input name="genSrc" value="${proItem.genSrc}"
								class="mini-textbox"   style="width: 90%" />
							</td> -->
					</tr>
					<tr>
						<th>描　　述</th>
						<td>
							<div name="desc" id="desc" class="mini-ueditor" style="width:auto;height:600px;" >${proItem.desc}</div>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</div>
	<rx:formScript formId="form1" baseUrl="oa/article/proItem"
		entityName="com.redxun.oa.article.entity.ProItem" />
	
	<script type="text/javascript">
	addBody();
	mini.parse();
	var form = new mini.Form("form1");
	function saveItem(){
		form.validate();
        if (!form.isValid()) {
            return;
        }
		var formData=form.getData();
		var url='${ctxPath}/oa/article/proItem/save.do';
		_SubmitJson({
			url:url,
			method:'POST',
			data:formData
		})
	}
	
	</script>
</body>
</html>