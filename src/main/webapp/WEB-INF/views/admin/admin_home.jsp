<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.admin_title {
	font-size: 30px;
	color: #000;
	font-weight: 700;
}

.RegistAccountCompleteBox_container {
	border-radius: 27px;
	box-shadow: 0 5px 20px 0 rgba(0, 0, 0, .1);
	background-color: #fff;
	padding: 32px 24px 40px;
	max-width: 343px;
}

.wz.button.primary {
	background-color: #00c4c4;
	color: #fff;
}

.wz.button.block, .wz.button.fluid {
	width: 100%;
	text-align: center;
}

.wz.button[href] {
	margin-top: 80px;
	line-height: 46px;
}

.wz.button {
	transition-property: background-color, border-color, color, opacity;
	transition-duration: .2s;
	border: 1px solid rgba(0, 0, 0, .15);
	border-radius: 3px;
	background-color: #fff;
	cursor: pointer;
	padding: 0 1.41176em;
	height: 48px;
	vertical-align: middle;
	line-height: 1;
	color: rgba(0, 0, 0, .54);
	font-size: 17px;
	font-weight: 400;
	box-sizing: border-box !important;
	-webkit-appearance: none;
	display: inline-block;
	padding-top: .07em;
	text-decoration: none;
}
</style>
<%@ include file="../include/header.jsp"%>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div class="bg-light py-3">
		<div class="container">
			<div class="row">
				<a href="${path}/">Home</a> <span class="mx-2 mb-0">/</span> <strong
					class="text-black">관리자</strong>
			</div>
		</div>
	</div>
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-sm-12 company_name_container">
				<span class="admin_title">관리자 페이지</span>
			</div>
		</div>
	</div>
	<div class="container mt-5 mb-5">
		<div class="row">
		  <div class="col-md-4 mt-5">
			<div class="RegistAccountCompleteBox_container">
				<div class="RegistAccountCompleteBox_title">
					<h3>회원들의</h3>
					<h3>투자상품 관리</h3>
					<a href="#" class="wz button block primary">투자상품 관리</a>
				</div>
			</div>
		</div>
		  <div class="col-md-4 mt-5">
			<div class="RegistAccountCompleteBox_container">
				<div class="RegistAccountCompleteBox_title">
					<h3>회원들의</h3>
					<h3>게시판 관리</h3>
					<a href="#" class="wz button block primary">게시판 관리</a>
				</div>
			</div>
		</div>
		<div class="col-md-4 mt-5">
			<div class="RegistAccountCompleteBox_container">
				<div class="RegistAccountCompleteBox_title">
					<h3>회원들의</h3>
					<h3>회원관리 하기</h3>
					<a href="#" class="wz button block primary">회원관리 하기</a>
				</div>
			</div>
		</div>
		<div class="col-md-4 mt-5">
			<div class="RegistAccountCompleteBox_container">
				<div class="RegistAccountCompleteBox_title">
					<h3>회원들의</h3>
					<h3>회사관리 하기</h3>
					<a href="#" class="wz button block primary">회사관리 하기</a>
				</div>
			</div>
		</div>
		<div class="col-md-4 mt-5">
			<div class="RegistAccountCompleteBox_container">
				<div class="RegistAccountCompleteBox_title">
					<h3>회원들의</h3>
					<h3>쿠폰관리 하기</h3>
					<a href="#" class="wz button block primary">쿠폰관리 하기</a>
				</div>
			</div>
		</div>
	</div>
 </div>


	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>