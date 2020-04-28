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
.bank-certification {
	font-size: 20px;
	color: #808080;
	font-weight: 700;
}
label {
	font-size: 17px;
	color: #000000;
}
.bank-ok {
	margin-top: 30px;
	margin-bottom: 30px;
}	
.custom-checkbox {
	margin-top: 10px;
}

.bank_container {
	margin-top: 70px;
}
</style>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div class="bg-light py-3">
		<div class="container">
			<div class="row">
				<a href="${path}/">Home</a> <span class="mx-2 mb-0">/</span> <strong
					class="text-black">계좌등록</strong>
			</div>
		</div>
	</div>
	<div class="container mt-5">
			<span class="account-title">계좌등록</span>
			<div class="row">
				<div class="jumbotron mt-3"
					style="background-color: #f2f2f2; width: 800px;">
					<div>
						<p class="accountHelpmessage-Title">은행계좌인증이 먼저 필요합니다.</p>
						<p class="account-certification">은행계좌인증 전에는 입출금이 제한됩니다.</p>
						<p class="account-certification">원활한 거래를 위해 은행계좌 인증을 실시하여
							주십시오.</p>
						<p class="account-namecertification">실명인증과 계좌인증은 필히 본인 정보를
							입력하셔야합니다.</p>
					</div>
				</div>
			</div>
		</div>
		<div class="container bank_container">
			<form method="post" action="${path}/account/insert_account.do" name="form1" id="form1">
				<span class="bank-certification">은행계좌 인증 </span>
					<div class="row justify-content-start mt-3">
						<div class="col-12 col-md-8 col-lg-8 col-xl-6">
							<div class="row">
								<div class="col mt-4">
									<label style="margin-bottom: 5px;">예금주</label><input type="text" class="form-control" id="username" name="username">
								</div>
							</div>
							<div class="row">
								<div class="col mt-4">
									<label style=" margin-bottom: 5px;">은행명</label><br> <select class="form-control" id="account_bank" name="account_bank">
										<option style="color: #e6e6e6;">은행명</option>
										<option>농협</option>
										<option>국민</option>
										<option>기업</option>
										<option>신한</option>
									</select>
								</div>
							</div>
							<div class="row">
								<div class="col mt-4">
									<label style="margin-bottom: 5px;">계좌번호</label><input type="text" class="form-control" id="account_number" name="account_number">
								</div>
							</div>
							<div class="row">
								<div class="col mt-4">
									<label style="margin-bottom: 5px;">계좌비밀번호</label><input type="password" class="form-control"  id="account_passwd" name="account_passwd">
								</div>
							</div>
							<div class="row">
								<div class="col mt-4">
									<label style="margin-bottom: 5px;">결제비밀번호</label><input type="password" class="form-control" class="buy_passwd" id="userid" name="buy_passwd">
										<div class="custom-control custom-checkbox">
											<input type="radio" id="primary_card" name="primary_card" class="custom-control-input" value="1">
											<label class="custom-control-label" for="primary_card">메인계좌여부</label>
										</div>
										<button class="bank-ok btn btn-primary">등록완료</button>
								</div>
							</div>
						</div>
					</div>
			</form>
		</div>
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>