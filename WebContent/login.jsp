<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
	<form action="login.jsp">
		username: <input type="text" name="username">
		password: <input type="password" name="password">
		<input type="button" value="cancel">
		<input type="submit" name="submitform" value="submit">
	</form>
	
	
</body>
<%

if (request.getParameter("submitform") != null) {
	String username = "abc";
	String password = "123";
	//out.println(request.getParameter("username") + request.getParameter("password"));
	
if (username.equals(request.getParameter("username")) && password.equals(request.getParameter("password"))) {
		//登录成功
		session.setAttribute("usersessionID",username);
		out.println("<script>window.location.href='index.jsp'</script>");
	} else {
		out.println("<Script>alert('密码错误')</script>");
	} 
}
	/*
	String username = request.getParameter("username");
	sql = "SELECT * FROM user WHERE name=" + "'" + username + "'";
	rs = stmt.executeQuery(sql);
	while (rs.next()) {
		if (request.getParameter("password").equals(rs.getString("pwd"))) {
			//密码正确
			session.setAttribute("usersessionID",rs.getString("id"));
			out.println("<script>window.location.href='mainpage.jsp'</script>");
			
		} else {
			out.println("<Script>alert('密码错误')</script>");
		}
	} 
	*/

%>
</html>
