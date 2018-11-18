
<html>
<body style="Background-color:#CCC0FF">


<center> 
<% 
   String food = request.getParameter("foodType");
   String usn = request.getParameter("putdb");
   
   out.print("Username : "+usn);
   
  
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  Connection con=DriverManager.getConnection("jdbc:odbc:paytm","","");
  Statement st=con.createStatement();
  
 
  ResultSet rs = st.executeQuery("select balance from userDB where username= '"+usn+"'");
  if(rs.next())
  {
	  %>
	  
  <tr><td>Total Balance: </td><td><input type="text" value="<%=rs.getString("balance")%>"/> </td></tr>
 <%
  }
  
   
   out.print("<h3> Your order : </h3>");
   out.println ("<b>"+food+"<b>");
   
   
   out.print("<h3> Price : </h3>");
   int a=fo.foodComp(food);
   
   out.print(a);
   
  
   
	%>	
%>


</html>