<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="bbs.BbsDAO"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="bbs" class="bbs.Bbs" scope="page" />
<jsp:setProperty name="bbs" property="bbsTitle" />
<jsp:setProperty name="bbs" property="bbsContent" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>원룸 커뮤니티 사이트</title>
</head>
<body>
	<%
		// 현재 세션 상태를 체크한다
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}	
		int userIdentity = 0;
		if(session.getAttribute("userIdentity") != null){
			userIdentity = (int) session.getAttribute("userIdentity");
		}	

	
		
		// 로그인을 한 사람만 글을 쓸 수 있도록 코드를 수정한다
		if(userID == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요')");
			script.println("location.href='login.jsp'");
			script.println("</script>");
		}
		else{
			//관리자인지 체크
			if(userIdentity == 2){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('관리자만 공지를 작성할 수 있습니다.')");
				script.println("location.href='bbs.jsp'");
				script.println("</script>");
			}
			else{ 
				// 입력이 안 된 부분이 있는지 체크한다
				if(bbs.getBbsTitle() == null || bbs.getBbsContent() == null){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('입력이 안 된 사항이 있습니다')");
					script.println("history.back()");
					script.println("</script>");
				}else{
					// 정상적으로 입력이 되었다면 글쓰기 로직을 수행한다
					BbsDAO bbsDAO = new BbsDAO();
					int result = bbsDAO.write(bbs.getBbsTitle(), userID, bbs.getBbsContent(), userIdentity);
					// 데이터베이스 오류인 경우
					if(result == -1){
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('글쓰기에 실패했습니다')");
						script.println("history.back()");
						script.println("</script>");
					// 글쓰기가 정상적으로 실행되면 알림창을 띄우고 게시판 메인으로 이동한다
					}else {
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('글쓰기 성공')");
						script.println("location.href='bbs.jsp'");
						script.println("</script>");
					}
				}
			}
		}
	
	%>
</body>
</html>