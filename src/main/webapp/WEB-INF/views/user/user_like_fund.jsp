<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>IFYOU &mdash; 누구나 쉽게하는 투자</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<%@ include file="../include/header.jsp"%>
<c:if test="${param.a == 'a'}">
	<script type="text/javascript">
		alert("삭제되었습니다.");
	</script>
</c:if>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div class="bg-light py-3">
		<div class="container">
			<div class="row">
				<a href="${path}/">Home</a> <span class="mx-2 mb-0">/</span>
				<strong class="text-black">좋아한 프로젝트</strong>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row mt-5">
			<h1 class="coupontitle">관심 프로젝트</h1>
		</div>
		<div class="row mt-5">
			<div class="col-sm-2">
				<a href="#" class="my-coupon">프로젝트</a>
			</div>
		</div>
		<section class="container today-open">
		<div class="row to-contents ">
			<c:choose>
				<c:when test="${list == null || list == ''}">
					<p class="couponList-message">좋아요한 게시물이 업습니다.</p>
					<a href="${path}"><p class="couponList-message">상품보러가기</p></a>		
				</c:when>
				<c:otherwise>
					<c:forEach var="row" items="${list}">
						<div class="col-md-3 col-6">
							<a href="${path}/fund/invest_detail/${row.bno}">
								<div class="to-thumb">
									<img src="${path}/img/${row.title_img}">
									<div class="to-overlay">
										<div class="to-item">
											<p>[${row.progress}%]${row.title}
											<p>
												<small>${row.progress}% ${row.s_division}</small></p>
										</div>
									</div>
								</div>
							</a>
							<div class="text-center">
								<a href="${path}/user_like/user_unlike.do?bno=${row.bno}">좋아요 취소</a>
							</div>
						</div>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</div>
		</section>
	</div>
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>