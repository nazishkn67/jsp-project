<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
</head>
<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>
<body background="G:\Classroom1.jpg" bgcolor="red" > 

<form action="fac_profile.jsp"  method="post" >

<table  width="1150" border="0" cellpadding="0" cellspacing="4" bgcolor="black">
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
</form>
</body>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Video delete</title>
</head>
<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>
<body background="G:\Classroom1.jpg" bgcolor="red" > 

<form action="videodel.jsp"  method="post" >

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
 <b>Video Name   :  </b><input type="text" value="" name="ppt"> &emsp; &emsp; <input type="submit" value="DELETE"   >
<br>
<br>
<center><table  width="960" border="0" cellpadding="0" cellspacing="4" border=2 background="G:\Classroom1.jpg">
<tr>
 <td>

 <%
	try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection c= DriverManager.getConnection("jdbc:odbc:akb", "root", "root");
		Statement s= c.createStatement();
		String sql="select * from video ";
			ResultSet rs= s.executeQuery(sql);
%>
<tr><td><b>SUBJECT</b><td><b>Video</b> 
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

			}	
		rs.close();
		
		String ppt=request.getParameter("ppt");
		if(ppt!=null)
		{	sql="delete from video where video='"+ppt+"'";
			s.execute(sql);
		}
			
		
		s.close();
		c.close();
		}catch(Exception e) {  out.println(e);}
%>
</td>
</tr>
</table> </center>

</form>

</body>
</html>
