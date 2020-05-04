<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU │ 투자하기</title>
<%@ include file="../include/header.jsp"%>
<c:if test="${param.message == 'success'}">
	<script type="text/javascript">
		alert("댓글이 등록되었습니다.");
	</script>
</c:if>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<%@ include file="../include/frame/invest_nav.jsp"%>
	<%@ include file="../include/frame/main_slider.jsp"%>
	<section class="container hot-project">
		<div>
			<div class="subject">
				<h3>인기 프로젝트</h3>
				<!-- 투자자순 -->
			</div>
			<div class="row contents">
			  <c:forEach var="row" items="${support_list}" begin="0" end="7">
				<div class="col-lg-3">
					<a href="${path}/fund/invest_detail/${row.bno}">
						<div class="row align-items-center">
							<div class="col-lg-12 col-sm-4 col-12 hot-project-thumb">
								<img src="${path}/img/project/${row.project_name}/${row.title_img}">
							</div>
							<div class="col-lg-12 col-sm-8 col-12 summary">
								<p><em class="state">진행 중</em><span class="category">${row.s_division}</span><span class="sub-category">${row.p_division}</span></p>
								<p><strong>${row.title}</strong></p>
								<div>
									<strong class="percentage">${row.progress}%</strong>
									<c:choose>
										<c:when test="${row.limit == 0}">
											<em class="plan">증액불가</em>
										</c:when>
										<c:otherwise>
											<em class="plan">증액예정</em>
										</c:otherwise>
									</c:choose>		
									<span class="sum"><fmt:formatNumber value="${row.max_fund}" groupingUsed="true"/>원</span>
								</div>
								<p><span class="company">${row.company_name}</span><span class="date">${list.now_date}일 남음</span></p>
							</div>
						</div>
					</a>
				</div>
			  </c:forEach>
			</div>
		</div>
	</section>
	<section class="container comming-soon">
		<div>
			<div class="d-flex justify-content-between subject">
				<h3>오픈예정</h3> <a href="comming_soon_list.do"><span class="more">더보기</span></a>
			</div>
			<div class="row contents">
			  <c:forEach var="row" items="${open_list}" begin="0" end="7">
				<div class="col-lg-3">
					<a href="${path}/fund/invest_detail/${row.bno}">
						<div class="row align-items-center">
							<div class="col-lg-12 col-sm-4 col-12 hot-project-thumb">
								<img src="${path}/img/project/${row.project_name}/${row.title_img}">
							</div>
							<div class="col-lg-12 col-sm-8 col-12 summary">
								<p><em class="state">진행 중</em><span class="category">${row.s_division}</span><span class="sub-category">${row.p_division}</span></p>
								<p><strong>${row.title}</strong></p>
								<div>
									<strong class="percentage">${row.progress}%</strong>
									<c:choose>
										<c:when test="${row.limit == 0}">
											<em class="plan">증액불가</em>
										</c:when>
										<c:otherwise>
											<em class="plan">증액예정</em>
										</c:otherwise>
									</c:choose>		
									<span class="sum"><fmt:formatNumber value="${row.max_fund}" groupingUsed="true"/>원</span>
								</div>
								<p><span class="company">${row.company_name}</span><span class="date">${list.now_date}일 남음</span></p>
							</div>
						</div>
					</a>
				</div>
			  </c:forEach>
			</div>
		</div>
	</section>
	<section class="container stock">
		<div>
			<div class="d-flex justify-content-between subject">
				<h3>주식</h3> <a href="stock_list.do"><span class="more">더보기</span></a>
			</div>
			<div class="row contents">
			  <c:forEach var="row" items="${stock_list}" begin="0" end="7">
				<div class="col-lg-3">
					<a href="${path}/fund/invest_detail/${row.bno}">
						<div class="row align-items-center">
							<div class="col-lg-12 col-sm-4 col-12 hot-project-thumb">
								<img src="${path}/img/project/${row.project_name}/${row.title_img}">
							</div>
							<div class="col-lg-12 col-sm-8 col-12 summary">
								<p><em class="state">진행 중</em><span class="category">${row.s_division}</span><span class="sub-category">${row.p_division}</span></p>
								<p><strong>${row.title}</strong></p>
								<div>
									<strong class="percentage">${row.progress}%</strong>
									<c:choose>
										<c:when test="${row.limit == 0}">
											<em class="plan">증액불가</em>
										</c:when>
										<c:otherwise>
											<em class="plan">증액예정</em>
										</c:otherwise>
									</c:choose>		
									<span class="sum"><fmt:formatNumber value="${row.max_fund}" groupingUsed="true"/>원</span>
								</div>
								<p><span class="company">${row.company_name}</span><span class="date">${list.now_date}일 남음</span></p>
							</div>
						</div>
					</a>
				</div>
			  </c:forEach>
			</div>
		</div>
	</section>
	<section class="container bond">
		<div>
			<div class="d-flex justify-content-between subject">
				<h3>채권</h3> <a href="bond_list.do"><span class="more">더보기</span></a>
			</div>
			<div class="row contents">
				<c:forEach var="row" items="${invest_list}" begin="0" end="7">
				<div class="col-lg-3">
					<a href="${path}/fund/invest_detail/${row.bno}">
						<div class="row align-items-center">
							<div class="col-lg-12 col-sm-4 col-12 hot-project-thumb">
								<img src="${path}/img/project/${row.project_name}/${row.title_img}">
							</div>
							<div class="col-lg-12 col-sm-8 col-12 summary">
								<p><em class="state">진행 중</em><span class="category">${row.s_division}</span><span class="sub-category">${row.p_division}</span></p>
								<p><strong>${row.title}</strong></p>
								<div>
									<strong class="percentage">${row.progress}%</strong>
									<c:choose>
										<c:when test="${row.limit == 0}">
											<em class="plan">증액불가</em>
										</c:when>
										<c:otherwise>
											<em class="plan">증액예정</em>
										</c:otherwise>
									</c:choose>		
									<span class="sum"><fmt:formatNumber value="${row.max_fund}" groupingUsed="true"/>원</span>
								</div>
								<p><span class="company">${row.company_name}</span><span class="date">${list.now_date}일 남음</span></p>
							</div>
						</div>
					</a>
				</div>
			  </c:forEach>
			</div>
		</div>
	</section>
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>