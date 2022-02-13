<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>profile</title>
</head>
<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>
<body background="G:\Classroom1.jpg" bgcolor="red" > 


<form action="main.jsp"  method="post" >

<table  width="960" border="0" cellpadding="0" cellspacing="4" bgcolor="grey">
<tr>
 <td>
 <center><img src="D:\New folder\Web Page Header.gif" width="960"height="100" ></center>
</td>
</tr>
<tr>
<td align="left" style="word-spacing:6px;font-size:120%;padding-right:30px;color:#888888;white-space:nowrap;">
<a href="studlogin.jsp" title="student">Student login </a>  | 
<a href="faclogin.jsp" title="faculty"> Faculty login </a>  | 
 

</td></tr>
</table>


<table>
	<tr><td>
	<tr><td>Admin Login
	<tr><td><input type="password" value="" name="pass" >
	<tr><td><input type="submit" value="Login" onclick="fu(this.form)" >
	</td></tr>	
</table>
<%

String pass1=request.getParameter("pass");
try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection c= DriverManager.getConnection("jdbc:odbc:akb", "root", "root");
	Statement s= c.createStatement();
 	String sql="select pass from admin";
	ResultSet rs= s.executeQuery(sql);
	rs.next();
	if( pass1.equalsIgnoreCase(rs.getString(1)) )
	{
		%>
		<jsp:forward page="admin.jsp"></jsp:forward>
		<%
	}
	rs.close();
	s.close();
	c.close();
	}
	catch(Exception e) {}
%>
</form>
</body>
</html>
