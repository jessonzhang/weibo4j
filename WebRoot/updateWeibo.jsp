<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="weibo4j.http.*" %>
<%@ page language="java" import="weibo4j.*" %>
<%@ page language="java" import="weibo4j.model.*"%>

<% 
	//解决中文乱码
	request.setCharacterEncoding("utf-8");  
    AccessToken accessToken = (AccessToken)session.getAttribute("accessToken"); 
    String weiboText = (String)request.getParameter("weiboText"); 
    Weibo weibo = new Weibo();
	weibo.setToken(accessToken.getAccessToken());
	Timeline tm = new Timeline();
	try {
		Status status = tm.UpdateStatus(weiboText);
		System.out.println(status.toString());
		//连续发表同样的微博内容会返回400错误 
		if(status!=null){
	    	out.println("<h3>发表微博成功！</h3>"); 
	    	out.println("<button onclick='window.history.go(-1);'>返回</button>"); 
		}
	} catch (WeiboException e) {
		e.printStackTrace();
		out.println("<button onclick='window.history.go(-1);'>返回</button>"); 
	}
    
%>
