<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU │ 주식</title>
<%@ include file="../../include/header.jsp"%>
<style type="text/css">
.search-menu-subject {
	float: right;
	margin-top: 30px;
}

article {
	margin-bottom: 100px;
	border-bottom: 1px solid #cccccc;
}

.topnav .search-container {
	float: right;
}

.topnav input[type=text] {
	padding: 6px;
	margin-top: 8px;
	font-size: 15px;
	border: 1px solid #d9d9d9;
}

.topnav .search-container button {
	float: right;
	padding: 6px 10px;
	margin-top: 8px;
	margin-right: 16px;
	background: #ddd;
	font-size: 17px;
	border: none;
	cursor: pointer;
}

.topnav .search-container button:hover {
	background: #ccc;
}

@media screen and (max-width: 600px) {
	.topnav .search-container {
		float: none;
	}
	.topnav a, .topnav input[type=text], .topnav .search-container button {
		float: none;
		display: block;
		text-align: left;
		width: 100%;
		margin: 0;
		padding: 14px;
	}
	.topnav input[type=text] {
		border: 1px solid #ccc;
	}
}
</style>
</head>
<body>
	<%@ include file="../../include/frame/site-header.jsp"%>
	<%@ include file="../../include/frame/invest_nav.jsp"%>
	<section class="container stock-subject">
		<h2>주식 둘러보기</h2>
		<p>빠르게 성장하는 스타트업에 투자하세요. 페이스북, 구글, 우버와 같은 주목받는 스타트업의 초기 주주가 될 수 있습니다.</p>
	</section>
	<section class="container stock-comming-soon">
		<div class="subject">
			<h3>오픈예정 주식 프로젝트</h3>
		</div>
		<div class="row contents">
			<c:forEach var="row" items="${open_stock_list}">
			<div class="col-lg-3">
				<a href="#">
					<div class="row align-items-center">
						<div class="col-lg-12 col-sm-4 col-12 cs-thumb">
							<img src="${path}/img/project/${row.project_name}/${row.title_img}">
						</div>
						<div class="col-lg-12 col-sm-8 col-12 summary">
							<p>
								<strong>${row.title}</strong>
							</p>
							<p>${row.now_date}일 남음</p>
							<p>${row.company_name}</p>
						</div>
					</div>
				</a>
			</div>
			</c:forEach>
		</div>
	</section>
	<section class="container hot-stock-project">
		<div>
			<div class="subject">
				<h3>인기 프로젝트</h3>
			</div>
			<div class="row contents">
				<c:forEach var="row" items="${stock_list}">
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
	<section class="container search-menu">
		<div class="row justify-content-center">
			<a href="#" class="m-1 menu">
				<div>
					<img src="${path}/images/invest/menu/invest.jpg"
						class="rounded-circle">
				</div> <span>전체보기</span>
			</a> <a href="#" class="m-1 menu">
				<div>
					<img src="${path}/images/invest/menu/fab.jpg"
						class="rounded-circle">
				</div> <span>F&B Local</span>
			</a> <a href="#" class="m-1 menu">
				<div>
					<img src="${path}/images/invest/menu/lifestyle.jpg"
						class="rounded-circle">
				</div> <span>라이프 스타일</span>
			</a> <a href="#" class="m-1 menu">
				<div>
					<img src="${path}/images/invest/menu/wellness.jpg"
						class="rounded-circle">
				</div> <span>웰니스</span>
			</a> <a href="#" class="m-1 menu">
				<div>
					<img src="${path}/images/invest/menu/solution.jpg"
						class="rounded-circle">
				</div> <span>솔루션</span>
			</a>
		</div>
		<article>
			<h3 class="all_example mt-5">전체보기</h3>
			<div class="search-menu-subject row">
				<form class="form-inline" action="">
					<div class="topnav">
						<div class="search-container">
							<input type="text" placeholder="검색" name="search">
							<button type="submit">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</div>
				</form>
				<div class="form-group">
					<label for="order"></label> <select name="order" id="order"
						class="form-control"
						style="width: 75px; border: none; margin-right: 15px;">
						<option>전체</option>
						<option>진행중</option>
						<option>종료된</option>
					</select>
				</div>

				<div class="form-group">
					<label for="order"></label> <select name="order" id="order"
						class="form-control" style="width: 90px; border: none;">
						<option value="recommend">추천순</option>
						<option value="popluar">인기순</option>
						<option value="amount">모금액순</option>
						<option value="recent">최신순</option>
						<option value="closing">마감임박순</option>
					</select>
				</div>

				<ul class="d-flex justify-content-between align-items-center">
				</ul>
			</div>
		</article>
	</section>
	

	<%@ include file="../../include/frame/site-footer.jsp"%>
</body>
</html>