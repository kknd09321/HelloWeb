<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
    
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>세미프로젝트 v1 - login</title>
<style>
/* 전체 영역에 적용하는 스타일시트 */
#container { width: 950px; margin: 0  auto; }

/* header에 적용하는 스타일시트 */
nav ul { list-style-type: none; 
         padding-bottom: 15px }
nav ul li { float: left; margin-left: 100px }
hr { clear:both; }

/* main에 적용하는 스타일시트 */
#main { min-height: 500px }

/* footer에 대한 스타일시트 */
footer p { text-align: center }

/* 링크에 대한 스타일시트 */
a { font-weight: bold }
a:link { text-decoration: none; color: black } 
a:visited { text-decoration: none; color: black }
a:hover { text-decoration: underline; color: orange }
</style>

<style>
/* 로그인 입력폼에 대한 스타일시트 */
#login { /*border:thin solid red;*/
		width: 300px; margin: 0 auto; }
#login div { margin-bottom: 10px }
#login label { width: 120px; 
  			  display: inline-block;
  			  text-align: right;
  			  font-weight: bold }
button[type='button'] { margin-left: 125px }  			   		
</style>

</head>
<body>

<div id="container">
	<header>
		<h1>세미 프로젝트 v1</h1><!-- 타이틀 -->
		<nav>
			<ul class="nav">
			<li><a href='index.jsp'>Home</a></li>
			<li><a href='join.jsp'>회원가입</a></li>
			<li><a href='login.jsp'>로그인</a></li>
			<li><a href='list.jsp'>게시판</a></li>
			<li><a href='member.jsp'>회원정보</a></li>
			</ul>
		</nav><!-- 상단 메뉴 -->
		<hr><!-- 구분선 -->
	</header>
	<div id='main'>
		<h2>로그인</h2>
		<form name='login' id='login'>
		<div><label for='uid'>아이디</label>
		<input type='text' name='uid' id='uid'></div>
		<div><label for='pwd'>비밀번호</label>
		<input type='password' name='pwd' id='pwd'></div>
		<div><button type="button" id='logbtn'>로그인</button></div>
		</form>
	</div>
	<footer>
		<hr> <!-- 구분선 -->
		<p>copyright (c) 2019. abc company.
		All Rights Reserved.</p><!-- 저작권표시 -->
	</footer>
</div>

<script>
	var logbtn = document.getElementById('logbtn');
	logbtn.addEventListener('click', checkloginfrm);
	
	function checkloginfrm() {
		var uid = document.getElementById('uid');
		var pwd = document.getElementById('pwd');
		
		if (uid.value == '') {
			alert('아이디 입력하세요!');
			uid.focus();
		} else if (pwd.value == '') {
			alert('비밀번호 입력하세요!');
			pwd.focus();
		} else {
			var frm = document.getElementById('login');
			frm.method = 'post';
			frm.action = 'loginok.jsp';
			frm.submit();
		}
	}
</script>

</body>
</html>

