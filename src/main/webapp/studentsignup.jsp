<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>student</title>
</head>
<body background="G:\Classroom1.jpg" bgcolor="red" > 

<form action="studentsignup.jsp"  method="post" >

<table  width="960" border="0" cellpadding="0" cellspacing="4" bgcolor="black">
<tr>
 <td>
 <center><img src="D:\New folder\Web Page Header.gif" width="1150" height="100" ></center>
</td>
</tr>
<tr>
<td align="left" style="word-spacing:6px;font-size:120%;padding-right:30px;color:#888888;white-space:nowrap;">
<a href="student.jsp" title="student">Student </a>  | 
<a href="studentsignup.jsp" title="studensignupt">Student req </a>  | 
<a href="faculty.jsp" title="faculty"> Faculty </a>  | 
<a href="facultysignup.jsp" title="faculty signup requests">Faculty req </a>  | 
<a href="pptup.jsp" title="faculty"> PPT(upload) </a>  | 
<a href="pptdel.jsp" title="faculty"> PPT(del) </a>  |
<a href="videoup.jsp" title="faculty"> Video(up) </a>  |
<a href="videodel.jsp" title="faculty"> Video(del) </a>  |
<a href="que1.jsp" title="faculty"> Question </a>  |
<a href="ans1.jsp" title="faculty"> Ans </a>  |
<td>   <a href="main.jsp" title="faculty"> Logout </a>  
 
</td></tr>
</table>
<br>
<br>
 <b>User Name   :  </b><input type="text" value="" name="user"> &emsp; &emsp; <input type="submit" value="DELETE"   >
<br>
<br>
<table  width="960" border="0" cellpadding="0" cellspacing="4" border=2 background="G:\Classroom1.jpg">
<tr>
 <td>

 <%
	try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection c= DriverManager.getConnection("jdbc:odbc:akb", "root", "root");
		Statement s= c.createStatement();
		String sql="select * from studentsignup ";
			ResultSet rs= s.executeQuery(sql);
%>
<tr><td><b>USERNAME</b><td><b>PASSWORD</b><td><b>NAME</b><td><b>PHONE NO</b><td><b>YEAR</b><td><b>BRANCH</b> 
<%			
			while( rs.next() )
			{
%>
				<tr><td>
<%					
					out.println(rs.getString(1));
%>
<td>
<%					
		     		out.println(rs.getString(2));
%>
<td>
<%					
		
					out.println(rs.getString(3));
%>
<td>
<%					

					out.println(rs.getString(4));
%>
<td>
<%					
		
					out.println(rs.getString(5));
%>
<td>
<%					

					out.println(rs.getString(6));
					
					
			}	
		rs.close();
		
		String user=request.getParameter("user");
		String sql1;
		if(user!=null)
		{	
			sql1="select * from studentsignup where user='"+user+"' ";
			ResultSet rs1= s.executeQuery(sql1);
			rs1.next();
			out.println("user :  "+user);
			sql1="insert into student values('"+rs1.getString(1)+"','"+rs1.getString(2)+"','"+rs1.getString(3)+"','"+rs1.getString(4)+"','"+rs1.getString(5)+"','"+rs1.getString(6)+"' )"; 
			s.execute(sql1);
		
			sql="delete from studentsignup where user='"+user+"'";
			s.execute(sql);
			rs1.close();
		}
			
		
		s.close();
		c.close();
		}catch(Exception e) {  out.println(e);}
%>
</td>
</tr>
</table> 

</form>

</body>
</html>
