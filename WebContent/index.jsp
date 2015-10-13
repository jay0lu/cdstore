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
<link rel="stylesheet" type="text/css" href="css/cdstore.css">
<title>The CDStore</title>
</head>

<body>
        <div id="main">
            <div id="header">
                <div id="widgetBar">

                    <div class="headerWidget">
                        [ language toggle ]
                    </div>

                    <div class="headerWidget"></div>

                    <div class="headerWidget">
                        [ shopping cart widget ]
                    </div>

                </div>

                <a href="#">
                    <img src="#" id="logo" alt="CDStore logo">
                </a>

                <img src="#" id="logoText" alt="the cdstore">
            </div>

            <div id="indexLeftColumn">
                <div id="welcomeText">
                    <p>[ welcome text ]</p>
                </div>
            </div>

            <div id="indexRightColumn">
                <div class="categoryBox">
                    <a href="#">
                        <span class="categoryLabelText">pop</span>
                    </a>
                </div>
                <div class="categoryBox">
                    <a href="#">
                        <span class="categoryLabelText">rock</span>
                    </a>
                </div>
                <div class="categoryBox">
                    <a href="#">
                        <span class="categoryLabelText">classic</span>
                    </a>
                </div>
                <div class="categoryBox">
                    <a href="#">
                        <span class="categoryLabelText">R&B</span>
                    </a>
                </div>
            </div>

            <div id="footer">
                <hr>
                <p id="footerText">[ footer text ]</p>
            </div>
        </div>
    </body>
</html>