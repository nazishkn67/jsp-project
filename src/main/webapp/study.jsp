<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>study material</title>
</head>
<body background="G:\Classroom1.jpg" bgcolor="red" > 
<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>
<form action="study.jsp" method="post" >
<%
String branch =(String)session.getAttribute("branch");
String year =(String)session.getAttribute("year");
try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection c1= DriverManager.getConnection("jdbc:odbc:akb", "root", "root");
		Statement s1= c1.createStatement();
		out.println("branch= "+branch+" and year= "+year); 
		String sql="select subject from subject where branch='"+branch+"' and year='"+year+"' ";
		String temp=null;
		ResultSet rs= s1.executeQuery(sql);
		
		rs.next();
		temp=rs.getString(1);

%>
  
<table  width="960" border="0" cellpadding="0" cellspacing="4" bgcolor="black">
<tr>
 <td>
 <center><img src="D:\New folder\Web Page Header.gif" width="960"height="100" ></center>
</td>
</tr>
<tr>
<td align="left" style="word-spacing:6px;font-size:120%;padding-right:30px;color:#888888;white-space:nowrap;">
<a href="sub1.jsp" title="<% out.println(temp); %>"><% out.println(temp); %> </a>  | 
<%	rs.next();
temp=rs.getString(1);
%>
<a href="sub2.jsp" title="<% out.println(temp); %>"><% out.println(temp); %> </a>  | 
<%	rs.next();
temp=rs.getString(1);
%>
<a href="sub3.jsp" title="<% out.println(temp); %>"><% out.println(temp); %> </a>  | 
<%	rs.next(); 
temp=rs.getString(1);
%>
<a href="sub4.jsp" title="<% out.println(temp); %>"><% out.println(temp); %> </a>  | 
<%	rs.next(); 
temp=rs.getString(1);
%>
<a href="sub5.jsp" title="<% out.println(temp); %>"><% out.println(temp); %> </a>  | 
<%rs.close(); %>
<a href="profile.jsp" title="home">home</a>

</td>

<td align="right" style="word-spacing:6px;font-size:120%;padding-right:10px;color:#888888;white-space:nowrap;">
|<a href="main.jsp" title="tell">Logout</a>
</td>
</tr>
</table>

<%		
		

		s1.close();
		c1.close();
	}
	catch(Exception e) {out.println(e); }


 




%>

</form>
</body>
</html>
