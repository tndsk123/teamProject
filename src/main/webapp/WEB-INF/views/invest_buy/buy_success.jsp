<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
<style type="text/css">
.img_space {
	width: 150px;
}

.pay_success {
	margin-top: 28px;
	color: #000000;
}

.pay_success p {
	margin-bottom: 5px;
	font-size: 20px
}

.pay_success_info {
	margin-top: 28px;
	margin-left: 9px;
	color: #000000;
}

.if.button {
	transition-property: background-color, border-color, color, opacity;
	font-size: 17px;
	font-weight: 400;
	box-sizing: border-box !important;
	-webkit-appearance: none;
	display: inline-block;
	padding-top: .07em;
	text-decoration: none;
	cursor: pointer;
	padding: 0 1.41176em;
	height: 48px;
	vertical-align: middle;
	line-height: 1;
	transition-duration: .2s;
	border: 1px solid rgba(0, 0, 0, .15);
	border-radius: 3px;
}

.if.button.gray {
	background-color: #90949c;
	color: #fff;
}

.complete {
	margin-bottom: 50px;
}

.complete strong {
	color: #4da6ff;
}

.pay_success
.invest_history {
	font-size: 25px;
	color: #000;
}

.pay_success
.invest_history a {
	color: #4da6ff;
	font-weight: 700;
}

.invest_num {
	margin-top: 30px;
}

.complete_money {
	font-weight: 700;
}

.table span {
	font-weight: 700;	
}

.account_transfer {
	font-weight: 700px;
	font-size: 20px;
	margin-bottom: 20px;
}

.pay_content {
	margin-top: 100px;
	margin-bottom: 100px;
}
</style>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div class="bg-light py-3">
      <div class="container">
        <div class="row">
         	<div class="col-md-12 mb-0">
         	<a href="${path}/">Home</a> <span class="mx-2 mb-0">/</span>
         	<a href="${path}/fund/invest_detail/${list.bno}">세부프로젝트</a> <span class="mx-2 mb-0">/</span>
         	<strong class="text-black">투자완료</strong>
         	</div>
        </div>
      </div>
  </div>
	<div class="container mt-5">
		<div class="row justify-content-center">
			<h3 class="complete">
				<strong>${dto.userid}님</strong>의 투자가 완료 되었습니다.
			</h3>
		</div>
			<br>
		<div class="row justify-content-center">
			<div class="col-sm-2">
				<div class="img_space">
					<img src="${path}/images/profile.png" class="rounded-circle"
						alt="Cinque Terre">
				</div>
			</div>
			<div class="col-sm-6">
				<div class="pay_success">
					<form>
						<p class="invest_history">
							투자내역을 <a href="#">투자조회</a>를 통하여 확인 가능합니다.
						</p>
						<div class="invest_num">
							<p>투자프로젝트 : ${dto.project_name}</p>					
							<p>투자일자 : ${dto.buy_date}</p>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div class="container pay_content">
		<div class="row justify-content-center">
			<h3 class="pay_info">결제 정보</h3>
		</div>
			<div class="pay_success_info">
				<table class="table table-bordered">
					<tr>
						<th>최종결제금액</th>
						<td class="complete_money">${dto.now_fund}</td>
					</tr>
					<tr>
						<th>결제 정보</th>
						<td>
							<p class="account_transfer">계좌 이체</p>
							<p>입금자명 : <span>${account.username}</span></p>
							<p>계좌번호 : <span>${account.account_bank} (${account.account_number})</span></p>
							<p>예금주명 : <span>${dto.company_name}</span></p>
						</td>
					</tr>
				</table>
				<div class="row justify-content-center">
					<button type="button" class="if button gray"
						style="margin-right: 15px;" onclick="location.href='${path}'">투자 계속하기</button>
					<button type="button" class="if button gray" onclick="location.href='${path}/user_fund/my_fund.do'">투자 확인하기</button>
				</div>
			</div>
	</div>
	
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>