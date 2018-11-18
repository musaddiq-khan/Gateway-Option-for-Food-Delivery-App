<!DOCTYPE html>
<html lang="en">
<head>
	<title>Swiggy</title>
	<meta charset="utf-8">
	

	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">

    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/carouFredSel.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
	
</head>
<body>

	

	<!--  start hero  -->
	<section class="hero">
		<div class="caption">
			<h3>Swiggy</h3>
			<h4>
				<span class="rsep"></span>
				Home Page
				<span class="lsep"></span>
			</h4>
			
		</div>
	</section><!--  end hero  -->


	<!--  start menu  -->
	<form method="post" action="bill.jsp">
	<section class="menu">
		<div class="wrapper">
			<div class="menu_title">
				<h2>The Menu</h2>
				<h3> Frozen Bottle </h3>
				
				<% 
				Object x = session.getAttribute( "theName" ) ;
				out.print("<h5>Hello "+x+"</h5>");
				%>
				<input type="hidden" value="<%= session.getAttribute( "theName" ) %>" name="putdb"/>
			</div>
			
			<div class="mean_menu">
				<!--  left menu row  -->
				<article class="lmenu">
					<ul>
						<li>
						
						
						
								<div class="item_info">
								
									<h3 class="item_name"> Kesar Badam Milkshake (300 ml)</h3>
									
									<p class="item_desc">Retro Classic</p>
									</br>
									<input type="radio" name="foodType" value="Kesar Badam Milkshake (300 ml)" checked>
									
								<hr />
								</div>
								
								<h4 class="price" > - Rs 161</h4>
								
								
								
								
								
							
							</li>
						
							<li>
							
								<div class="item_info">
								
									<h3 class="item_name">Nutty Chocolate Milkshake (300 ml)</h3>
									
									<p class="item_desc">Chocolate Indulgence</p>
									
			
									<br/>
								<input type="radio" name="foodType" value="Nutty Chocolate Milkshake (300 ml)" >
								<hr/>
								</div>
								<h4 class="price"> - Rs 171</h4>
								
								
							
						
						</li>
						<li>
							<div class="item_info">
								<h3 class="item_name">Red Velvet Milkshake (300 ml)</h3>
								<p class="item_desc">Modern Twist</p>
								
								<br/>
							<input type="radio" name="foodType" value="Red Velvet Milkshake (300 ml)" >
							<hr/>
							</div>
							<h4 class="price"> - Rs 181</h4>
							
							
						</li>
						<li>
							<div class="item_info">
								<h3 class="item_name">Bubble Gum Milkshake (300 ml)</h3>
								<p class="item_desc">Kiddie Special</p>
								<br/>
							<input type="radio" name="foodType" value="Bubble Gum Milkshake (300 ml)" >
							<hr/>
							</div>
							<h4 class="price"> - Rs 165</h4>
							
							
						</li>
					</ul>
				</article>

				<!--  right menu row  -->
				
				
				
				<article class="rmenu">
					<ul>
						<li>
							<div class="item_info">
								<h3 class="item_name">Banana Caramel Milkshake (300 ml)</h3>
								<p class="item_desc">Fruit Medley</p>
								<br/>
							<input type="radio" name="foodType" value="Banana Caramel Milkshake (300 ml)" >
							<hr/>
							</div>
							<h4 class="price"> - Rs 190</h4>
							
							
						</li>
						<li>
							<div class="item_info">
								<h3 class="item_name">Red Riding Hood</h3>
								<p class="item_desc">Ice cream Jars</p>
								
								<br/>
							<input type="radio" name="foodType" value="Red Riding Hood" >
							<hr/>
							</div>
							<h4 class="price"> - Rs 120</h4>
							
							
						</li>
						<li>
							<div class="item_info">
								<h3 class="item_name">Kitkat Oreo Milkshake (300 ml)</h3>
								<p class="item_desc">Kiddie Special</p>
								<br/>
								<input type="radio" name="foodType" value="Kitkat Oreo Milkshake (300 ml)" >
							<hr/>
							</div>
							<h4 class="price"> - Rs 110</h4>
							
							
						</li>
						<li>
							<div class="item_info">
								<h3 class="item_name">Ferrero Rocher Milkshake (500 ml)</h3>
								<p class="item_desc">Chocolate Indulgence</p>
								<br/>
								<input type="radio" name="foodType" value="Ferrero Rocher Milkshake (500 ml)" >
							<hr/>
							</div>
							<h4 class="price"> - Rs 210</h4>
							
							
						
						</li>
					
					</ul>
					
				</article>
				
			</div>
	<center> <input type="submit" value="Order"> </center>
						</form>	
    <script src='../ga.js'></script>

</body>
</html>