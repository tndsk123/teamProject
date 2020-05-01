<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
<style type="text/css">
.invest_title {
	font-size: 35px;
	font-weight: 700;
	color: #000;
}

.my_invest {
	font-weight: 700;
	color: #ff0000;
	border-bottom: 2px solid #ff0000;
}

.my_invest:hover {
	color: #ff0000;
}

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

.invest_content {
	margin-top: 15px;
	margin-bottom: 15px;
}

img {
	height: 100px;
}

.wz.button.primary {
	background-color: #ff9900;
	color: #fff;
}

.wz.button.block, .wz.button.fluid {
	width: 100%;
	text-align: center;
}

.wz.button[href] {
	margin-top: 20px;
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
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div class="bg-light py-3">
		<div class="container">
			<div class="row">
				<a href="${path}/">Home</a> <span class="mx-2 mb-0">/</span> <strong
					class="text-black">나의 투자</strong>
			</div>
		</div>
	</div>
	<div class="container mb-5">
		<div class="row mt-5">
			<div class="col-md-4">
				<h1 class="invest_title">나의 투자</h1>
			</div>
		</div>
		<div class="row mt-5">
			<div class="col-md-4">
				<a href="#" class="my_invest">나의 투자</a>
			</div>
		</div>
		<div class="row">
		<c:forEach var="var" items="${dto}">
			<div class="col-md-4 mt-5">
				<div class="RegistAccountCompleteBox_container">
					<div class="RegistAccountCompleteBox_title">
						<div>
							<h3>${var.userid}님이</h3>
							<h3>투자하신 프로젝트</h3>
						</div>
						<div class="invest_content">
							<p>${var.project_name}</p>
						</div>
						<div>
							<p>기업명 : ${var.company_name}</p>
							<p>구매액 : ${var.now_fund}</p>
						</div>
						<a href="#" class="wz button block primary">투자상품 보기</a>
					</div>
				</div>
			</div>
		</c:forEach>
		</div>
	</div>
	
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>