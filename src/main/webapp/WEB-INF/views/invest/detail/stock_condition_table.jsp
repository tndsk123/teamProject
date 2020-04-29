<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="row">
	<div class="col-md-6 col-12 row stock-table-contents">
		<p class="col-6">주당 가격</p>
		<p class="col-6"><fmt:formatNumber value="${list.unit}" groupingUsed="true"/>원</p>
	</div>
	<div class="col-md-6 col-12 row stock-table-contents">
		<p class="col-6">투자 가능 금액</p>
		<p class="col-6">최소 <fmt:formatNumber value="${list.min_fund}" groupingUsed="true"/>원  
		(<fmt:formatNumber value="${list.min_fund / list.unit}" groupingUsed="true"/>주)</p>
	</div>
	<div class="col-md-6 col-12 row stock-table-contents">
		<p class="col-6">발행 지분율<br>(증액 시 변경)</p>
		<p class="col-6">2.4390%</p>
	</div>
	<div class="col-md-6 col-12 row stock-table-contents">
		<p class="col-6">발행 예정 주식 수<br>(증액 시 변경)</p>
		<p class="col-6"><fmt:formatNumber value="${list.max_fund / list.unit}" groupingUsed="true"/>주</p>
	</div>
	<div class="col-md-6 col-12 row stock-table-contents">
		<p class="col-6">현재 기업가치</p>
		<p class="col-6">2,300,000,000원</p>
	</div>
	<div class="col-md-6 col-12 row stock-table-contents">
		<p class="col-6">최저배당이율<a title="최저배당이율" data-toggle="popover" data-trigger="hover" data-container="body" data-content="주식의 액면가격 또는 발행가격 기준으로 회사가 제시한 이율을 적용한 금액을 우선 배당 받습니다."><i class="far fa-question-circle"></i></a></p>
		<p class="col-6">발행금액 연 ${list.margin}%</p>
	</div>
	<div class="col-md-6 col-12 row stock-table-contents">
		<p class="col-6">상환 청구 기간<a title="상환 청구 기간" data-toggle="popover" data-trigger="hover" data-content=" 보유한 주식의 전부 또는 일부를 회사에게 상환 요청할 수 있는 기간입니다."><i class="far fa-question-circle"></i></a></p>
		<p class="col-6"><fmt:formatDate value="${list.margin_date}" pattern="yyyy-MM-dd"/> 일</p>
	</div>
	<div class="col-md-6 col-12 row stock-table-contents">
		<p class="col-6">상환 이자율<a title="상환 이자율" data-toggle="popover" data-trigger="hover" data-content="주식의 발행가격을 기준으로 회사가 제시한 비율의 이자를 적용하여 상환을 받을 수 있습니다."><i class="far fa-question-circle"></i></a></p>
		<p class="col-6">연 단리 ${list.margin}%</p>
	</div>
	<div class="col-md-6 col-12 row stock-table-contents">
		<p class="col-6">전환 청구 기간<a title="전환 청구 기간" data-toggle="popover" data-trigger="hover" data-content="회사에게 보유한 우선주를 보통주로 전환 요청할 수 있는 기간입니다."><i class="far fa-question-circle"></i></a></p>
		<p class="col-6"><fmt:formatDate value="${list.margin_date}" pattern="yyyy-MM-dd"/>일</p>
	</div>
	<div class="col-md-6 col-12 row stock-table-contents">
		<p class="col-6">전환 조건<a title="전환 조건" data-toggle="popover" data-trigger="hover" data-content="우선주식 1주당 회사가 제시한 비율을 적용한 수만큼의 보통주식으로 전환됩니다."><i class="far fa-question-circle"></i></a></p>
		<p class="col-6">보통주 1:1 전환</p>
	</div>
	<div class="col-md-6 col-12 row stock-table-contents">
		<p class="col-6">소득공제</p>
		<p class="col-6">가능</p>
	</div>
	<div class="col-md-6 col-12 row stock-table-contents">
		<p class="col-6">펀딩 시작일</p>
		<p class="col-6"><fmt:formatDate value="${list.start_date}" pattern="yyyy-MM-dd"/><fmt:formatDate value="${list.start_date}" pattern="E" var="today"/> </p>
	</div>
	<div class="col-md-6 col-12 row stock-table-contents">
		<p class="col-6">펀딩 종료일</p>
		<p class="col-6"><fmt:formatDate value="${list.end_date}" pattern="yyyy-MM-dd"/> <fmt:formatDate value="${list.end_date}" pattern="E" var="today"/> </p>
	</div>
	<div class="col-md-6 col-12 row stock-table-contents">
		<p class="col-6">증권 입고일</p>
		<p class="col-6"><fmt:formatDate value="${list.end_date}" pattern="yyyy-MM-dd"/> <fmt:formatDate value="${list.end_date}" pattern="E" var="today"/> </p>
	</div>
</div>