<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
<style type="text/css">
.jumbotron {
	border: 2px solid #b3b3b3;
	height: 100%;
	line-height: 18px;
	color: rgba(0, 0, 0, .84);
	font-size: 14px;
	font-weight: 400;
}

.logo-img {
	width: 50px;
	height: 50px;
	-moz-border-radius: 50%;
	-webkit-border-radius: 50%;
	border-radius: 50%;
	float: left;
}

.banckname {
	font-weight: 700;
	font-size: 25px;
}

.mybank_page {
	border-left: 3px solid #4dc3ff;
}

.mybank_page img {
	margin-right: 20px;
	margin-left: 10px;
}
</style>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div class="bg-light py-3">
		<div class="container">
			<div class="row">
				<a href="${path}/">Home</a> <span class="mx-2 mb-0">/</span> <strong
					class="text-black">계좌조회</strong>
			</div>
		</div>
	</div>
	<div class="container mt-5">
		<h1 class="coupontitle">계좌조회</h1>
		<a class="btn btn-info" style="float: right" href="${path}/account/append_account.do">계좌 추가</a>
		<c:forEach var="var" items="${list}">
					<a href="${path}/account/mypageaccountbankinfo.do?cno=${var.cno}">
			<div class="row mt-5">
				<div class="col-md-8">
						<div class="jumbotron" style="background-color: #fff;">
							<div class="mybank_page">
								<img src="${path}/img/bank_img/${var.account_bank}.png"
									class="logo-img"><span class="banckname">[${var.account_bank}]
									${var.account_number}</span>
									<c:if test="${var.primary_kard == 1}">
										<span style="float: right; color: red">주카드</span>
									</c:if>									
								<p class="bank_money mt-3">
								<fmt:formatNumber value="${var.account_money}" groupingUsed="true"/>원</p>
							</div>
						</div>
				</div>
			</div>
					</a>
		</c:forEach>
	</div>
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>