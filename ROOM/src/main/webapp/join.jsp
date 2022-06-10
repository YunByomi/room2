<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", intial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">

<title>원룸 커뮤니티 사이트</title>
</head>
<body>
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
            <li><a href="main.jsp">MAIN</a></li>
            <li><a href="bbs.jsp">NOTICE</a></li>
            <li><a href="suggestions.jsp">SUGGESTIONS</a></li>
            <li><a href="share.jsp">SHARE</a></li>
         </ul>
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
      </div>
   </nav>
   <div class="container">   
      <div class="col-lg-4">
         <div class="jumbotron" style="padding-top: 20px;">
            <form method="post" action="joinAction.jsp">
               <h3 style="text-align: center;">SIGN UP</h3>
               <div class="form-group">
                  <input type="text" class="form-control" placeholder="id" name="userID" maxlength="20">
               </div>
               <div class="form-group">
                  <input type="password" class="form-control" placeholder="password" name="userPassword" maxlength="20">
               </div>
               <div class="form-group">
                  <input type="text" class="form-control" placeholder="name" name="userName" maxlength="20">
               </div>
               <div class="form-group" style="text-align: center;">
                  <div class="btn-group" data-toggle="buttons">
                     <label class="btn btn-primary active">
                        <input type="radio" name="userGender" autocomplete="off" value="남자" checked>man
                     </label>
                     <label class="btn btn-primary">
                        <input type="radio" name="userGender" autocomplete="off" value="여자" checked>woman
                     </label>
                  </div>
               </div>
               
               <div class="form-group">
                  <input type="text" class="form-control" placeholder="phoneNumber" name="userPhoneNumber" maxlength="20">
               </div>
               
               <div class="form-group" style="text-align: center;">
                  <div class="btn-group" data-toggle="buttons">
                     <label class="btn btn-primary active">
                        <input type="radio" name="userIdentity" autocomplete="off" value="2" checked>세입자
                     </label>
                     <label class="btn btn-primary">
                        <input type="radio" name="userIdentity" autocomplete="off" value="1" checked>관리자
                     </label>
                  </div>
               </div>
               
		       <div class="form-group">
                 <input type="text" class="form-control" placeholder="address" name="userAddress" maxlength="20">
               </div>            

			  
</body>

                           
               <input type="submit" class="btn btn-primary form-control" style="background-color: black;" value="SIGN UP">
            </form>
         </div>
      </div>   
   </div>
   <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="js/bootstrap.js"></script>
   

</body>
</html>