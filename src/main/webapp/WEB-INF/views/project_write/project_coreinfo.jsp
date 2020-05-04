<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
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
	margin-bottom: 30px;
}

.complete {
	margin-top: 30px;
	margin-bottom: 30px;
}

.bank-ok {
	margin-right: 20px;
	width: 150px;
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

.all_btn {
	margin-top: 15px;
	text-align: center;
}

.business {
	margin-top: 100px;
}
</style>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div class="bg-light py-3">
		<div class="container">
			<div class="row">
				<a href="${path}/">Home</a> <span class="mx-2 mb-0">/</span> 프로젝트 준비
				<span class="mx-2 mb-0">/</span> <strong class="text-black">추가
					핵심정보</strong>
			</div>
		</div>
	</div>
	<div class="container mt-5">
		<div class="row " style="text-align: center;">
			<div class="col-sm-12 company_name_container">
				<span class="company_name" style="text-align: center;">추가
					핵심정보</span>
			</div>
			<div class="col-sm-12">
				<p class="company_helpmessage">우리 기업의 추가 핵심정보를 작성하세요.</p>
			</div>
		</div>
		<div>
			<form>
				<div class="row justify-content-center">
					<div class="col-12 col-md-8 col-lg-8 col-xl-6">
						<div class="row">
							<div class="col mt-4">
								<label>타이틀 제목</label> <em style="color: red;">*</em> <input
									type="text" class="form-control" id="content_point_title"
									name="content_point_title" placeholder="타이틀 제목 입력"> <span
									class="helper">32자 남음</span>
							</div>
						</div>
						<div class="row">
							<div class="col mt-5">
								<label>대표 이미지</label> <em style="color: red;">*</em> <br>
								<button class="if button gray" id="content_point_img" name="content_point_img">
									<i class="fa fa-camera" style="margin-right: 5px;"></i>등록하기
								</button>
								<br>
								<p class="helper">3MB 이하의 JPEG, PNG 파일</p>
								<p class="helper">사이즈 : 1200X675 픽셀 이상</p>
								<p class="helper">텍스트와 로고 삽입 금지</p>
							</div>
						</div>
						<div class="row">
							<div class="col mt-5">
								<label for="content_point">상세설명</label> <em style="color: red;">*</em> <br>
								<textarea rows="10" class="form-control" id="content_point"></textarea>
							</div>
						</div>

					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="container business">
		<div class="row" style="text-align: center;">
			<div class="col-sm-12 company_name_container">
				<span class="company_name" style="text-align: center;">비즈니스
					전략</span>
			</div>
			<div class="col-sm-12">
				<p class="company_helpmessage">우리 기업의 비즈니스 모델, 성과 지표, EXIT 전략을
					작성하세요.</p>
			</div>
		</div>
		<div>
			<form>
				<div class="row justify-content-center">
					<div class="col-12 col-md-8 col-lg-8 col-xl-6">
						<div class="row">
							<div class="col mt-4">
								<label>타이틀 제목</label> <em style="color: red;">*</em> <input
									type="text" class="form-control" id="content_business_title"
									name="content_business_title" placeholder="타이틀 제목 입력"> <span
									class="helper">32자 남음</span>
							</div>
						</div>
						<div class="row">
							<div class="col mt-5">
								<label>대표 이미지</label> <em style="color: red;">*</em> <br>
								<button class="if button gray" name="content_business_img" id="content_business_img">
									<i class="fa fa-camera" style="margin-right: 5px;"></i>등록하기
								</button>
								<br>
								<p class="helper">3MB 이하의 JPEG, PNG 파일</p>
								<p class="helper">사이즈 : 1200X675 픽셀 이상</p>
								<p class="helper">텍스트와 로고 삽입 금지</p>
							</div>
						</div>
						<div class="row">
							<div class="col mt-5">
								<label for="content_business">상세설명</label> <em style="color: red;">*</em> <br>
								<textarea rows="10" class="form-control" id="content_business"></textarea>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="container business mb-5">
		<div class="row " style="text-align: center;">
			<div class="col-sm-12 company_name_container">
				<span class="company_name" style="text-align: center;">상세설명</span>
			</div>
			<div class="col-sm-12">
				<p class="company_helpmessage">우리 기업의 상세설명, 타이틀 제목, 이미지를 작성하세요.</p>
			</div>
		</div>
		<div>
			<form>
				<div class="row justify-content-center">
					<div class="col-12 col-md-8 col-lg-8 col-xl-6">
						<div class="row">
							<div class="col mt-4">
								<label>타이틀 제목</label> <em style="color: red;">*</em> <input
									type="text" class="form-control" id="content_detail_title"
									name="content_detail_title" placeholder="타이틀 제목 입력"> <span
									class="helper">32자 남음</span>
							</div>
						</div>
						<div class="row">
							<div class="col mt-5">
								<label>대표 이미지</label> <em style="color: red;">*</em> <br>
								<button class="if button gray" name="content_detail_img" id="content_detail_img">
									<i class="fa fa-camera" style="margin-right: 5px;"></i>등록하기
								</button>
								<br>
								<p class="helper">3MB 이하의 JPEG, PNG 파일</p>
								<p class="helper">사이즈 : 1200X675 픽셀 이상</p>
								<p class="helper">텍스트와 로고 삽입 금지</p>
							</div>
						</div>
						<div class="row">
							<div class="col mt-5">
								<label for="content_detail">상세설명</label> <em style="color: red;">*</em> <br>
								<textarea rows="10" class="form-control" id="content_detail"></textarea>
								<div class="all_btn">
								<button class="if button gray">확인</button>
								<button class="if button gray">취소</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>