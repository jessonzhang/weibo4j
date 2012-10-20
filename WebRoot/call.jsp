<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ page language="java" import="weibo4j.*" %>
<%@ page language="java" import="weibo4j.http.*" %>
<%--
weibo4j.examples.WebOAuth weboauth = null;
      synchronized (session) {
        weboauth = (weibo4j.examples.WebOAuth) _jspx_page_context.getAttribute("weboauth", PageContext.SESSION_SCOPE);
        if (weboauth == null){
          weboauth = new weibo4j.examples.WebOAuth();
          _jspx_page_context.setAttribute("weboauth", weboauth, PageContext.SESSION_SCOPE);
        }
      }
--%>
<jsp:useBean id="oauth" scope="session" class="weibo4j.Oauth" />
<%
if("1".equals(request.getParameter("opt"))){
	String url=oauth.authorize("code");
	System.out.println("重定向地址@(⊙_⊙)@：authorizeURL:" + url);
	response.sendRedirect(url);
}else{
%>
<a href="call.jsp?opt=1">请点击进行Web方式的OAuth认证！</a>   
<%}%>