<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
<style type="text/css">
img{
	height: 200px;
}
.banktitle {
	margin-bottom: 30px;
	font-weight: 700px;
	color: #000;
}

.bank_contents p{
	font-size: 18px;
	color: #000000;
}

.bank_contents p > strong{
	font-size: 16px;
	color: #000000;
}

button {
	border: none;
	background: #fff;
	color: #66b3ff;
}

p {
	margin-bottom: 4px;
}

.btn_ok_close {
	margin-top: 15px;
}

.btn_ok_close button {
	width: 100px;
}
</style>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div class="bg-light py-3">
		<div class="container">
			<div class="row">
				<a href="${path}/">Home</a> <span class="mx-2 mb-0">/</span>
				<strong class="text-black">계좌정보</strong>
			</div>
		</div>
	</div>
	<div class="container mt-5 mb-5">
	<h3 class="banktitle">계좌정보</h3>
	<div class="row justify-content-start">
		<div class="col-sm-4">
			<img alt="" src="${path}/img/bank_img/${list.account_bank}.png">
		</div>
		<div class="col-sm-8 bank_contents">
			<p>계좌번호 : <strong>${list.account_number}</strong></p>
			<p>잔액 : <strong> <fmt:formatNumber value="${list.account_money}" groupingUsed="true"/>원</strong>  
			<button type="button" class="" data-toggle="modal" data-target="#myModal">충전</button>
			</p>
			<p>계좌비밀번호 : <input type="password" name="account_passwd" id="account_passwd">
			<button type="button" class="" data-toggle="modal" data-target="#myModal2">수정</button>
			</p>
			<p>결제비밀번호 : <input type="password" name="buy_passwd" id="buy_passwd">
			<button type="button" class="" data-toggle="modal" data-target="#myModal3">수정</button>
			</p>
			<div class="btn_ok_close">
				<button type="button" class="btn btn-info" style="margin-right: 30px;">확인</button><button type="button" class="btn btn-danger">취소</button>
			</div>
		</div>
	</div>
</div>
	<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">계좌충전</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<div class="container">
							<div class="row">
								<div class="col mt-4">
									<label style="margin-bottom: 5px;">충전액</label><input type="text" class="form-control" id="account_number" name="account">
								</div>
							</div>
							<div class="row">
								<div class="col mt-4">
									<label style="margin-bottom: 5px;">계좌비밀번호</label><input type="password" class="form-control" id="account_number" name="account_passwd">
								</div>
							</div>
							<div class="row">
								<div class="col mt-4">
									<label style="margin-bottom: 5px;">결제비밀번호</label><input type="password" class="form-control" id="account_number" name="buy_passwd">
								</div>
							</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-info">충전</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
	</div>
		<div class="modal fade" id="myModal2" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">결제비밀번호수정</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<div class="container">
							<div class="row">
								<div class="col mt-4">
									<label style="margin-bottom: 5px;">현재비밀번호</label><input type="password" class="form-control" id="account_number" name="buy_passwd">
								</div>
							</div>
							<div class="row">
								<div class="col mt-4">
									<label style="margin-bottom: 5px;">변경비밀번호</label><input type="password" class="form-control" id="account_number" name="buy_passwd">
								</div>
							</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-info">변경</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
	</div>
			<div class="modal fade" id="myModal3" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title">계좌비밀번호수정</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<div class="container">
							<div class="row">
								<div class="col mt-4">
									<label style="margin-bottom: 5px;">현재비밀번호</label><input type="password" class="form-control" id="account_number" name="account_passwd">
								</div>
							</div>
							<div class="row">
								<div class="col mt-4">
									<label style="margin-bottom: 5px;">변경비밀번호</label><input type="password" class="form-control" id="account_number" name="account_passwd">
								</div>
							</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-info">변경</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
	</div>
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>