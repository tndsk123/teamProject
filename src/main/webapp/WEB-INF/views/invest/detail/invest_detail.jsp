<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU │ 주식</title>
<%@ include file="../../include/header.jsp"%>
<script type="text/javascript">
function like(){
	var userid=$("#userid").val();
	if(userid == ''){
		alert("로그인 후 이용가능합니다.");
	}else{
		location.href="${path}/fund/like_fund.do?bno=${list.bno}";
	}
}
function end_invest(){
	alert("투자가 종료된 상품입니다.");
}

</script>
</head>
<body>
	<%@ include file="../../include/frame/site-header.jsp"%>
	<%@ include file="../../include/frame/invest_nav.jsp"%>
	<input type="hidden" value="${sessionScope.userid}" id="userid">
	<div class="details">
		<div class="container-fluid detail-subject">
			<div class="container">
				<p class="stock-btn">${list.s_division}</p>.
				<div class="mt-5 text-sm-right text-left">
					<h2>${list.title}</h2>
					<p class="mt-2 sub_title">${list.sub_title}</p>
				</div>
			</div>
		</div>
		<div class="container detail-view">
			<div class="row align-items-center">
				<div class="py-2 col-md-5">
					<!-- Swiper -->
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<img src="${path}/img/project/${list.project_name}/${list.title_img}">
							</div>
							<div class="swiper-slide">
								<img src="${path}/img/project/${list.project_name}/${list.title_img2}">
							</div>
							<div class="swiper-slide">
								<img src="${path}/img/project/${list.project_name}/${list.title_img3}">
							</div>
						</div>
						<!-- Add Pagination -->
						<div class="swiper-pagination"></div>
					</div>
				</div>
				<div class="py-2 pl-md-0 col-md-7">
					<div class="details-content">
						<div class="row py-2 align-items-center">
							<div class="col-sm-8 col-9">
								<p class="now"><strong><fmt:formatNumber value="${list.now_fund}" groupingUsed="true"/></strong>원 달성</p>
								<div class="target">
									목표금액 <fmt:formatNumber value="${list.max_fund}" groupingUsed="true"/>원<span class="percentage">${list.progress}%</span>
								</div>
							</div>
							<div class="col-sm-4 col-3 text-center heart" onclick="like()">
								<c:choose>
									<c:when test="${check_like == 1}">
										<i class="fas fa-heart heart fa-2x" aria-hidden="true"></i><br>																		
									</c:when>
									<c:otherwise>
										<i class="far fa-heart fa-2x" aria-hidden="true"></i><br>
									</c:otherwise>
								</c:choose>
								<span class="count">${list.good}</span>
							</div>
						</div>
						<div class="progress">
							<div class="progress-bar" style="width: ${list.progress}%"></div>
						</div>
						<div class="row py-2 align-items-center">
							<div class="col-sm-8 col-12">
								<p class="days"><strong>${list.now_date}일</strong>남음</p>
								<span class="end"><fmt:formatDate value="${list.end_date}" pattern="yyyy-MM-dd"/> 마감</span>
								<p>
									<c:choose>
										<c:when test="${list.limit == 0}">
											<em class="plan">증액불가</em><span>증액 불가한 상품으로 한도 도달시 투자가 종료됩니다.</span>
										</c:when>
										<c:otherwise>
											<em class="plan">증액예정</em><span>모집상황에 따라 증액 예정 상품으로 한도 이상 투자가 가능합니다.</span>
										</c:otherwise>
									</c:choose>									
								</p>
							</div>
							<div class="col-sm-4 col-12 d-flex flex-sm-column justify-content-between justify-content-sm-center share">
								<div>
									<p class="py-2">공유</p>
								</div>
								<div class="py-2 d-flex">
									<a title="페이스북 공유"><i class="fab fa-facebook-f"></i></a><a title="인스타그램 공유"><i class="fab fa-instagram"></i></a> <a title="트위터 공유"><i class="fab fa-twitter"></i></a>
								</div>
							</div>
						</div>
						<div class="row py-2 align-content-center">
							<div class="col-sm-5 col-12 py-1">
								<c:choose>
									<c:when test="${list.limit == 0 && list.progress >= 100}">
										<button type="button" class="basic-btn" onclick="end_invest();">투자종료</button>
									</c:when>
									<c:otherwise>
										<button type="button" class="basic-btn" onclick="location.href='${path}/fund/buy/${list.bno}'">지금 투자하기</button>
									</c:otherwise>
								</c:choose>								
							</div>
							<div class="col-sm-3 col-12 py-1">
								<h5 class="categorie mb-1">주카테고리</h5>
							</div>
							<div class="col-sm-4 col-12 d-flex align-items-center py-1">
								<div class="detail-categories">
									<ul>
										<li>#${list.p_division}</li>
										<li>#${list.p_detail_division}</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row py-3">
				<div class="py-2 col-lg-5 col-sm-6 col-12 company-profile">
					<div class="d-flex justify-content-between align-items-center" data-toggle="modal" data-target="#company">
						<div>
							<img class="rounded-circle mx-auto d-block" src="${path}/images/portfolio-img1.jpg">
						</div>
						<div class="info">
							<h5 class="title">회사이름</h5>
							<p class="text">연구개발특구진흥재단 파트너와 함께합니다.</p>
						</div>
						<div>
							<i class="fas fa-chevron-right fa-2x"></i>
						</div>
					</div>
					<div class="modal fade" id="company">
						<div class="modal-dialog modal-xl modal-dialog-scrollable">
							<div class="modal-content">
								<!-- Modal Header -->
								<div class="modal-header">
									<h4 class="modal-title">Modal Heading</h4>
									<button type="button" class="close" data-dismiss="modal">&times;</button>
								</div>

								<!-- Modal body -->
								<div class="modal-body">Modal body..</div>

								<!-- Modal footer -->
								<div class="modal-footer">
									<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="py-4 col-lg-7 col-sm-6 col-12 d-flex align-items-center justify-content-center bg-light">
					<div class="total">
						<h3><strong>${list.support}명</strong>이 투자에 참여중입니다.</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<section class="container product-explain">
		<div class="classic-tabs">
			<ul class="nav tabs nav-justified row" role="tablist">
				<li class="nav-item"><a class="nav-link show active" data-toggle="tab" href="#info" aria-controls="info" aria-selected="true">핵심정보</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#risk" aria-controls="warn" aria-selected="false">투자위험</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#manual" aria-controls="manual" aria-selected="false">투자설명서</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#news" aria-controls="news" aria-selected="false"> 새소식 <span class="new">5</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#feedback" aria-controls="feedback" aria-selected="false"> 피드백 <span class="new">10</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#investor" aria-controls="investor" aria-selected="false"> 투자자 <span class="new">200</span>
				</a></li>
			</ul>
			<div class="tab-content">
				<%@ include file="../detail/key_info_tab.jsp"%>
				<%@ include file="../detail/risk_tab.jsp"%>
				<div class="tab-pane fade" id="manual" role="tabpanel" aria-labelledby="manual-tab">
					<section>
					</section>
				</div>
				<%@ include file="../detail/news_tab.jsp"%>
				<%@ include file="../detail/feedback_tab.jsp"%>
				<%@ include file="../detail/investor_tab.jsp"%>
			</div>
		</div>
	</section>
	<%@ include file="../../include/frame/site-footer.jsp"%>
</body>
</html>