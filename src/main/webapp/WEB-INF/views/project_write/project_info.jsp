<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
<style type="text/css">
.company_name {
	font-size: 30px;
	color: #000;
	font-weight: 700;
}

.company_helpmessage {
	font-size: 15px;
	color: #737373;
	font-weight: 400;
	font-size: 17px;
	margin-top: 10px;
}

label {
	color: #000;
	margin-bottom: 4px;
}

.helper {
	color: #90949c;
	font-size: 13px;
	font-weight: 400;
	margin-top: 4px;
	font-style: normal;
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

.ifyoubtn {
	margin-top: 5px;
}

.complete {
	margin-top: 30px;
	margin-bottom: 30px;
}

.bank-ok {
	margin-right: 20px;
	width: 150px;
}

.filebox input[type="file"] {
    position: absolute;
    width: 0;
    height: 0;
    padding: 0;
    overflow: hidden;
    border: 0;
}

.filebox label {
    display: inline-block;
    padding: 10px 20px;
    color: #999;
    vertical-align: middle;
    background-color: #fdfdfd;
    cursor: pointer;
    border: 1px solid #ebebeb;
    border-radius: 5px;
}

/* named upload */
.filebox .upload-name {
  display: inline-block;
  height: 35px;
  font-size:18px; 
  padding: 0 10px;
  vertical-align: middle;
  background-color: #f5f5f5;
  border: 1px solid #ebebeb;
  border-radius: 5px;

}

.filebox2 input[type="file"] {
    position: absolute;
    width: 0;
    height: 0;
    padding: 0;
    overflow: hidden;
    border: 0;
}

.filebox2 label {
    display: inline-block;
    padding: 10px 20px;
    color: #999;
    vertical-align: middle;
    background-color: #fdfdfd;
    cursor: pointer;
    border: 1px solid #ebebeb;
    border-radius: 5px;
}

/* named upload */
.filebox2 .upload-name2 {
  display: inline-block;
  height: 35px;
  font-size:18px; 
  padding: 0 10px;
  vertical-align: middle;
  background-color: #f5f5f5;
  border: 1px solid #ebebeb;
  border-radius: 5px;

}

.filebox3 input[type="file"] {
    position: absolute;
    width: 0;
    height: 0;
    padding: 0;
    overflow: hidden;
    border: 0;
}

.filebox3 label {
    display: inline-block;
    padding: 10px 20px;
    color: #999;
    vertical-align: middle;
    background-color: #fdfdfd;
    cursor: pointer;
    border: 1px solid #ebebeb;
    border-radius: 5px;
}

/* named upload */
.filebox3 .upload-name3 {
  display: inline-block;
  height: 35px;
  font-size:18px; 
  padding: 0 10px;
  vertical-align: middle;
  background-color: #f5f5f5;
  border: 1px solid #ebebeb;
  border-radius: 5px;

}
.select {
	font-size: 15px;
	color: #99ffff;
	font-weight: 700;
	
}

.select_necessary {
	font-size: 15px;
	color: red;
	font-weight: 700;
}

</style>

<script type="text/javascript">
$(document).ready(function(){ 
	  var fileTarget = $('#title_img'); 
	  fileTarget.on('change', function(){ // 값이 변경되면
	      var cur=$(".filebox input[type='file']").val();
	    $(".upload-name").val(cur);
	  }); 
	}); 	 	
$(document).ready(function(){ 
	  var fileTarget = $('#title_img2'); 
	  fileTarget.on('change', function(){ // 값이 변경되면
	      var cur=$(".filebox2 input[type='file']").val();
	    $(".upload-name2").val(cur);
	  }); 
	}); 
$(document).ready(function(){ 
	  var fileTarget = $('#title_img3'); 
	  fileTarget.on('change', function(){ // 값이 변경되면
	      var cur=$(".filebox3 input[type='file']").val();
	    $(".upload-name3").val(cur);
	  }); 
	});
</script>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div class="bg-light py-3">
		<div class="container">
			<div class="row">
				<a href="${path}/">Home</a> <span class="mx-2 mb-0">/</span> 프로젝트 준비
				<span class="mx-2 mb-0">/</span> <strong class="text-black">기업
					소개</strong>
			</div>
		</div>
	</div>
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-sm-12 company_name_container">
				<span class="company_name">개요</span>
			</div>
			<div class="col-sm-12">
				<p class="company_helpmessage">프로젝트를 대표할 주요 개요 정보를 입력하세요.</p>
			</div>
		</div>
		<form>
			<div>
				<div class="row justify-content-start">
					<div class="col-12 col-md-8 col-lg-8 col-xl-6">
						<div class="row">
							<div class="col mt-4">
								<label>프로젝트 제목</label> <em style="color: red;">*</em> <input
									type="text" class="form-control" id="project_name"
									name="project_name" placeholder="제목 입력"> <span
									class="helper">32자 남음</span>
							</div>
						</div>
						<div class="row">
							<div class="col mt-4">
								<label>회사명</label> <em style="color: red;">*</em> <input
									type="text" class="form-control" id="company_name"
									name="company_name" placeholder="제목 입력">
							</div>
						</div>
						<div class="row">
							<div class="col mt-4">
								<label>주식 구분</label> <em style="color: red;">*</em><br> <select
									class="form-control" name="s_division" id="s_division">
									<option style="color: #e6e6e6;">카테고리 선택</option>
									<option>주식</option>
									<option>채권</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col mt-4">
								<label>주식 구분</label> <em style="color: red;">*</em><br> <select
									class="form-control" name="p_division" id="p_division">
									<option style="color: #e6e6e6;">카테고리 선택</option>
									<option>F&B Local</option>
									<option>라이프 스타일</option>
									<option>웰니스</option>
									<option>솔루션</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col mt-4">
								<label>세부 업종</label> <em style="color: red;">*</em> <input
									type="text" class="form-control" id="p_detail_division"
									name="p_detail_division" placeholder="세부 업종 입력">
							</div>
						</div>
						<div class="row">
							<div class="col mt-4">
								<label>타이틀(소개글)</label> <em style="color: red;">*</em> <input
									type="text" class="form-control" id="title" name="title"
									placeholder="소개글 입력">
							</div>
						</div>
						<div class="filebox mt-5">
							<p class="select_necessary mb-1">필수<em style="color: red">*</em></p>
							<label for="title_img">대표 이미지</label> <input type="file" id="title_img">
							<input class="upload-name" value="">
							<p class="helper">3MB 이하의 JPEG, PNG 파일</p>
							<p class="helper">사이즈 : 1200X675 픽셀 이상</p>
							<p class="helper">텍스트와 로고 삽입 금지</p>
						</div>
						<div class="filebox2 mt-5">
							<p class="select mb-1">(선택사항)</p>
							<label for="title_img2">대표 이미지2</label> <input type="file" id="title_img2">
							<input class="upload-name2" value="">
							<p class="helper">3MB 이하의 JPEG, PNG 파일</p>
							<p class="helper">사이즈 : 1200X675 픽셀 이상</p>
							<p class="helper">텍스트와 로고 삽입 금지</p>
						</div>
						<div class="filebox3 mt-5">
							<p class="select mb-1">(선택사항)</p>
							<label for="title_img3">대표 이미지3</label> <input type="file" id="title_img3">
							<input class="upload-name3" value="">
							<p class="helper">3MB 이하의 JPEG, PNG 파일</p>
							<p class="helper">사이즈 : 1200X675 픽셀 이상</p>
							<p class="helper">텍스트와 로고 삽입 금지</p>
						</div>
						<div class="row">
							<div class="col mt-5">
								<label>서브 타이틀</label> <em style="color: red;">*</em> <input
									type="text" class="form-control" id="sub_title"
									name="sub_title" placeholder="서브 타이틀 입력">
							</div>
						</div>
						<div class="row">
							<div class="col mt-4">
								<label>시작 일자</label> <em style="color: red;">*</em> <input
									type="date" class="form-control" id="start_date"
									name="start_date">
							</div>
						</div>
						<div class="row">
							<div class="col mt-4">
								<label>종료 일자</label> <em style="color: red;">*</em> <input
									type="date" class="form-control" id="end_date" name="end_date">
							</div>
						</div>
						<div class="row">
							<div class="col mt-4">
								<label>주당 금액</label> <em style="color: red;">*</em> <input
									type="text" class="form-control" id="unit" name="unit"
									placeholder="주당 금액입력">
							</div>
						</div>
						<div class="row">
							<div class="col mt-4">
								<label>최소 투자액</label> <em style="color: red;">*</em> <input
									type="text" class="form-control" id="min_fund" name="min_fund"
									placeholder="최소 투자액 입력">
							</div>
						</div>
						<div class="row">
							<div class="col mt-4">
								<label>목표액</label> <em style="color: red;">*</em> <input
									type="text" class="form-control" id="max_fund" name="max_fund"
									placeholder="목표액 입력">
							</div>
						</div>
						<div class="row">
							<div class="col mt-4">
								<label>한도액 이상 승인 여부</label> <em style="color: red;">*</em> <input
									type="text" class="form-control" id="limit" name="limit"
									placeholder="한도액 이상 승인 여부 입력">
							</div>
						</div>
						<div class="row">
							<div class="col mt-4">
								<label>채권 일시 이익률</label> <em style="color: red;">*</em> <input
									type="text" class="form-control" id="margin" name="margin"
									placeholder="채권 일시 이익률 입력">
							</div>
						</div>
						<div class="row">
							<div class="col mt-4">
								<label>주식배당금 or 채권환급일자</label> <em style="color: red;">*</em> <input
									type="date" class="form-control" id="margin_date"
									name="margin_date" placeholder="주식배당금 or 채권환급일자 입력">
							</div>
						</div>
						<div class="row">
							<div class="col mt-4">
								<label>프로젝트 관리자</label> <em style="color: red;">*</em> <input
									type="text" class="form-control" id="writer"
									name="writer" placeholder="관리자명 입력">
							</div>
						</div>
						<div class="complete">
							<button class="if button gray" style="margin-right: 20px;">입력
								완료</button>
							<button class="if button gray">취소</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>