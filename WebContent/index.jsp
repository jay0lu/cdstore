<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ page import="java.sql.*"%>
<%@ page import="com.cdstore.*"%>
<%
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Statement myStmt = DBDriver.connectDb();	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CD Store Main page</title>
<style>
h1 {
	text-align: center;
}

table, th, td {
	font-size: 10px;
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
}
</style>
</head>
<body>
	<h1>Welcome to CD Store</h1>

	<table>
		<tr>
			<th colspan="3">CD List</th>
		</tr>
		<tr>
			<th>Title</th>
			<th>Price</th>
			<th>Category</th>
		</tr>
		<%
		ResultSet cdRs = myStmt.executeQuery("select * from cd");
			while (cdRs.next()) {
				out.println("<tr>");
				out.println("<td>" + cdRs.getString("title") + "</td>");
				out.println("<td>" + cdRs.getInt("price") + "</td>");
				out.println("<td>" + cdRs.getString("category") + "</td>");
				out.println("</tr>");
			}
			cdRs.close();
		%>
	</table>
	<br></br>

	<table>
		<tr>
			<th colspan="5">Address</th>
		</tr>
		<tr>
			<th>Street</th>
			<th>Province</th>
			<th>Country</th>
			<th>Zip</th>
			<th>Phone</th>
		</tr>
		<%
		ResultSet addressRs = myStmt.executeQuery("select * from address");
			while (addressRs.next()) {
				out.println("<tr>");
				out.println("<td>" + addressRs.getString("street") + "</td>");
				out.println("<td>" + addressRs.getString("province") + "</td>");
				out.println("<td>" + addressRs.getString("country") + "</td>");
				out.println("<td>" + addressRs.getString("zip") + "</td>");
				out.println("<td>" + addressRs.getString("phone") + "</td>");
				out.println("</tr>");
			}
			addressRs.close();
		%>
	</table>
	<br></br>

	<table>
		<tr>
			<th colspan="4">PO</th>
		</tr>
		<tr>
			<th>Last Name</th>
			<th>First Name</th>
			<th>Status</th>
			<th>Address</th>
		</tr>
		<%
		ResultSet poRs = myStmt.executeQuery("select * from po");
			while (poRs.next()) {
				out.println("<tr>");
				out.println("<td>" + poRs.getString("lname") + "</td>");
				out.println("<td>" + poRs.getString("fname") + "</td>");
				out.println("<td>" + poRs.getString("status") + "</td>");
				out.println("<td>" + poRs.getInt("address") + "</td>");
				out.println("</tr>");
			}
			poRs.close();
		%>
	</table>
	<br></br>

	<table>
		<tr>
			<th colspan="2">CD</th>
		</tr>
		<tr>
			<th>CD ID</th>
			<th>Price</th>
		</tr>
		<%
		ResultSet poItemRs = myStmt.executeQuery("select * from poitem");
			while (poItemRs.next()) {
				out.println("<tr>");
				out.println("<td>" + poItemRs.getString("cdid") + "</td>");
				out.println("<td>" + poItemRs.getString("price") + "</td>");
				out.println("</tr>");
			}
			poItemRs.close();
		%>
	</table>
	<br></br>

	<table>
		<tr>
			<th colspan="3">Event</th>
		</tr>
		<tr>
			<th>Day</th>
			<th>CD ID</th>
			<th>Event Type</th>
		</tr>
		<%
		ResultSet visitEventRs = myStmt.executeQuery("select * from visitEvent"); 
			while (visitEventRs.next()) {
				out.println("<tr>");
				out.println("<td>" + visitEventRs.getString("day") + "</td>");
				out.println("<td>" + visitEventRs.getString("cdid") + "</td>");
				out.println("<td>" + visitEventRs.getString("eventtype") + "</td>");
				out.println("</tr>");
			}
			visitEventRs.close();
		%>
	</table>

</body>
</html>