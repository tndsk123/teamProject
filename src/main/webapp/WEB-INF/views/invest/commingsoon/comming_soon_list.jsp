<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../../include/header.jsp"%>
</head>
<body>
	<%@ include file="../../include/frame/site-header.jsp"%>
	<%@ include file="../../include/frame/invest_nav.jsp"%>
	<%@ include file="../../include/frame/main_slider.jsp"%>
	<section class="container comming-soon">
		<div>
			<div class="subject">
				<h3>오픈예정</h3>
			</div>
			<div class="row contents">
			 	<c:forEach var="row" items="${open_list}">
				<div class="col-lg-3">
					<a href="${path}/fund/invest_detail/${row.bno}">
						<div class="row align-items-center">
							<div class="col-lg-12 col-sm-4 col-12 cs-thumb">
								<img src="${path}/img/project/${row.project_name}/${row.title_img}">
							</div>
							<div class="col-lg-12 col-sm-8 col-12 summary">
								<p><strong>${row.title}</strong></p>
								<p>오픈예정</p>
								<p>${row.company_name}</p>
							</div>
						</div>
					</a>
				</div>
			 </c:forEach>
			</div>
		</div>
	</section>
	<%@ include file="../../include/frame/site-footer.jsp"%>
</body>
</html>