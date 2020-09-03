<%@ page contentType="text/html; charset=utf-8" import="java.sql.*"  %>
<%@ page import="java.io.PrintWriter"%>


<%@ page import="rain.CustControl, rain.Customer, rain.Korean"%>
<jsp:useBean id="custControl" class="rain.CustControl" scope="page"/>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="/6757-pro/Resources/assets_home/css/main.css" />
<title>학원홈페이지</title>

</head>



<script>
function Home(){
	f = document.home;
	f.method = "POST";
	f.action = "/6757-pro/user/index.jsp";
	f.submit();
}
</script>


<form name="vi">
<input type=hidden name="customer_no">
</form>




<body class="homepage is-preload">
	
		
<div align="right" style="margin-right:20px">

	<%
	
	     String cust_id = (String)session.getAttribute("cust_id");
		 if(cust_id == null || cust_id.equals("")){
		    out.println("<a href=\"login.jsp\">로그인</a>");
		    
		 %>
		 
		 &nbsp;&nbsp;&nbsp;<a href="../user/register.jsp?refresh=<%=System.currentTimeMillis()%>">회원가입</a>&nbsp;&nbsp;&nbsp;
			
		<% 
		
		
		 }
		 
		 
		 else{
			 
		    out.println(cust_id+"님 <a href=\"logout.jsp\">로그아웃</a>&nbsp;&nbsp;&nbsp;");
		    
		    %>
		    
		    <a href="/6757-pro/user/mypage.jsp?refresh=<%=System.currentTimeMillis()%>">내 정보 수정</a>
<a href="../user/cart_list.jsp?refresh=<%=System.currentTimeMillis()%>">장바구니</a>
<a href="../user/order_list.jsp?refresh=<%=System.currentTimeMillis()%>">구매확인</a>&nbsp;&nbsp;&nbsp;
<a href="../admin/index.jsp?refresh=<%=System.currentTimeMillis()%>">관리자</a>
		    
		    <% 
		    
		}
		 
		 
	%>
	
	

	</div>



<div align="center">
 <a href="/6757-pro/user/index.jsp?refresh=<%=System.currentTimeMillis()%>"><img src="/6757-pro/img/logoDesign.png" width="200px" height="230px" border=0></a>&nbsp;&nbsp;&nbsp;&nbsp;
  
