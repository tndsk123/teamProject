<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
<style type="text/css">
.jumbotron  div>p {
	margin-bottom: 0;
}
.account-title {
	color: #000;
	font-weight: 700;
	font-size: 25px;
}
.accountHelpmessage-Title {
	color: #000;
	font-weight: 400;
	font-size: 20px;
}
.account-certification {
	font-size: 15px;
	color: #808080;
}
.account-namecertification {
	font-size: 13px;
	color: #ff0000;
}
.first-name {
	font-weight: 400;
	font-size: 15;
	color: #000;
	margin-bottom: 5px;
}
.second-name {
	font-weight: 700;
	font-size: 20;
	color: #000;
}
.fa-fa-home {
	font-size: 60px;
	
}

.btn_ok {
	float: right;
	margin-top: 20px;
}
</style>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div class="bg-light py-3">
		<div class="container">
			<div class="row">
				<a href="${path}/">Home</a> <span class="mx-2 mb-0">/</span> <strong
					class="text-black">계좌등록</strong><span class="mx-2 mb-0">/</span> <strong
					class="text-black">등록완료</strong>
			</div>
		</div>
	</div>

	<div class="container mt-5">
			<span class="account-title">계좌등록</span>
			<div class="row">
				<div class="jumbotron mt-3"
					style="background-color: #f2f2f2; width: 800px;">
					<div>
						<p class="accountHelpmessage-Title">은행계좌인증 완료</p>
						<p class="account-certification">계좌인증을 완료했습니다. 이제 입출금이 가능합니다.</p>
						<p class="account-certification">자산 안전을 위해 입출금은 동일한 계좌만 사용
							가능합니다.</p>
						<p class="account-namecertification">타인의 계좌에서 이체하면 입금되지 않습니다 !
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="container mt-2">
			<div class="jumbotron mt-3"
				style="background-color: #f2ffe6; width: 500px;">
				<h1 class="fa-fa-home"><i class="fa fa-home" style="margin-bottom: 10px;"></i></h1>
				<div class="row">
					<div class="col first-name">예금주</div>
					<div class="col second-name">${dto.username}</div>
					<div class="w-100"></div>
					<div class="col first-name">은행명</div>
					<div class="col second-name">${dto.account_bank}은행</div>
				</div>
				<div class="row">
					<div class="col first-name">계좌번호</div>
					<div class="col second-name">${dto.account_number}</div>
					<div class="w-100"></div>
					<div class="col"><a href="${path}/account/my_account.do" class="btn_ok"><i class="fa fa-angle-right"></i> 확인하기</a></div>
				</div>
			</div>
		</div>
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>