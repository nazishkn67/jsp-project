<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update</title>
</head>

<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>
<body background="G:\Classroom1.jpg" bgcolor="red" > 
<form  action="update.jsp" method="post" >
<table  width="960" border="0" cellpadding="0" cellspacing="4" bgcolor="grey">
<tr>
 <td>
 <center><img src="D:\New folder\Web Page Header.gif" width="960"height="100" ></center>
</td>
</tr>
<tr>
<td align="left" style="word-spacing:6px;font-size:120%;padding-right:30px;color:#888888;white-space:nowrap;">
<a href="profile.jsp" title="Home">Home </a>  | 
<a href="update.jsp" title="update"> Edit Profile </a>  | 
<a href="study.jsp" title="study">Study material</a>  | 
<a href="videos.jsp" title="video">Video Lectures</a>  | 
<a href="question.jsp" title="ask">Ask doubts</a>  | 
<a href="ans.jsp" title="tell">Answers</a>

</td>

<td align="right" style="word-spacing:6px;font-size:120%;padding-right:10px;color:#888888;white-space:nowrap;">
|<a href="main.jsp" title="tell">Logout</a>
</td>
</tr>
</table>



<%
String name=request.getParameter("name");
String username=request.getParameter("username");
String pas=request.getParameter("pass");

String branch=request.getParameter("branch");
String year=request.getParameter("year");
String phno=request.getParameter("ph_no");
out.println("branch = "+branch+" and year = "+year);
String user =(String)session.getAttribute("user");
try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection c= DriverManager.getConnection("jdbc:odbc:akb", "root", "root");
		Statement s= c.createStatement();
		String sql="select * from student where user='"+user+"'";
		ResultSet rs= s.executeQuery(sql);
		rs.next();
		

%>


<center><table cellpadding=2 cellspacing=0 border=0>


<tr>  <td bgcolor="red"><table cellpadding=0 cellspacing=0 border=1 width=100%>   <tr>   <td bgcolor="green" align=center style="padding:2;padding-bottom:4">   <b><font size=-1 color="white" face="verdana,arial"> Edit Profile</font></b></tr>
<tr><td bgcolor="white" style="padding:5"><br>
<TABLE border=0 cellspacing=2 cellpadding=2 width="100%"> 

<tr>  <td bgcolor="red"><table cellpadding=0 cellspacing=0 border=1 width=100%>   <tr>   <td bgcolor="green" align=center style="padding:2;padding-bottom:4">   <b><font size=-1 color="white" face="verdana,arial"> Profile picture</font></b><td bgcolor="green" align=center style="padding:2;padding-bottom:4"> <b><font size=-1 color="white" face="verdana,arial">Personal info</font></b>

<TR> 
   <TD width="50%"> 
      <TABLE  cellspacing=2 cellpadding=2 width="100%"> 
      <TR> 
         <TD>
	<center><img src="G:\Classroom1.jpg" width=150 height=150  ></center>
	<center>
	<div class="mybutton">
		<a href="main.html">
		<button style="width:160;height:24; background-color:#97cfc3">change picture 
		</button></a><br>
	</div>
	</center>
	</TD> 
      </TR> 
      </TABLE> 
   </TD> 
   <TD> 
	<center><table>
	<tr><td>  <font face="verdana,arial" size=-1>  Name:</font></td>  <td>  <input type="text" name="name" value="<% out.println(rs.getString(3)); %>">  </td>  </tr>
	
	<tr><td>  <font face="verdana,arial" size=-1>   User_name:</font></td>  <td>   <input type="text" name="username" value="<% out.println(rs.getString(1)); %>">  </td>  </tr>
	
	<tr><td>  <font face="verdana,arial" size=-1>   Password:</font></td>  <td>   <input type="text" name="pass" value="<% out.println(rs.getString(2)); %>">  </td>  </tr>
	

	<tr><td>   <font face="verdana,arial" size=-1> Branch:</font></td>   <td><select name="branch">
									<option value="it">IT</option> 
									<option value="mech">MECH</option>
									<option value="comp">Comp</option>
									<option value="entc">Entc</option>
									</select></td></tr>
		
	<tr><td>   <font face="verdana,arial" size=-1> Year:</font></td>   <td><select name="year">
									<option value="fe">FE</option> 
									<option value="se">SE</option>
									<option value="te">TE</option>
									<option value="be">BE</option>
									</select></td></tr>
		
	<tr><td>  <font face="verdana,arial" size=-1>   Contact No..:</font></td>  <td>   <input type="text" name="ph_no" value="<% out.println(rs.getString(4)); %>">  </td>  </tr>
	
	<tr><td><font face="verdana,arial" size=-1>&nbsp;</font></td><td><font face="verdana,arial" size=-1><input type="submit" value="Update"   ></font>	
	</table></center>
</table>
</td>
<%		

String sql1="update student set user='"+username+"',pass='"+pas+"',name='"+name+"',ph_no='"+phno+"',year='"+year+"',branch='"+branch+"' where user='"+user+"'"; 

s.execute(sql1);
	%>
		<jsp:forward page="profile.jsp" />
	<%

    
		
			s.close();
		c.close();
	}
	catch(Exception e) {  }


 %>

</table>
</table>

</td>
</tr>
</table>
</center>

</form>


</body>
</html>
