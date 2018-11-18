<%@ page import="pckdb.Mydb" %>
<%@ page import="java.sql.*" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>


<jsp:useBean id="fo" class="food.foodJava" />
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Bill</title>
  
  
  
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>

  
<html>
	<head>
		<meta charset="utf-8">
		<title>Transaction</title>
		<link rel="stylesheet" href="style.css">
		<link rel="license" href="https://www.opensource.org/licenses/mit-license/">
		<script src="script.js"></script>
	</head>
	<body>
	<% 
	String food = request.getParameter("foodType");
	String usn = request.getParameter("putdb");
   
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:paytm","","");
	Statement st=con.createStatement();
	 int a=fo.foodComp(food);
	 
	 
	  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
  String dat = sdf.format(new Date());
   %>
  
   
   
		<header>
			<h1>Transaction</h1>
			<address >
				<p>Paytm</p>
				<p>101 <br>Orange, CA 92866</p>
				<p>(800) 555-1234</p>
			</address>
			<span><img alt="" src="paytm.jpg"></span>
		</header>
		<article>
		
			<h1>Recipient</h1>
			<address >
			<div>Paytm Balance
			<hr/>
			<%
					
					ResultSet rs = st.executeQuery("select balan from userDB where username= '"+usn+"'");
					if(rs.next())
					{
					  %>
					  
					  
					<p><%= rs.getString("balan") %> </p>
					<%
					}
					%>
			</div>
			</address>
			<table class="meta">
				<tr>
				<%
					
					ResultSet rs1 = st.executeQuery("select ID from userDB where username= '"+usn+"'");
					if(rs1.next())
					{
					  %>
					  
					 <th>ID</th>
					<td><%= rs1.getString("ID") %></td>
					<%
					}
					%>
					
					
				</tr>
				<tr>
				
		 
					<th> Username </th>
					
					<td> <%= usn %></td>
					
					
				</tr>
				<tr>
				
		 
					<th> Date</th>
					
					<td> <%= dat %></td>
					
					
				</tr>
				
				
				
			</table>
			<table class="inventory">
				<thead>
					<tr>
						<th> Item</th>
						
						<th> Quantity</th>
						<th> Price</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						
						<td> <%=food%></td>
						
						<td>1</td>
						<td><%=a%></td>
					</tr>
				</tbody>
			</table>
			
			<table class="balance">
				
				<tr>
					<th> Amount to be Paid</th>
					<td> <%=a%></td>
				</tr>
				<tr>
					<th> GST</th>
					<td>0%</td>
				</tr>
				
				<tr>
					<th> Total</th>
					<td> <%=a%></td>
					<input type="text"/>
				</tr>
				
				
			</table>
			
		</article>
		<aside>
			
			<div>
				
			</div>
		</aside>
			
			
		
		
	</body>
</html>
  
  

    <script  src="js/index.js"></script>




</body>

</html>
