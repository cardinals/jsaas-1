<%-- 
    Document   : 内部邮件信息页
    Created on : 2015-3-28, 17:42:57
    Author     : csx
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>内部邮件信息</title>
<%@include file="/commons/get.jsp"%>
<link href="${ctxPath}/styles/list.css" rel="stylesheet" type="text/css" />
<script src="${ctxPath}/scripts/common/baiduTemplate.js" type="text/javascript"></script>
<script src="${ctxPath}/scripts/customer/mini-custom.js" type="text/javascript"></script>
<style type="text/css">
	.footerBar{
		text-align: center;
	}
	.footerBar input{
		border: none;
		color: #fff;
		padding: 6px 8px;
		border-radius: 4px;
	}
	.mini-panel-body{
		padding: 0;
	}
</style>
</head>
<body>
	<div class="topToolBar">
		<div>
			<a id="toDel" class="mini-button btn-red" plain="true" onclick="toDel">删除</a>
			<a id="del" class="mini-button btn-red" plain="true" onclick="del">彻底删除</a>
			<a class="mini-button"  plain="true" onclick="onMoveNode">移动到</a>
			<a class="mini-button" plain="true" onclick="transmit">转发</a>
			<a class="mini-button"  plain="true" onclick="reply">回复</a>
			<a id="pre" class="mini-button"  plain="true" onclick="preRecord">上一条</a>
			<a id="next" class="mini-button"  plain="true" onclick="nextRecord">下一条</a>
			<a class="mini-button"  plain="true" onclick="fit()">全屏查看邮件</a>
			<a class="mini-button btn-red" plain="true" onclick="closeWindow">关闭</a>
		</div>
	</div>
	<div class="mini-fit">
		<div class="form-container">
			<table class="table-detail column-four" cellpadding="0"
				   cellspacing="1">
				<caption>邮件信息</caption>
				<tr>
					<td>邮件标题</td>
					<td>${innerMail.subject}</td>
					<td width="120">发件人姓名</td>
					<td>${innerMail.sender}</td>

				</tr>
				<tr>
					<td>抄送人列表</td>
					<td>${innerMail.ccNames}</td>
					<td>收件人姓名</td>
					<td>${innerMail.recNames}</td>
				</tr>
				<tr>
					<td>发送时间</td>
					<td><fmt:formatDate  value="${innerMail.senderTime}" pattern="yyyy-MM-dd HH:mm"/></td>
					<td>邮件重要程度</td>
					<td>
						<c:if test="${innerMail.urge=='1'}">
							<i title='一般' class='iconfont icon-normal'></i>
						</c:if>
						<c:if test="${innerMail.urge=='2'}">
							<i title='重要' class='iconfont icon-important'></i>
						</c:if>
						<c:if test="${innerMail.urge=='3'}">
							<i title='非常重要' class='iconfont icon-veryImportant'></i>
						</c:if>
					</td>

				</tr>
				<tr>
					<td style="width: 15%; vertical-align: middle;">附　　件</td>
					<td colspan="3">
						<ul style="list-style: none;margin:0;padding: 0;">
							<c:forEach items="${attach}" var="a">
								<li style="margin-left: 4px;display: inline;"><a href="${ctxPath}/sys/core/file/previewFile.do?fileId=${a.fileId}">${a.fileName}</a></li>
							</c:forEach>
						</ul>
					</td>
				</tr>
			</table>
			<div style="padding-top: 20px;">
				<div
					id="content"
					class="mini-panel"
					title="内容"
					style="width: 100%;height:100%;padding:0;overflow: auto;"
					showToolbar="false"
					showCloseButton="false"
					showFooter="false"
					url="${ctxPath}/oa/mail/innerMail/getInnerMailContentByMailId.do?mailId=${innerMail.mailId}"
				></div>
			</div>
		</div>
	</div>

	<!-- 移动内部邮件文件夹树 -->
	<div 
		id="moveWindow" 
		title="选择目标目录" 
		class="mini-window" 
		style="width: 300px; height: 250px;" 
		showModal="true" 
		showFooter="true" 
		allowResize="true"
	>
		<div class="mini-fit">
			<ul
				id="moveTree"
				class="mini-tree"
				style="width: 100%;"
				url="${ctxPath}/oa/mail/mailFolder/getInnerMailFolderOutOfRoot.do"
				showTreeIcon="true"
				textField="name"
				idField="folderId"
				parentField="parentId"
				resultAsTree="false"
				showArrow="false"
				showTreeLines="true"
				ondrawnode="draw"
			>
			</ul>
		</div>
		<div class="bottom-toolbar">
			<a class="mini-button"  onclick="okWindow()" />确定</a>
			<a class="mini-button"  onclick="hideWindow()" />取消</a>
		</div>
	</div>
	<!-- end of moveWindow -->

	<script type="text/javascript">
			mini.parse();
			var layout=mini.get('layout1');
			$(function(){
				var pre=mini.get("pre");
				var next=mini.get("next");
				var isHome="${param['isHome']}";
				var toDel=mini.get("toDel");
				var del=mini.get("del");
				if(isHome!='YES'){  	//如果不是首页打开内部有邮件
	        		var tree=top['mailbox'].tree;
	        		var node=tree.getSelectedNode();
					var checkNode=null;
					 tree.findNodes(function(f_node){         //查找发件箱目录
						    if(f_node.type =='SENDER-FOLDER'){
						    	checkNode=f_node;
						    	return ;
						    }
						});
					if(node.type=='SENDER-FOLDER'||node.path.indexOf(checkNode.folderId)>-1){  //如果文件夹目录为发件箱目录及其以下的目录
			        		var move=mini.get("moveTree");
							move.setUrl("${ctxPath}/oa/mail/mailFolder/getInnerSenderFolder.do");	  //获取发件箱目录及其子目录
							move.load();	
						}
				}
				else{  //如果是主页，则隐藏上下浏览邮件，删除和彻底删除功能
					pre.setVisible(false);
					next.setVisible(false);
					toDel.setVisible(false);
					del.setVisible(false);
				}
			});
			
			/*上一条记录*/
 			function preRecord(){
				var tree=top['mailbox'].tree;
				var node=tree.getSelectedNode();
		         var pkId=top['com.redxun.oa.mail.entity.InnerMail'].preRecord();
		         if(pkId==0) return ;
		         window.location.href=__rootPath+'/oa/mail/innerMail/get.do?pkId='+pkId+"&folderId="+node.folderId;
		        }
		        
				/*下一条记录*/
		        function nextRecord(){
		        	var tree=top['mailbox'].tree;
		        	var node=tree.getSelectedNode();
		            var pkId=top['com.redxun.oa.mail.entity.InnerMail'].nextRecord();
		            if(pkId==0) return ;
		            window.location.href=__rootPath+'/oa/mail/innerMail/get.do?pkId='+pkId+"&folderId="+node.folderId;
		        } 
		        
				/*回复内部邮件*/
		        function reply() {
					window.location = __rootPath + "/oa/mail/innerMail/edit.do?pkId="+ '${innerMail.mailId}' + "&operation=reply";
				}
				
		        /*转发内部邮件*/
				function transmit() {
					window.location = __rootPath + "/oa/mail/innerMail/edit.do?pkId="+ '${innerMail.mailId}' + "&operation=transmit";
				}
		        
		        /*隐藏邮件信息，显示邮件正文内容*/
				function fit(){
					var isVis=layout.isVisibleRegion('north');
					if(isVis){
						 layout.updateRegion("north", { visible: false }); 
					}else{
						layout.updateRegion("north", { visible: true }); 
					}
					mini.layout();
				}
		        
		        /*关闭窗口*/
		        function closeWindow(){
		        	CloseWindow('ok');
		        }
		        
		        var moveWindow = mini.get("moveWindow");
		        var moveTree = mini.get("moveTree");
		        function okWindow() {            
		            var targetNode = moveTree.getSelectedNode(); //获取目标文件夹节点
		            /*移动内部邮件*/
	    	        _SubmitJson({
	    	        	url:__rootPath+"/oa/mail/innerMail/moveInnerMailToFolder.do",
	    	        	method:'POST',
	    	        	data:{
	    	        		ids: '${innerMail.mailId}',
	    	        		to:targetNode.folderId,
	    	        		target:"all",
	    	        	    nowFolderId:top['mailbox'].tree.getSelectedNode().folderId
	    	        	},
	    	        	 success: function(text) {
	    	            }
	    	        });
		                moveWindow.hide();  //隐藏移动窗口
		        }
		        function hideWindow() {
		            var moveWindow = mini.get("moveWindow");
		            moveWindow.hide();
		        }

		        /*点击移动邮件的事件处理*/
		        function onMoveNode(e) {	
		        	var mailId='${innerMail.mailId}';
		            if (mailId!='') 
		                moveWindow.show();
		        } 
		        
		        /*绘制移动窗口树节点的图标*/
		        function draw(e){
					if(e.node.parentId=="0")
						e.iconCls="icon-folder";
					if(e.node.type=="RECEIVE-FOLDER")
						e.iconCls="icon-receive";
					if(e.node.type=="SENDER-FOLDER")
						e.iconCls="icon-sender";
					if(e.node.type=="DRAFT-FOLDER")
						e.iconCls="icon-draft";
					if(e.node.type=="DEL-FOLDER")
						e.iconCls="icon-trash";
					if(e.node.type=="OTHER-FOLDER")
						e.iconCls="icon-folder";
		        }
		       
		        /*将内部邮件移动到垃圾箱*/
			    function toDel(){
	        		var mailId='${innerMail.mailId}';
			        if (!confirm("确定将选中的邮件已至垃圾箱？")) return;
			        /*将内部邮件移动到垃圾箱*/
			        _SubmitJson({
			        	url:__rootPath+"/oa/mail/innerMail/moveInnerMailToFolder.do",
			        	method:'POST',
			        	data:{
			        		ids: mailId,
			        		target:"del",
			        		nowFolderId:top['mailbox'].tree.getSelectedNode().folderId
			        		},
			        	 success: function(text) {
			                closeWindow();
			            }
			        });
		    }
			    /*彻底删除内部邮件*/
		        function del(){
		        	var mailId='${innerMail.mailId}';
			        if (!confirm("确定将选中的邮件删除（不可恢复）？")) return;
			        /*彻底删除内部邮件*/
			        _SubmitJson({
			        	url:__rootPath+"/oa/mail/mailBox/del.do",
			        	method:'POST',
			        	data:{
			        		ids: mailId,
			        		folderId:top['mailbox'].tree.getSelectedNode().folderId
			        		},
			        	 success: function(text) {
			                closeWindow();
			            }
			        });
		        }
		        
		        
			</script>

	<rx:detailScript baseUrl="oa/mail/innerMail" formId="form1" entityName="com.redxun.oa.mail.entity.InnerMail" />

</body>
</html>