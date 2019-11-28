<%-- 
    Document   : 新闻公告列表页
    Created on : 2015-3-21, 0:11:48
    Author     : csx
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>新闻公告列表管理</title>
	<%@include file="/commons/list.jsp"%>
</head>
<body>

<ul id="popupAddMenu" class="mini-menu" style="display:none;">
	<li  onclick="add()">新建</li>
	<li  onclick="copyAdd()">复制新建</li>
</ul>

<div class="mini-toolbar">
	<div class="searchBox">
		<form id="searchForm" class="search-form" >
			<ul>
				<li>
					<span class="text">标题：</span>
					<input class="mini-textbox" name="Q_subject_S_LK"  />
				</li>
				<li>
					<span class="text">摘要：</span>
					<input class="mini-textbox" name="Q_keywords_S_LK"  />
				</li>
				<li class="liBtn">
					<a class="mini-button " onclick="searchForm(this)">搜索</a>
					<a class="mini-button  btn-red" onclick="onClearList(this)">清空</a>
					<span class="unfoldBtn" onclick="no_more(this,'moreBox')">
						<em>展开</em>
						<i class="unfoldIcon"></i>
					</span>
				</li>
			</ul>
			<div id="moreBox">
				<ul>
					<li>
						<span class="text">状态：</span>
						<input
								class="mini-combobox"
								name="Q_status_S_LK"
								showNullItem="true"
								emptyText="请选择..."
								data="[{id:'Issued',text:'发布'},{id:'Draft',text:'草稿'}]"
						/>
					</li>
					<li>
						<span class="text">创建时间从：</span>
						<input class="mini-datepicker" name="Q_createTime_D_GE"/>
					</li>
					<li>
						<span class="text-to">至：</span>
						<input class="mini-datepicker" name="Q_createTime_D_LE"/>
					</li>
				</ul>
			</div>
		</form>
	</div>
	<ul class="toolBtnBox toolBtnBoxTop">
		<li>
			<a class="mini-button"  plain="true" onclick="detail()">明细</a>
		</li>
		<li>
			<a class="mini-menubutton"  plain="true" menu="#popupAddMenu">新增</a>
		</li>
		<li>
			<a class="mini-button"  plain="true" onclick="edit()">编辑</a>
		</li>
		<li>
			<a class="mini-button btn-red"  plain="true" onclick="remove()">删除</a>
		</li>
		<li> <a class="mini-button"  plain="true" onclick="morePublish()">批量发布</a> </li>
	</ul>
	<span class="searchSelectionBtn" onclick="no_search(this ,'searchForm')">
		<i class="icon-sc-lower"></i>
	</span>
</div>





