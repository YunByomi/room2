<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width", intial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>haroom-원룸 커뮤니티 사이트</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}	
		int userIdentity = 0;
		if(session.getAttribute("userIdentity") != null){
			userIdentity = (int) session.getAttribute("userIdentity");
		}	
	%>

	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">원룸 커뮤니티 사이트</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">MAIN</a></li>
				<li><a href="bbs.jsp">NOTICE</a></li>
				<li><a href="suggestions.jsp">SUGGESTIONS</a></li>
				<li><a href="share.jsp">SHARE</a></li>
			</ul>
			
			<%
				if(userID == null){	
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"							
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">CONNECT<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">LOGIN</a></li>
						<li><a href="join.jsp">SIGN UP</a></li>
					</ul>
				</li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"							
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">MANAGE<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">LOGOUT</a></li>
					</ul>
				</li>
			</ul>
			<%		
				}
			%>	
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1>haroom</h1>
				<p>'하룸'은 원룸 세입자와 관리자를 위한 원룸 커뮤니티 사이트 입니다.</P> 
				<p>게시판을 통해 정보를 공유하고 간편하게 알림을 공지하며 편리하게 소통해보세요!</p>
				<p>- NOTICE(공지사항 게시판)</P>
				<p>- SUGGESTIONS(건의사항 게시판)</P>
				<p>- SHARE(공유 게시판)</P>
			</div>
		</div>
	</div>
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="images/1.jpg">
				</div>	
				<div class="item">
					<img src="images/2.jpg">
				</div>
				<div class="item">
					<img src="images/3.jpg">
				</div>
			</div>
			<a class="Left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>