</div>


	
	
	
	
		<div id="page-wrapper">



			<!-- Header -->
				<section id="header">
				
					<div class="container">


						<!-- Logo -->
							<h1 id="logo"><a href="index.jsp">Strongly Typed</a></h1>
							<p>A responsive HTML5 site template. Manufactured by HTML5 UP.<br>
							아름다운 템플릿입니다. 수강신청/상품구매 사이트.</p>
 
 
						<!-- Nav -->
							<nav id="nav">
								<ul>
									<li>
										<a class="icon solid fa-home"><span>수강신청</span></a>
										<ul>
											<li><a href="/6757-pro/user/classadd.jsp?refresh=<%=System.currentTimeMillis()%>">수강신청하기-검색</a></li>
											<li><a href="/6757-pro/user/order_list.jsp?refresh=<%=System.currentTimeMillis()%>">구매확인</a></li>
											<li><a href="/6757-pro/user/cart_list.jsp?refresh=<%=System.currentTimeMillis()%>">장바구니</a></li>
										</ul>
									</li>
									
									
									<!-- 반응형답게 커서 갖다대면 좌르륵 -->
									<li>
										<a href="../user/product_list.jsp" class="icon fa-chart-bar"><span>Product 상품</span></a>
										<ul>
											<li><a href="../user/product_list.jsp?refresh=<%=System.currentTimeMillis()%>">상품 목록</a></li>
											
											<!-- 4번째 서브메뉴인데 서서브메뉴가 하위에 위치해있다. -->
											<li>
												<a>주문하기</a>
												<ul>
													<li><a href="/6757-pro/user/cart_list.jsp">장바구니-주문 상태 변경</a></li>
													<li><a href="/6757-pro/user/order_list.jsp">주문 목록</a></li>
												</ul>
											</li>
										</ul>
									</li>
									<li><a class="icon solid fa-cog" href="../user/abc/main.jsp?refresh=<%=System.currentTimeMillis()%>"><span>강의평가</span></a></li>
									<li><a class="icon solid fa-retweet" href="/6757-pro/user/teacherInfo/teacherImfo.jsp?refresh=<%=System.currentTimeMillis()%>"><span>강사 연락처</span></a></li>
									<li><a class="icon solid fa-sitemap" href="/6757-pro/user/u_board/list.jsp?refresh=<%=System.currentTimeMillis()%>"><span>게시판가기</span></a></li>
								</ul>
							</nav>



					</div>
					
					
				</section>





			<!-- Features -->
				<section id="features">
					<div class="container">
						<header>
							<h2>Gentlemen, behold! This is <strong>Strongly Typed</strong>!</h2>
						</header>
						<div class="row aln-center">
							<div class="col-4 col-6-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="/6757-pro/Resources/assets_home/images/pic01.jpg" alt="" /></a>
										<header>
											<h3>Okay, so what is this?</h3>
										</header>
										<p>This is <strong>Strongly Typed</strong>, a free, fully responsive site template
										by <a href="http://html5up.net">HTML5 UP</a>. Free for personal and commercial use under the
										<a href="http://html5up.net/license">CCA 3.0 license</a>.</p>
									</section>

							</div>
							<div class="col-4 col-6-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="/6757-pro/Resources/assets_home/images/pic02.jpg" alt="" /></a>
										<header>
											<h3>Nice! What is HTML5 UP?</h3>
										</header>
										<p><a href="http://html5up.net">HTML5 UP</a> is a side project of <a href="http://twitter.com/ajlkn">AJ’s</a> (= me).
										I started it as a way to both test my responsive tools and sharpen up my coding
										and design skills a bit.</p>
									</section>

							</div>
							<div class="col-4 col-6-medium col-12-small">

								<!-- Feature -->
									<section>
										<a href="#" class="image featured"><img src="/6757-pro/Resources/assets_home/images/pic03.jpg" alt="" /></a>
										<header>
											<h3>What's this built with?</h3>
										</header>
										<p><strong>Responsive Tools</strong> is a simple set of tools for building responsive
										sites and apps. All of my templates at <a href="http://html5up.net">HTML5 UP</a> are built using these tools.</p>
									</section>

							</div>
							<div class="col-12">
								<ul class="actions">
									<li><a href="#" class="button icon solid fa-file">Tell Me More</a></li>
								</ul>
							</div>
						</div>
					</div>
				</section>



			<!-- Banner -->
				<section id="banner">
					<div class="container">
						<p>Use this space for <strong>profound thoughts</strong>.<br />
						Or an enormous ad. Whatever.</p>
						<img src="/6757-pro/img/container.png" width="1000px" height="500px">
					</div>
				</section>
				
				
				
				

			<!-- Main -->
				<section id="main">
					<div class="container">
						<div class="row">

							<!-- Content -->
								<div id="content" class="col-8 col-12-medium">

									<!-- Post -->
										<article class="box post">
											<header>
												<h2><a href="#">I don’t want to say <strong>it’s the aliens</strong> ...<br />
												but it’s the aliens.</a></h2>
											</header>
											<a href="#" class="image featured"><img src="/6757-pro/Resources/assets_home/images/pic04.jpg" alt="" /></a>
											<h3>I mean isn't it possible?</h3>
											<p>Phasellus laoreet massa id justo mattis pharetra. Fusce suscipit
											ligula vel quam viverra sit amet mollis tortor congue. Sed quis mauris
											sit amet magna accumsan tristique. Curabitur leo nibh, rutrum eu malesuada
											in, tristique at erat lorem ipsum dolor sit amet lorem ipsum sed consequat
											magna tempus veroeros lorem sed tempus aliquam lorem ipsum veroeros
											consequat magna tempus lorem ipsum consequat Phasellus laoreet massa id
											justo mattis pharetra. Fusce suscipit ligula vel quam viverra sit amet
											mollis tortor congue. Sed quis mauris sit amet magna accumsan tristique.
											Curabitur leo nibh, rutrum eu malesuada in tristique.</p>
											<ul class="actions">
												<li><a href="#" class="button icon solid fa-file">Continue Reading</a></li>
											</ul>
										</article>

									<!-- Post -->
										<article class="box post">
											<header>
												<h2><a href="#">By the way, many thanks to <strong>regularjane</strong>
												for these awesome demo photos</a></h2>
											</header>
											<a href="#" class="image featured"><img src="/6757-pro/Resources/assets_home/images/pic05.jpg" alt="" /></a>
											<h3>You should probably check out her work</h3>
											<p>Phasellus laoreet massa id justo mattis pharetra. Fusce suscipit
											ligula vel quam viverra sit amet mollis tortor congue. Sed quis mauris
											sit amet magna accumsan tristique. Curabitur leo nibh, rutrum eu malesuada
											in, tristique at erat lorem ipsum dolor sit amet lorem ipsum sed consequat
											consequat magna tempus lorem ipsum consequat Phasellus laoreet massa id
											in, tristique at erat lorem ipsum dolor sit amet lorem ipsum sed consequat
											magna tempus veroeros lorem sed tempus aliquam lorem ipsum veroeros
											consequat magna tempus lorem ipsum consequat Phasellus laoreet massa id
											justo mattis pharetra. Fusce suscipit ligula vel quam viverra sit amet
											mollis tortor congue. Sed quis mauris sit amet magna accumsan tristique.
											Curabitur leo nibh, rutrum malesuada.</p>
											<p>Erat lorem ipsum veroeros consequat magna tempus lorem ipsum consequat
											Phasellus laoreet massa id justo mattis pharetra. Fusce suscipit ligula
											vel quam viverra sit amet mollis tortor congue. Sed quis mauris sit amet
											magna accumsan tristique. Curabitur leo nibh, rutrum eu malesuada in,
											tristique at erat. Curabitur leo nibh, rutrum eu malesuada in, tristique
											at erat lorem ipsum dolor sit amet lorem ipsum sed consequat magna
											tempus veroeros lorem sed tempus aliquam lorem ipsum veroeros consequat
											magna tempus.</p>
											<ul class="actions">
												<li><a href="#" class="button icon solid fa-file">Continue Reading</a></li>
											</ul>
										</article>

								</div>




							<!-- Sidebar -->
								<div id="sidebar" class="col-4 col-12-medium">

									<!-- Excerpts -->
										<section>
											<ul class="divided">
												<li>

													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<span class="date">July 30</span>
																<h3><a href="#">Just another post</a></h3>
															</header>
															<p>Lorem ipsum dolor odio facilisis convallis. Etiam non nunc vel est
															suscipit convallis non id orci lorem ipsum sed magna consequat feugiat lorem dolore.</p>
														</article>

												</li>
												<li>

													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<span class="date">July 28</span>
																<h3><a href="#">And another post</a></h3>
															</header>
															<p>Lorem ipsum dolor odio facilisis convallis. Etiam non nunc vel est
															suscipit convallis non id orci lorem ipsum sed magna consequat feugiat lorem dolore.</p>
														</article>

												</li>
												<li>

													<!-- Excerpt -->
														<article class="box excerpt">
															<header>
																<span class="date">July 24</span>
																<h3><a href="#">One more post</a></h3>
															</header>
															<p>Lorem ipsum dolor odio facilisis convallis. Etiam non nunc vel est
															suscipit convallis non id orci lorem ipsum sed magna consequat feugiat lorem dolore.</p>
														</article>

												</li>
											</ul>
										</section>

									<!-- Highlights -->
										<section>
											<ul class="divided">
												<li>

													<!-- Highlight -->
														<article class="box highlight">
															<header>
																<h3><a href="#">Something of note</a></h3>
															</header>
															<a href="#" class="image left"><img src="/6757-pro/Resources/assets_home/images/pic06.jpg" alt="" /></a>
															<p>Phasellus sed laoreet massa id justo mattis pharetra. Fusce suscipit ligula vel quam
															viverra sit amet mollis tortor congue magna lorem ipsum dolor et quisque ut odio facilisis
															convallis. Etiam non nunc vel est suscipit convallis non id orci. Ut interdum tempus
															facilisis convallis. Etiam non nunc vel est suscipit convallis non id orci.</p>
															<ul class="actions">
																<li><a href="#" class="button icon solid fa-file">Learn More</a></li>
															</ul>
														</article>

												</li>
												<li>

													<!-- Highlight -->
														<article class="box highlight">
															<header>
																<h3><a href="#">Something of less note</a></h3>
															</header>
															<a href="#" class="image left"><img src="/6757-pro/Resources/assets_home/images/pic07.jpg" alt="" /></a>
															<p>Phasellus sed laoreet massa id justo mattis pharetra. Fusce suscipit ligula vel quam
															viverra sit amet mollis tortor congue magna lorem ipsum dolor et quisque ut odio facilisis
															convallis. Etiam non nunc vel est suscipit convallis non id orci. Ut interdum tempus
															facilisis convallis. Etiam non nunc vel est suscipit convallis non id orci.</p>
															<ul class="actions">
																<li><a href="#" class="button icon solid fa-file">Learn More</a></li>
															</ul>
														</article>

												</li>
											</ul>
										</section>

								</div>

						</div>
					</div>
				</section>

			<!-- Footer -->
				<section id="footer">
					<div class="container">
						<header>
							<h2>Questions or comments? <strong>Get in touch:</strong></h2>
						</header>
						<div class="row">
							<div class="col-6 col-12-medium">
								<section>
									<form method="post" action="#">
										<div class="row gtr-50">
											<div class="col-6 col-12-small">
												<input name="name" placeholder="Name" type="text" />
											</div>
											<div class="col-6 col-12-small">
												<input name="email" placeholder="Email" type="text" />
											</div>
											<div class="col-12">
												<textarea name="message" placeholder="Message"></textarea>
											</div>
											<div class="col-12">
												<a href="#" class="form-button-submit button icon solid fa-envelope">Send Message</a>
											</div>
										</div>
									</form>
								</section>
							</div>
							<div class="col-6 col-12-medium">
								<section>
									<p>Erat lorem ipsum veroeros consequat magna tempus lorem ipsum consequat Phaselamet
									mollis tortor congue. Sed quis mauris sit amet magna accumsan tristique. Curabitur
									leo nibh, rutrum eu malesuada.</p>
									<div class="row">
										<div class="col-6 col-12-small">
											<ul class="icons">
												<li class="icon solid fa-home">
													1234 Somewhere Road<br />
													Nashville, TN 00000<br />
													USA
												</li>
												<li class="icon solid fa-phone">
													(000) 000-0000
												</li>
												<li class="icon solid fa-envelope">
													<a href="#">info@untitled.tld</a>
												</li>
											</ul>
										</div>
										<div class="col-6 col-12-small">
											<ul class="icons">
												<li class="icon brands fa-twitter">
													<a href="#">@untitled</a>
												</li>
												<li class="icon brands fa-instagram">
													<a href="#">instagram.com/untitled</a>
												</li>
												<li class="icon brands fa-dribbble">
													<a href="#">dribbble.com/untitled</a>
												</li>
												<li class="icon brands fa-facebook-f">
													<a href="#">facebook.com/untitled</a>
												</li>
											</ul>
										</div>
									</div>
								</section>
							</div>
						</div>
					</div>
					<div id="copyright" class="container">
						<ul class="links">
							<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</div>
				</section>

		</div>

		<!-- Scripts -->
			<script src="/6757-pro/Resources/assets_home/js/jquery.min.js"></script>
			<script src="/6757-pro/Resources/assets_home/js/jquery.dropotron.min.js"></script>
			<script src="/6757-pro/Resources/assets_home/js/browser.min.js"></script>
			<script src="/6757-pro/Resources/assets_home/js/breakpoints.min.js"></script>
			<script src="/6757-pro/Resources/assets_home/js/util.js"></script>
			<script src="/6757-pro/Resources/assets_home/js/main.js"></script>

	</body>
	
	
	
 





  <footer class="bg-dark mt-4 p-5 text-center" style="color: #FFFFFF;">

      Copyright ⓒ 2018 나동빈 All Rights Reserved.

  
</footer>




<form name=view>
<input type=hidden name="cust_no">
</form>


    
    
</body>
</html>
