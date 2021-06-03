<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	input {
		font-family: inherit;
	}
	
	.check-id {
		display: inline-block;
	}
	.radio-left{
		margin-right: 30px;
	}
	
	.select-gender{
		margin: 20px 0 20px 0;
	}
	select {
		width: 259px;
		padding: 1px 1px;
		font-family: inherit;
		-webkit-appearance: none;
		-moz-appearance: none;
		appearance: none;
		background: url(../../images/icons/arrow_bottom.png) no-repeat 100% 50%;
		font-size: 15px;
		font-weight: 500;
		color: #aaaaaa;
		margin: 0;
		border: 0;
	}
	
	select:focus {
		color: 0 0 1px 3px #ff5f06;
	}
	
	.loc-age {
		display: inline-block;
		margin-top: 15px;
		margin-bottom: 60px;
	}
	
	.select-loc {
		margin-right: 18px;
		border-bottom: 1px solid #000;
	}
	
	.select-age {
		border-bottom: 1px solid #000;
	}

</style>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	function chk-password() {
		if(frm.password.value != frm.confirmPassword.value) {
			alert("비밀번호를 재확인 해주세요")
			frm.password.focus();
			frm.password.value = "";
			return false;  //return false는 실패라는 뜻 그럼 onsubmit에 false되니까 action 실행 안함
		}
	}
</script>
</head>
<body>
	<form action="joinResult.na" method="post" name="frm" onsubmit="return chk-password()" >
		<div class="container">
			<h1 class="title">회원가입하기</h1>
			<!-- input -->
			<div class="check-id">
				<input type="email" name="id" required="required" autofocus="autofocus" placeholder="아이디(이메일)"> <a href="">이메일 인증</a>
			</div>
			<input type="password" name="password" placeholder="비밀번호"> 
			<input type="password" name="confirmPassword" placeholder="비밀번호 확인" required="required"> 
			<input type="text" name="name" placeholder="이름" required="required"> 
			<input type="text" name="nick_nm" placeholder="별명" required="required"> 
			<input type="tel" name="phone" placeholder="연락처" required="required">
			<div class= "select-gender">
				<input class="magic-radio" type="radio" name="gender" id="mal" checked="checked">
				<label for="mal" class="radio-left">남자</label>
				<input class="magic-radio" type="radio" name="gender" id="fem">
				<label for="fem">여자</label>
			</div>

			<div class="loc-age">
				<select class="select-loc" name="loc" required="required">
					<option value="">지역</option>
					<option value="Seoul">서울</option>
					<option value="Sejong">세종</option>
					<option value="Gwangju">광주</option>
					<option value="Daegu">대구</option>
					<option value="Daejeon">대전</option>
					<option value="Busan">부산</option>
					<option value="Ulsan">울산</option>
					<option value="Incheon">인천</option>
					<option value="Gangwon">강원</option>
					<option value="Gyeonggi">경기</option>
					<option value="Gyeongbuk">경북</option>
					<option value="Gyeongnam">경남</option>
					<option value="Jeonbuk">전북</option>
					<option value="Jeonnam">전남</option>
					<option value="Chungbuk">충북</option>
					<option value="Chungnam">충남</option>
					<option value="Jeju">제주</option>
				</select> 
				<select class="select-age" name="age" required="required">
					<option value="">나이</option>
					<option value="10">10대</option>
					<option value="20">20대</option>
					<option value="30">30대</option>
					<option value="40">40대</option>
					<option value="50">50대</option>
					<option value="60">60대 이상</option>
				</select>
			</div>

			<!-- button -->
			<input type="submit" class="btn" value="회원가입">
		</div>
	</form>
</body>
</html>