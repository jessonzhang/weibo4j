<%@ page contentType="text/html;charset=utf-8" %>
<%@ page language="java" import="weibo4j.http.*" %>
<%@ page language="java" import="weibo4j.*" %>
<%@ page language="java" import="weibo4j.model.WeiboException"%>

<%
	String code=request.getParameter("code");
	
	if(code!=null){
		System.out.println("code:"+code);
		Oauth oauth=(Oauth) session.getAttribute("oauth");
		if(oauth!=null){
			//getAccessTokenByCode方法每次只能调用一次，如果重复调用会返回400错误，调用该方法可以会抛出WeiboException异常
			try{
				AccessToken accessToken=oauth.getAccessTokenByCode(code);
				if(accessToken!=null){
					System.out.println("打印已经授权的AccessToken信息@(︶︿︶)@："+accessToken);
					//这个accessToken不用每次访问都重新取，可以存到session里面用
                	session.setAttribute("accessToken",accessToken);
                	System.out.println("5秒后转到重定向到@(︶︿︶)@:writeWeibo.jsp");
                	Thread.sleep(5000); 
                	response.sendRedirect("http://localhost:8080/weibo4j/writeWeibo.jsp#content"); 
				}else{
					out.println("access token request error");
				}
		
			}catch (WeiboException e) {
				if(401 == e.getStatusCode()){
					System.err.println("Unable to get the access token.");
				}else{
					e.printStackTrace();
				}
			}catch(Exception e){ 
                e.printStackTrace(); 
            }
		}else{
			out.println("oauth session error");
		}
	}else{
		out.println("code String error");
	}

%>   