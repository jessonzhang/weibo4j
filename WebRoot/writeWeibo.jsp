<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ page language="java" import="weibo4j.http.*" %>
<%@ page language="java" import="weibo4j.*" %>
<%@ page language="java" import="weibo4j.model.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>发布sina微博</title>
	
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->

  </head>
  
  <body bgcolor="#d0d0d0" > 
  	<div id="content">
  		<form action="updateWeibo.jsp" method="post">    
           	 请在这里写上140字符以内的文本：</br> 
            <textarea name="weiboText" rows="3" cols="30">测试新浪微博！</textarea></br> 
            <input type="submit" value="发布"> 
            <input type="reset" value="清除"></br> 
        </form>
  	</div>
  </body> 
</html>
