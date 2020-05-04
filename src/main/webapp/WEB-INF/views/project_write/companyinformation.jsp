<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<style type="text/css">
.company_name_container {
	margin-bottom: 10px;
}
.company_name {
	font-size: 25px;
	color: #000;
	font-weight: 700;
}
.company_helpmessage {
	font-size: 15px;
	color: #737373;
	font-weight: 400;
	font-size: 15px;
}
.company_message>p {
	margin-bottom: 0;
}
label {
	color: #000;
	margin-bottom: 4px;
}
.bank-ok {
	width: 380px;
	margin-top: 100px;
	margin-bottom: 50px;
}
.filebox label, button { display: inline-block; padding: .5em .75em; color: #999; font-size: inherit; line-height: normal; vertical-align: middle; background-color: #fdfdfd; cursor: pointer; border: 1px solid #ebebeb; border-bottom-color: #e2e2e2; border-radius: .25em; }
.filebox input[type="file"] { /* 파일 필드 숨기기 */ position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px; overflow: hidden; clip:rect(0,0,0,0); border: 0; }
</style>
<script type="text/javascript">
var img_file;
$(document).ready(function() {
	$("#input_img").on("change", handleImgFileSelect);
});
function handleImgFileSelect(e) {
	var files= e.target.files;
	var filesArr = Array.prototype.slice.call(files);
	filesArr.forEach(function(f) {
		if(!f.type.match("image.*")){
			alert("확장자는 이미지 확장자만 가능합니다.");
			return;
		}
		sel_file = f;
		
		var reader = new FileReader();
		reader.onload = function(e) {
			$("#img").attr("src", e.target.result);
		}
		reader.readAsDataURL(f);
	});
}
function daumZipCode() {
	 new daum.Postcode({
	     oncomplete: function(data) {
	// 팝업에서 검색결과 항목을 클릭했을때 
	//실행할 코드를 작성하는 부분.

	         // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 
	//이를 참고하여 분기 한다.
	         var fullAddr = ''; // 최종 주소 변수
	         var extraAddr = ''; // 조합형 주소 변수

	         // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 
	         //가져온다.
	// 사용자가 도로명 주소를 선택했을 경우         
	         if (data.userSelectedType === 'R') { 
	             fullAddr = data.roadAddress;

	         } else { // 사용자가 지번 주소를 선택했을 경우(J)
	             fullAddr = data.jibunAddress;
	         }
	      // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
	         if(data.userSelectedType === 'R'){
	             //법정동명이 있을 경우 추가한다.
	             if(data.bname !== ''){
	                 extraAddr += data.bname;
	             }
	// 건물명이 있을 경우 추가한다.
	             if(data.buildingName !== ''){
	                 extraAddr += (extraAddr !== '' ? ', ' 
	+ data.buildingName : data.buildingName);
	             }
	// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
	             fullAddr += (extraAddr !== '' ? 
	            		 ' ('+ extraAddr +')' : '');
	         }

	         // 우편번호와 주소 정보를 해당 필드에 넣는다.
	         document.getElementById('user_address').value 
	         	= data.zonecode; //5자리 새우편번호 사용
	         document.getElementById('user_detailaddress').value 
	         	= fullAddr;

	         // 커서를 상세주소 필드로 이동한다.
	         document.getElementById('address3').focus();
	     }
	 }).open();
}
</script>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
<form method="post" action="${path}/fund/append_company.do" name="form1">
	<div class="bg-light py-3">
		<div class="container">
			<div class="row">
				<a href="${path}/">Home</a> <span class="mx-2 mb-0">/</span> 프로젝트 준비
				<span class="mx-2 mb-0">/</span> <strong class="text-black">기업 정보</strong>
			</div>
		</div>
	</div>
	<div>
	   <!-- enctype="multipart/form-data" -->
		<div class="container mt-5">
			<div class="row justify-content-center">
				<div class="col-sm-12 company_name_container">
					<span class="company_name">기업 정보 입력</span>
				</div>
				<div class="col-sm-12">
					<p class="company_helpmessage">투자 유치를 신청하려는 기업의 정보를 간단하게 먼저
						입력하시면 투자 유치를 신청할 수 있는 투자 메이커 스튜디오로 이동합니다.</p>
				</div>
			</div>
			
				<div>
					<div class="row justify-content-start">
						<div class="col-12 col-md-8 col-lg-8 col-xl-6">
							<div class="row">
								<div class="col mt-4">
									<label>기업명</label>
									<input type="text" class="form-control"
										id="company_name" name="company_name" placeholder="기업명 입력"> 
								</div>
							</div>
							<div class="row">
								<div class="col mt-4">
									<label>사업자 구분</label> <select
										class="form-control" name="c_division" id="c_division">
										<option style="color: #e6e6e6;">사업자 구분 선택</option>
										<option value="사업자">법인 사업자</option>
										<option value="개인/개인 사업자">개인/개인 사업자</option>
										<option value="기타">기타</option>
									</select>
								</div>
							</div>
							<div class="row">
								<div class="col mt-4">
									<label>사업자 등록 번호</label>
									<input type="text" class="form-control"
										id="company_num" name="company_num" placeholder="사업자등록번호 입력"> 
								</div>
							</div>
							<div class="row">
								<div class="col mt-4">
									<label>기업 대표</label>
									<input type="text" class="form-control"
										id="ceo" name="ceo" placeholder="기업대표 입력"> 
								</div>
							</div>
							<div class="row">
								<div class="col mt-4">
									<label>법인설립연월일</label>
									<input type="text" class="form-control"
										id="found_date" name="found_date" placeholder="예)2020-04-24">
								</div>
							</div>
							<div class="row">
								<div class="col mt-4">
									<label>업종</label> <input
										type="text" class="form-control" id="sectors" name="sectors"
										placeholder="업종 입력">
								</div>
							</div>
							<div class="row">
								<div class="col mt-4">
									<label>기업가치</label> <input
										type="text" class="form-control" id="c_value" name="c_value"
										placeholder="숫자만 입력">
								</div>
							</div>
							<div class="row">
								<div class="col mt-4">
									<label>기업소갯말</label> <textarea
										class="form-control" id="greeting" name="greeting"
										></textarea>
								</div>
							</div>
						</div>
					</div>
				</div>
			
		</div>
		<div class="container" style="margin-top: 150px;">
			<div class="row justify-content-center">
				<div class="col-sm-12 company_name_container">
					<span class="company_name">세부 사항</span>
				</div>
				<div class="col-sm-12 company_message">
					<p class="company_helpmessage">기업에 대한 세부사항 입력란 입니다.</p>
					<p class="company_helpmessage">필수 사항은 아니지만 기재할 수 있는 사항은 모두 입력해주세요.</p>
				</div>
			</div>

				<div>
					<div class="row justify-content-start">
						<div class="col-12 col-md-8 col-lg-8 col-xl-6">
							<div class="row">
								<div class="col mt-4">
									<label>기업 로고</label>
									<img class="profile-img" src="${path}/img/default.jpg" id="img">
								</div>
							</div> 
							<div class="row">
								<div class="col mt-3 filebox">
									<label for="input_img">이미지찾기</label> 
									<input type="file" name="file" id="input_img">
								</div>
							</div>
							<div class="row">
								<div class="col mt-4">
									<label>관리자명</label><input
										type="text" class="form-control" id="manager" name="manager">
								</div>
							</div>
							<div class="row">
								<div class="col mt-4">
									<label>임직원 수</label><input
										type="text" class="form-control" id="employee" name="employee">
								</div>
							</div>
							<div class="row">
								<div class="col mt-4">
									<label>관리자 이메일</label> <input
										type="text" class="form-control" id="email" name="email">
								</div>
							</div>
							<div class="row">
								<div class="col mt-4">
									<label>홈페이지</label> <em style="color: red;">*</em> <input
										type="text" class="form-control" id="homepage" name="homepage"
										placeholder="홈페이지  URL 입력">
								</div>
							</div>
							<div class="row">
								<div class="col-4 mt-4">
									<label>회사주소</label>
									<input type="text" class="form-control" id="user_address"
									name="address1" readonly>
								</div>
								<div class="col-8 mt-4">
									<label>.</label>
									<input type="text" class="form-control" id="user_detailaddress"
									name="address2" readonly>
								</div>
							</div>
							<div class="row">
								<div class="col-8 mt-4">								
									<input type="text" class="form-control" id="address3"
									name="address3" placeholder="상세주소입력">
								</div>
								<div class="col-4 mt-4">
									<input type="button" class="form-control"
									onclick="daumZipCode()" value="우편번호 찾기">
								</div>
							</div>
							<button type="submit" class="btn btn-primary bank-ok">입력 완료</button>
						</div>
					</div>
				</div>
		</div>
		
		
	  </div>
</form>
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>