<div class="mini-fit rx-grid-fit">
	<div
			id="datagrid1"
			class="mini-datagrid"
			style="width: 100%; height: 100%;"
			allowResize="false"
			url="${ctxPath}/oa/info/insNews/listDataJson.do"
			idField="newId"
			multiSelect="true"
			showColumnsMenu="true"
			sizeList="[5,10,20,50,100,200,500]"
			pageSize="20"
			allowAlternating="true"
			ondrawcell="onDrawCell"
			pagerButtons="#pagerButtons"
	>
		<div property="columns">
			<div type="checkcolumn" width="20"></div>
			<div field="action" name="action" cellCls="actionIcons" width="100"  renderer="onActionRenderer" cellStyle="padding:0;">操作</div>
			<div field="subject" width="150" headerAlign="" allowSort="true">标题</div>
			<div field="keywords" width="100" headerAlign="" allowSort="true">摘要</div>
			<div field="columnName" width="100" headerAlign="" allowSort="true">发布栏目</div>
			<div field="readTimes" width="80" headerAlign="" allowSort="true">阅读次数</div>
			<div field="author" width="80" headerAlign="" allowSort="true">作者</div>
			<div field="createTime" width="80" headerAlign="" allowSort="true" renderer="onDateRenderer">创建时间</div>
			<div field="status" width="80" headerAlign="" allowSort="true" renderer="onStatusRenderer">状态</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	var grid = mini.get("datagrid1");
	function onActionRenderer(e) {
		var record = e.record;
		var uid = record.pkId;
		var s = ' <span  title="编辑" onclick="editRow(\'' + uid + '\')">编辑</span>'
				+ '<span  title="明细" onclick="detailRow1(\'' + uid + '\')">明细</span>'
				+ '<span  title="删除" onclick="delRow(\'' + uid + '\')">删除</span>'
				+ '<span  title="附件权限" onclick="ctlRow(\'' + uid + '\')">附件权限</span>';
		return s;
	}

	function onDrawCell(e) {
		var record = e.record;
		var status = record.status;
		var uid = record.pkId;
		if (e.field == "action") {
			if (status != "Issued") {
				e.cellHtml =' <span  title="编辑" onclick="editRow(\'' + uid + '\')">编辑</span>'
						+'<span  title="明细" onclick="detailRow1(\'' + uid + '\')">明细</span>'
						+'<span  title="删除" onclick="delRow(\'' + uid + '\')">删除</span>'
						+'<span  title="附件权限" onclick="ctlRow(\'' + uid + '\')">附件权限</span>';
			}
		}
	}

	function onStatusRenderer(e) {
		var record = e.record;
		var status = record.status;

		var arr = [ {'key' : 'Issued','value' : '发布','css' : 'green'},
			{'key' : 'Draft','value' : '草稿','css' : 'orange'},
			{'key' : 'Archived','value' : '归档','css' : 'blue'}];
		return $.formatItemValue(arr,status);
	}

	function onDateRenderer(e){
		var record = e.record;
		var createTime = record.createTime;
		return createTime.format("yyyy-MM-dd");
	}

	function morePublish() {
		var rows = grid.getSelecteds();
		var pkIds = new Array();
		if (rows.length > 0) {
			for (var i = 0; i < rows.length; i++) {
				if (rows[i].status == "Issued") {
					mini.showTips({
						content : "您选中的有不可发布的新闻。",
						state : "danger",
						x : "center",
						y : "center",
						timeout : 4000
					});
					return;
				}
				pkIds[i] = rows[i].pkId;
			}
			_OpenWindow({
				url : "${ctxPath}/oa/info/insNews/publish.do?pkId=" + pkIds,
				title : "新闻发布",
				width : 800,
				height : 400,
				ondestroy:function(action){
					if(action=='ok'){
						grid.load();
					}

				}
			});
		} else {
			mini.showTips({
				content : "请选择新闻。",
				state : "info",
				x : "center",
				y : "top",
				timeout : 4000
			});
			return;
		}
	}

	function publish(pkId) {
		_OpenWindow({
			url : "${ctxPath}/oa/info/insNews/publish.do?pkId=" + pkId,
			title : "新闻发布",
			width : 800,
			height : 400,
		});
	}

	function detailRow1(pkId) {
		var row = grid.getSelected();
		_OpenWindow({
			url : "${ctxPath}/oa/info/insNews/get.do?permit=yes&pkId=" + row.pkId,
			title : "新聞公告明細",
			max:true
		});
	}

	function ctlRow(pkId){
		_OpenWindow({
			url : "${ctxPath}/oa/info/insNewsCtl/edit.do?newsId=" + pkId,
			title : '权限管理',
			width : 850,
			height : 400,
			//max:true,
		});
	}
	//清空查询
	function onClear(){
		$("#searchForm")[0].reset();
	}
	//查询
	function onSearch(){
		var formData=$("#searchForm").serializeArray();
		var filter=mini.encode(formData);
		grid.setUrl(__rootPath+'/oa/info/insNews/listData.do?filter='+filter);
		grid.load();
	}
</script>
<script src="${ctxPath}/scripts/common/list.js" type="text/javascript"></script>
<redxun:gridScript gridId="datagrid1" entityName="com.redxun.oa.info.entity.InsNews" winHeight="550" winWidth="780" entityTitle="新闻公告" baseUrl="oa/info/insNews" />
</body>
</html>