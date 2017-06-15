<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.kdn.model.domain.*"  %>
<%@ taglib prefix="c"    uri="http://java.sun.com/jsp/jstl/core"%> 
<jsp:useBean 	id="pageBean"         class="com.kdn.model.domain.PageBean" 
				scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	//조건 검색, 페이지 번호로 게시글 요청을 위한 메서드  
	function pagelist(cpage){
		//input 양식의 hidden으로 선언된 page에 요청된 페이지 정보 셋팅 
		document.getElementById("pageNo").value=cpage;
		var frm = document.getElementById("frm");
		frm.action="listBoard.do";
		frm.submit();
	}
	//게시글 번호나 타이틀을 클릭하면 해당 게시글 요청을 위한 메서드 
	function getBoard(no){
		//input 양식의 hidden으로 선언된 no(게시글 번호)에 요청된 게시글 번호를 셋팅
		document.getElementById("no").value = no;
		var frm = document.getElementById("frm");
		frm.action="searchBoard.do";
		frm.submit();
	}
</script>
<link rel="stylesheet" type="text/css" href="css/basic.css" />
</head>
<body>
	<div class="main">
		<form id="frm">
			<input type="hidden" id="pageNo" name="pageNo" value="1" /> <input
				type="hidden" id="no" name="no" />
			<table align="center">
				<tr>
					<th colspan="3">게시글 목록</th>
				</tr>
				<tr align="center">
					<td colspan="3" height="100" align="center"><select name="key"
						id="key">
							<option value="all">-----all-----</option>
							<option value="id" <%=pageBean.getKey("id")%>>아이디</option>
							<option value="title" <%=pageBean.getKey("title")%>>제목</option>
							<option value="contents" <%=pageBean.getKey("contents")%>>내용</option>
					</select> <input type="text" id="word" name="word" value="${pageBean.word}" />
						<a href="#" onclick="pagelist(1)">검색</a> &nbsp;&nbsp;&nbsp; <a
						href="insertBoardForm.do">글쓰기</a></td>
				</tr>
				<tr align="center">
					<td width="100">번호</td>
					<td width="200">제목</td>
					<td width="100">게시일</td>
					<c:forEach var="board" items="${list}">
						<tr>
							<td>${board.no}</td>
							<td><a href="#" onclick="getBoard(${board.no})">
									${board.title}</a></td>
							<td>${board.regdate}</td>
						</tr>
					</c:forEach>
				</tr>
			</table>
			<div class="bottom">
				<center>${pageBean.pagelink }</center>
			</div>
		</form>
	</div>
</body>
</html>



	









