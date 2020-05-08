<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
<script type="text/javascript">
function my_calc(item, item_count, item_sum, account, after){
    if(item_count.value=="")    var count = 0; 
    else                        var count = item_count.value; 

    item_sum.value = eval(item.value) * eval(count);
    after.value = eval(account.value) - eval(item_sum.value); 
    document.getElementById("buy_unit").innerHTML="구매주수 : "+item_count.value;
    document.getElementById("fund_count").value=item_count.value;
    document.getElementById("buy_amount").innerHTML="총구매액 : "+item_sum.value+"원";
    document.getElementById("fund_now_fund").value=item_sum.value;
    
} 
function okay(item, item_count, item_sum, min_fund, max_fund, account, limit, approve, progress){
	var unit=eval(min_fund.value) / eval(item.value);
	var unit2=(eval(max_fund.value) - eval(progress.value)) / eval(item.value);
	var grade=$("#grade").val();
	var approve=approve.value;
	if(eval(item_count.value) * eval(item.value) < eval(min_fund.value)){
		alert("최소 구매 구좌는"+unit+"입니다.");
		return;
	}
	if(eval(item_count.value) * eval(item.value) > eval(limit.value)){
		alert(grade+"등급 한도는 "+limit.value+"원 미만입니다.");
		return;
	}	
	if(eval(item_count.value) * eval(item.value) > eval(account.value)){
		alert("계좌 금액이 부족합니다");
		return;
	}
	if(approve != 1){
		if(eval(item_sum.value)+eval(progress.value) > eval(max_fund.value)){
			Swal.fire({
				  icon: 'error',
				  title: '금액이 많아요',
				  text: '목표 투자액보다 금액이 많습니다.\n 최대 구매 구좌는'+unit2+'입니다.',
				})
			return;
		}
	}
}
$(function() {
	var money=$("#account_bank").val();
	var numSelect = document.getElementById("account_bank");
	var cno = numSelect.options[document.getElementById("account_bank").selectedIndex].getAttribute("name");
	document.getElementById("fund_account_bank").value=cno;
	document.getElementById("account").value=money;
	$("#btnBuy").click(function(){
		var now_fund = $("#now_fund").val();
		var account = $("#account").val();
		if(eval(now_fund) > eval(account)){
			Swal.fire("투자 금액이 계좌 금액보다 많습니다.");
			return;	
		}
		document.form1.action="${path}/board/buy_success/${list.bno}";
		document.form1.submit();
	});
		
});
</script>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div class="bg-light py-3">
      <div class="container">
        <div class="row">
         	<div class="col-md-12 mb-0"><a href="${path}/">Home</a> <span class="mx-2 mb-0">/</span> <a href="${path}/fund/invest_detail/${list.bno}">세부프로젝트</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">투자하기</strong></div>
        </div>
      </div>
  </div>
  <div class="site-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-12">
            <div class="border p-4 rounded" role="alert">
            	회원님의 등급은 <font style="color: red">${grade.division}</font> 이며
 							<font style="color: blue">${grade.grade_limit}원</font> 까지 투자 가능하십니다.
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 mb-5 mb-md-0">
           <form name="form1" method="post" action="">
            <h2 class="h3 mb-3 text-black">구매정보</h2>
            <div class="p-3 p-lg-5 border">
              <div class="form-group">
                <label for="title" class="text-black">프로젝트명</label>
                <input class="form-control" name="title" id="title" value="${list.title}" type="text" readonly>
              </div>
              <div class="form-group">
                <label for="company_name" class="text-black">기업명</label>
                <input type="text" class="form-control" id="company_name" name="company_name" value="${list.company_name}" readonly>
              </div>

              <div class="form-group row">
                <div class="col-md-12">
                  <label for="unit" class="text-black">주당가격<span class="text-danger">*</span></label>
                  <input type="text" class="form-control" id="unit" name="unit" value="${list.unit}">
                </div>
              </div>

              <div class="form-group row">
                <div class="col-md-12">
                  <label for="count" class="text-black">구매할 주수<span class="text-danger">*</span></label>
                  <input type="text" class="form-control" id="count" name="count" placeholder="구매할 주수 입력"
                  onkeyup="my_calc(this.form.unit, this.form.count, this.form.now_fund,this.form.account,this.form.after_buy)"
									onchange="okay(this.form.unit, this.form.count, this.form.now_fund, 
									this.form.min_fund, this.form.max_fund, this.form.account, this.form.grade_limit,
									this.form.limit, this.form.progress)">
									<input type="hidden" name="min_fund" id="min_fund" value="${list.min_fund}">
									<input type="hidden" name="max_fund" id="max_fund" value="${list.max_fund}">
									<input type="hidden" name="limit" id="limit" value="${list.limit}">
									<input type="hidden" name="progress" id="progress" value="${list.now_fund}">
									<input type="hidden" name="grade" id="grade" value="${user_info.grade}">
									<input type="hidden" name="grade_limit" id="grade_limit" value="${grade.grade_limit}">
                </div>
              </div>
              
							<div class="form-group row">
                <div class="col-md-12">
              		<label for="count" class="text-black">총 금액<span class="text-danger">*</span></label>
                	<input type="text" class="form-control" name="now_fund" id="now_fund" readonly>
                </div>
              </div>
              
              <div class="form-group row">
                <div class="col-md-12">
              		<label for="account_bank" class="text-black">결제 계좌 <span class="text-danger">*</span></label>
              		<select class="form-control" id="account_bank" name="account_bank"  onchange="get_account()">
										<c:forEach var="var" items="${user_account}">
                			<option value="${var.account_money}" name="${var.cno}">${var.account_bank}</option>
                		</c:forEach>               		
									</select>							
                </div>
              </div>
							
							<div class="form-group row">
                <div class="col-md-12">
              		<label for="account" class="text-black">계좌잔액<span class="text-danger">*</span></label>
                	<input type="text" class="form-control" name="account" id="account" 
                	value="" readonly>                	
                </div>
              </div>
              
              <div class="form-group row">
                <div class="col-md-12">
              		<label for="count" class="text-black">구매후 잔액<span class="text-danger">*</span></label>
                	<input type="text" class="form-control" name="after_buy" id="after_buy" readonly>
                </div>
              </div>
              <div class="form-group">
                <label for="c_create_account" class="text-black" data-toggle="collapse" href="#create_an_account" role="button" aria-expanded="false" aria-controls="create_an_account"><input type="checkbox" value="1" id="c_create_account">개인정보 이용 동의</label>
                <div class="collapse" id="create_an_account">
                  <div class="py-2">
                    <p class="mb-3">프로젝트 투자 시 회사 및 증권거래소의 개인정보가 이용될 수 있습니다.</p>
                  </div>
                </div>
              </div>
             </form>
            </div>
          </div>
          <div class="col-md-6">
            <div class="row mb-5">
              <div class="col-md-12">
                <h2 class="h3 mb-3 text-black">쿠폰 등록</h2>
                <div class="p-3 p-lg-5 border">
                  
                  <label for="c_code" class="text-black mb-3">쿠폰을 선택하세요</label>
                  <div class="input-group w-75">
                   <select class="form-control" id="coupon_check" name="coupon_check">
										<c:forEach var="var" items="${coupon}">
                			<option value="${var.discount}" name="${var.cou_no}">${var.coupon_name} 쿠폰</option>
                		</c:forEach>               		
									</select>		
                    <div class="input-group-append">
                      <button class="btn btn-primary btn-sm px-4" type="button" id="button-addon2" onclick="coupon_check()">Apply</button>
                    </div>
                  </div>
									<div id="coupon_discount"></div>
                </div>
              </div>
            </div>
            
            <div class="row mb-5">
              <div class="col-md-12">
                <h2 class="h3 mb-3 text-black">주문확인</h2>
                <div class="p-3 p-lg-5 border">

                  <div class="border p-3 mb-3">
                    <h3 class="h6 mb-0"><a class="d-block" data-toggle="collapse" href="#collapsebank" role="button" aria-expanded="false" aria-controls="collapsebank">프로젝트 정보</a></h3>

                    <div class="collapse" id="collapsebank">
                      <div class="py-2">
                        <p>프로젝트명 : ${list.project_name}</p>
                        <p>기업명 : ${list.company_name}</p>
                      </div>
                    </div>
                  </div>

                  <div class="border p-3 mb-3">
                    <h3 class="h6 mb-0"><a class="d-block" data-toggle="collapse" href="#collapsecheque" role="button" aria-expanded="false" aria-controls="collapsecheque">구매 정보</a></h3>

                    <div class="collapse" id="collapsecheque">
                      <div class="py-2">
                        <p>주당가격 : ${list.unit}</p>
                        <p id="buy_unit"></p>
                        <p id="buy_discount"></p>
                        <p id="buy_amount"></p>
                      </div>
                    </div>
                  </div>

                  <div class="border p-3 mb-5">
                    <h3 class="h6 mb-0"><a class="d-block" data-toggle="collapse" href="#collapsepaypal" role="button" aria-expanded="false" aria-controls="collapsepaypal">환급 정보</a></h3>

                    <div class="collapse" id="collapsepaypal">
                      <div class="py-2">
                        <p>이윤 : 연 ${list.margin}%</p>
                        <p>환급일자 : <fmt:formatDate value="${list.margin_date}" pattern="yyyy-MM-dd"/></p>
                      </div>
                    </div>
                  </div>

                  <div class="form-group">
                  	<form action="${path}/user_fund/buy.do" method="post" name="buy_fund_form">
                  	<input type="hidden" name="bno" value="${list.bno}">
                  	<input type="hidden" name="grade" value="${user_info.grade}">
                  	<input type="hidden" name="unit" value="${list.unit}">
                  	<input type="hidden" name="company_name" value="${list.company_name}">
                  	<input type="hidden" name="project_name" value="${list.project_name}">
                  	<input type="hidden" name="count" id="fund_count" value="">
                  	<input type="hidden" name="discount" id="discount" value="0">
                  	<input type="hidden" name="now_fund" id="fund_now_fund" value="">
                  	<input type="hidden" name="cno" id="fund_account_bank" value="">
                  	<input type="hidden" name="cou_no" id="cou_no" value="0">
                    <button type="submit" class="btn btn-primary btn-lg btn-block" id="btnBuy">Order</button>
                    </form>
                  </div>
									
                </div>
              </div>
            </div>

          </div>
        </div>
        <!-- </form> -->
      </div>
<script type="text/javascript">
function get_account(){
	var money=$("#account_bank").val();
	var numSelect = document.getElementById("account_bank");
	var cno = numSelect.options[document.getElementById("account_bank").selectedIndex].getAttribute("name");
	document.getElementById("fund_account_bank").value=cno;
	document.getElementById("account").value=money;
}
function coupon_check(){
	var money=$("#coupon_check").val();
	var now_fund=$("#now_fund").val();
	var total = eval(now_fund) - eval(money);
	var numSelect = document.getElementById("coupon_check");
	var cou_no = numSelect.options[document.getElementById("coupon_check").selectedIndex].getAttribute("name");
	document.getElementById("coupon_discount").innerHTML="할인금액 : "+money;
	document.getElementById("buy_discount").innerHTML="할인금액 : "+money+"원";
	document.getElementById("buy_amount").innerHTML="총구매액 : "+total+"원";
	document.getElementById("fund_now_fund").value=total;
	document.getElementById("discount").value=money;
	document.getElementById("cou_no").value=cou_no;
}
</script>

    
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>