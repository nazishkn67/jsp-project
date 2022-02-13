<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MAIN</title>
</head>


<body background="G:\Classroom1.jpg" bgcolor="red" > 
<form action="faclogin.jsp"  method="post" >

<marquee  ONMOUSEOVER="this.stop();" ONMOUSEOUT="this.start();"  scrollamount="20"  bgcolor="white"  >
	<H3> Virtual Class room </H3>
</MARQUEE>


 

<TABLE border=0 cellspacing=2 cellpadding=2 width="100%"> 
<TR> 
   <TD width="34%"> 
      <TABLE border=0 cellspacing=2 cellpadding=2 width="100%"> 
      <TR> 
         <TD>
	<marquee bgcolor="red"  style="position: relative;" behavior="scroll" " direction="up" scrollamount="8" scrolldelay="2" onmouseover="this.stop()" onmouseout="this.start()"width="350" height="200"><br>

	<img src="D:\New folder\3d_virtual_classroom.jpg" width=250 height=250  title="ad " style="position: relative;" border="0"><br>
	<img src="D:\New folder\education1.jpg" width=250 height=250  title="ad  " style="position: relative;" border="0"><br>
	<img src="D:\New folder\virtual.jpg" width=250 height=250  title="ad  " style="position: relative;" border="0"><br>
	<img src="D:\New folder\virtual_class_room.jpg" width=250 height=250  title="ad  " style="position: relative;" border="0"><br>

	</marquee> 
	</TD> 
      </TR> 
      </TABLE> 
   </TD> 
   <TD> 
	<table cellpadding=2 cellspacing=0 border=0> 
 
 	<tr>  <td bgcolor="red"><table cellpadding=0 cellspacing=0 border=1 width=100%>   <tr>   <td bgcolor="green" align=center style="padding:2;padding-bottom:4">   <b><font size=-1 color="white" face="verdana,arial"> LOG IN</font></b></tr> 
	<tr><td bgcolor="white" style="padding:5"><br> 
	      <TABLE border=0 cellspacing=5 cellpadding=2 width="60%" bgcolor="white"> 
	      <TR> 
	         <TD>
		<tr><td>   <font face="verdana,arial" size=-1> Login_Type:</font></td>   <td><select name="type"><option value="Faculty">Faculty</option></select></td></tr>
		<tr><td>   <font face="verdana,arial" size=-1> Login:</font></td>    <td><input type="text" name="login" value=""></td></tr>
		<tr><td>   <font face="verdana,arial" size=-1> Password:</font></td>   <td><input type="password" name="password1"></td></tr>
		<tr><td>    <font face="verdana,arial" size=-1>&nbsp;</font></td>    <td><font face="verdana,arial" size=-1><input type="submit" value="Enter"></font></td></tr>
		<tr><td colspan=2><font face="verdana,arial" size=-1>&nbsp;</font></td>    </tr>
		<tr><td colspan=2><font face="verdana,arial" size=-1>Lost your username or password? Find it <a href="G:\study\seminar\ppt\ppt_for_05].ppt">here</a>!</font></td></tr>
		<tr><td colspan=2><font face="verdana,arial" size=-1>Not member yet? Click     <button style="width:160;height:24; background-color:#97cfc3" onclick= " location.href='facsignup.jsp'" >here</button>    to register.</font></td></tr>

	  
     	</TABLE> 
  		 </TD> 
   		<TD>
		</table>
 
     
  	 </TD> 
	</TR> 
</TABLE> 
</TD>
</TR>
</TABLE>




<%

String str1=request.getParameter("login");
String str2=request.getParameter("password1");
if(str1!=null && str2!= null)
{
	int flag=0;

	try{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection c= DriverManager.getConnection("jdbc:odbc:akb", "root", "root");
		Statement s= c.createStatement();
		out.println("user="+str1+" and pass= "+str2);
		String sql="select user from faculty where user='"+str1+"' and pass='"+str2+"'";
			ResultSet rs= s.executeQuery(sql);
			if(rs.next())
				flag=1;
			else
				flag=0;
			
			if(flag==1)
			{
					session.setAttribute("fuser",str1);
					%>
					<jsp:forward page="fac_profile.jsp" />
					<%
			}
			else
					out.println("UserName/Password Not Valid");	
		rs.close();
		s.close();
		c.close();
		}catch(Exception e) {  out.println(e);}
}

 




%>
</form>
</body>
</html>
