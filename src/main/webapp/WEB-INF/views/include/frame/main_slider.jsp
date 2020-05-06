<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<section class="container-fluid">
	<div id="mainSlide" class="owl-carousel">
	 <c:forEach var="row" items="${support_list}" begin="0" end="2">
		<div class="item">
			<div>
				<a href="${path}/fund/invest_detail/${row.bno}">
					<div class="d-flex main-slide-thum">
						<div class="flex-fill"></div>
						<div class="flex-fill">
							<img src="${path}/img/project/${row.project_name}/${row.title_img}">
						</div>
						<div class="flex-fill"></div>
					</div>
					<div class="main-slide-contents">
						<p>※원금손실 가능성이 있습니다</p>
						<p class="title">${row.project_name}<br>${row.sub_title}</p>
						<p>${row.company_name}ㅣ${row.progress}%</p>
					</div>
				</a>
			</div>
		</div>
		</c:forEach>
	</div>
</section>