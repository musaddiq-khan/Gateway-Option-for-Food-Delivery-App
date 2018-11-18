<body>
<h2 align="center"> Validating User Name and Password </h2>




<%
  String str1=request.getParameter("usn");
  String str2=request.getParameter("pwd");
  if((str1.equals("junaid") && str2.equals("junaid12")) || (str1.equals("madhav") && str2.equals("madhav12")) || (str1.equals("musaddiq") && str2.equals("musa12")))
  {
	  
	String name = request.getParameter( "usn" );
	session.setAttribute( "theName", name );

	response.sendRedirect("index.jsp");
	
  }
  else
  {

	
	response.sendRedirect("paytm_login.jsp");
	out.print("invalid");
  }
  %>
%>
 
</body>