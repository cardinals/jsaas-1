<%-- 
    Document   : 邮箱正文内容显示页面
    Created on : 2015-3-28, 17:42:57
    Author     : csx
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/commons/dynamic.jspf" %>
<link href="${ctxPath}/styles/commons.css" rel="stylesheet" type="text/css" />
<link href="${ctxPath}/styles/list.css" rel="stylesheet" type="text/css" />

<link href="${ctxPath}/styles/icons.css" rel="stylesheet" type="text/css" />
<script src="${ctxPath}/scripts/boot.js" type="text/javascript"></script>
<script src="${ctxPath}/scripts/share.js" type="text/javascript"></script>
<script src="${ctxPath}/scripts/jquery/plugins/jQuery.download.js" type="text/javascript"></script>
<title>邮件正文内容</title>
<style>
	body{
		box-sizing:border-box;
		border-radius:3px;
		background:#FFFFDD;
	}
	.mailContent{
		text-indent:2em;
		padding:10px;
	}
</style>
</head>
<body>
<div class="mailContent">${mailContent}</div>
</body>
</html>