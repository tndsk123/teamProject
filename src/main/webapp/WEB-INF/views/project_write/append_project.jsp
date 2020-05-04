<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
<style type="text/css">
.project_title {
	font-size: 40px;
	color: #000;
	font-weight: 700;
}

.project_contentintro {
	font-size: 16px;
	color: #737373;
}

.page_menuList_card.pageMenuList_ifyoucolor{
	border-left-color: #00b2b2;
}

.page_menuList_card {
	display: block;
    margin-bottom: 16px;
    border: 1px solid #e6eaed;
    border-left-width: 6px;
    border-radius: 3px;
    padding: 16px 32px;
    line-height: 1;
    color: rgba(0,0,0,.84);
    font-size: 19px;
}

.page_menuList_card
.PageMenuList_container {
	display: -ms-flexbox;
    display: flex;
    -ms-flex-align: center;
    align-items: center;
}

.page_menuList_card
.PageMenuList_name {
	margin-right: 16px;
	font-weight: 700;
}

.page_menuList_card
.PageMenuList_status.PageMenuList_ifyoucolor {
	color: #00b2b2;
}

.page_menuList_card
.PageMenuList_status{
	font-size: 12px;
	font-weight: 500;
}

.page_menuList_card
.PageMenuList_buttonWrapper {
	margin-left: auto;
}

a, a:active, a:hover, a:visited {
    text-decoration: none;
    color: inherit;
}

.if.button {
	transition-property: background-color,border-color,color,opacity;
	transition-duration: .2s;
    border: 1px solid rgba(0,0,0,.15);
    border-radius: 3px;
    background-color: #fff;
    cursor: pointer;
    padding: 0 1.41176em;
    height: 48px;
    vertical-align: middle;
    line-height: 1;
    color: rgba(0,0,0,.54);
    font-size: 17px;
    font-weight: 400;
    box-sizing: border-box!important;
    -webkit-appearance: none;
    display: inline-block;
    padding-top: .07em;
    text-decoration: none;
}
.page_menuList_card {
	display: block;
    margin-bottom: 16px;
    border: 1px solid #e6eaed;
    border-left-width: 6px;
    border-radius: 3px;
    padding: 16px 32px;
    line-height: 1;
    color: rgba(0,0,0,.84);
    font-size: 19px;
}

.page_menuList_card 
.PageMenuList_status.PageMenuList_graycolor {
	color: #90949c;
}

.if.button.disabled,
.if.button:disabled {
    opacity: .45;
    cursor: default;
    color: rgba(0,0,0,.7);
    pointer-events: none;
}
</style>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div class="bg-light py-3">
		<div class="container">
			<div class="row">
				<a href="${path}/">Home</a> <span class="mx-2 mb-0">/</span> <strong
					class="text-black">프로젝트 준비</strong>
			</div>
		</div>
	</div>
	<div class="container">
	<div class="row mt-5">
	  <div class="col-sm-8">
		<h1 class="project_title">프로젝트 준비</h1>
	  </div>	
	</div>
	<div class="row mt-4 project_contentintro">
	   <div class="col-sm-12">
		<p>본격적인 프로젝트 준비를 위해 필요한 추가 내용들을 입력하세요. 심사가 진행 중이거나 아직 사전 승인 단계를 거치지</p>
		않았더라도 등록 가능한 부분은 미리 작성해 볼 수 있습니다.
	   </div>	
	</div>	
		<div class="row mt-5">
		  <div class="col-sm-8">
			<div class="page_menuList_card pageMenuList_ifyoucolor">
				<div class="PageMenuList_container">
					<div class="PageMenuList_name">기업 정보</div>
					<c:choose>
						<c:when test="${sessionScope.company == null}">
							<div class="PageMenuList_status PageMenuList_ifyoucolor">등록 전</div>
						</c:when>
						<c:otherwise>
							<div class="PageMenuList_status PageMenuList_ifyoucolor">등록 됨</div>
						</c:otherwise>
					</c:choose>
					
					<a href="#" class="PageMenuList_buttonWrapper">
					<button type="button" class="if button" onclick="location.href='${path}/fund/companyinformation.do'">등록하기</button>
					</a>
				</div>
			</div>
		  </div>
		</div>
		<div class="row mt-2">
		  <div class="col-sm-8">
			<div class="page_menuList_card pageMenuList_ifyoucolor">
				<div class="PageMenuList_container">
					<div class="PageMenuList_name">프로젝트 소개</div>
					<div class="PageMenuList_status PageMenuList_ifyoucolor">등록 전</div>
					<a href="#" class="PageMenuList_buttonWrapper">
					<button type="button" class="if button" onclick="location.href='${path}/fund/project_info.do'">등록하기</button>
					</a>
				</div>
			</div>
		  </div>
		</div>
		<div class="row mt-2">
		  <div class="col-sm-8">
			<div class="page_menuList_card pageMenuList_graycolor">
				<div class="PageMenuList_container">
					<div class="PageMenuList_name">투자 설명서</div>
					<div class="PageMenuList_status PageMenuList_graycolor">와디즈 확인 후 등록 가능</div>
					<a href="#" class="PageMenuList_buttonWrapper">
					<button disabled type="button" class="if button">등록하기</button>
					</a>
				</div>
			</div>
		  </div>
		</div>
		<div class="row mt-2">
		  <div class="col-sm-8">
			<div class="page_menuList_card pageMenuList_ifyoucolor">
				<div class="PageMenuList_container">
					<div class="PageMenuList_name">추가 핵심정보</div>
					<div class="PageMenuList_status PageMenuList_ifyoucolor">등록 전</div>
					<a href="#" class="PageMenuList_buttonWrapper">
					<button type="button" class="if button"  onclick="location.href='${path}/fund/project_coreinfo.do'">등록하기</button>
					</a>
				</div>
			</div>
		  </div>
		</div>
		<div class="row mt-2">
		  <div class="col-sm-8">
			<div class="page_menuList_card pageMenuList_graycolor">
				<div class="PageMenuList_container">
					<div class="PageMenuList_name">투자 조건</div>
					<div class="PageMenuList_status PageMenuList_graycolor">와디즈 확인 후 등록 가능</div>
					<a href="#" class="PageMenuList_buttonWrapper">
					<button disabled type="button" class="if button">등록하기</button>
					</a>
				</div>
			</div>
		  </div>
		</div>
		<div class="row mt-2 mb-5">
		  <div class="col-sm-8">
			<div class="page_menuList_card pageMenuList_redcolor">
				<div class="PageMenuList_container">
					<div class="PageMenuList_name">등록이 완료되었습니다.</div>
					<a href="#" class="PageMenuList_buttonWrapper">
					<button type="button" class="if button">최종 등록하기</button>
					</a>
				</div>
			</div>
		  </div>
		</div>
	</div>
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>

</html>