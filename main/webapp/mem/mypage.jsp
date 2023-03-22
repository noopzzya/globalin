<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<link href="mypage.css" rel="stylesheet" type="text/css">

</head>
<body>
	<div class="mypage">

		<div class="mp_left">
			<div class="left-header">마이페이지</div>
			<ul>
				<li>
					<a class="active mp-a">
						찜리스트
						<span class="mp_span">></span>
					</a>
				</li>

				<li>
					<a class="mp-a" href="modifyForm.jsp">
						정보수정
						<span class="mp_span">></span>
					</a>
				</li>

				<li>
					<a class="mp-a" href="deleteForm.jsp">
						회원탈퇴
						<span class="mp_span">></span>
					</a>
				</li>
			</ul>

			<a class="left-a" href="#">
				<div class="left-bottom">
					<span>도움이 필요하신가요 ?</span>
					<span class="left-s">문의하기</span>				
				</div>
			</a>
		</div>

		<div class="mp_right">
			<div class="right-header">
				<h2>찜리스트</h2>
			</div>

			<div class="r-border"></div>

			<!-- 찜리스트 -->
			<div class="mp-box">

				<div class="box-h">
					<span>제목:관광지어쩌구저쩌구</span>
				</div>
				<div class="box-li">
					<div class="li-top">
						<img class="li-img" src="https://youimg1.tripcdn.com/target/100v1f000001h1du4B7C4_C_900_600.jpg_.webp?proc=source%2ftrip">
							
						<div class="li-content">
							<span>여행지 평점</span>
							<dl>
								<dt>비용</dt>
								<dd>1605267952640</dd>
							</dl>
							<dl>
								<dt>경치</dt>
								<dd>신용카드</dd>
							</dl>
							<dl>
								<dt>재미</dt>
								<dd>13,000원</dd>
							</dl>
							<br>
							<span>여행지 태그</span>
							<dl>
								<dt>재미</dt>
								<dd>13,000원</dd>
							</dl>
						</div>						
					</div>
					<div class="box-wish">
						<button class="wish-btn" type="button" height="36" radius="3">
							<span>찜</span>
						</button>
					</div>					
				</div>
				
			</div>
			
		</div>

	</div>
</body>
</html>