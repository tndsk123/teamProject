<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
<style type="text/css">
.about-img img {
	height: 300px; filter: brightness(60%);
}
</style>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div class="container-fluid about-img">
		<img src="${path}/images/about.jpg">
	</div>
	<div class="container">
		<div class="row py-5">
			<div class="col-sm-6">
				<h5>Unique Value</h5>
				<h3>IFU에서는 누구나 투자받고</h3>
				<h3>투자하면서 함께 성장합니다.</h3>
			</div>
			<div class="col-sm-6">
				<div class="text-left">
					<p>사람들은 자신이 지지하는 기업에 투자합니다.</p>
					<p>한 사람 한 사람의 투자가 모여 기업은 성장합니다.</p>
					<p>여기, 기업 하나가 출발선에 있습니다.</p>
					<p>그는 자신의 가치를 증명하고 사람들이 그의 가치를 알아봅니다.</p>
					<p>서로 지지하고 소통하고 공유하면서 더 많은 사람들이 그를 알아봅니다.</p>
					<p>그렇게 기업은 성장합니다.</p>
					<p>또 다른 기업들이 용기를 얻고 출발선에 섭니다.</p>
					<p>사람들의 지지를 받는 기업은 성장합니다.</p>
					<p>세상에 자신만의 가치를 품은</p>
					<p>기업이 많아집니다.</p>
					<p>세상이 조금 더 나아집니다.</p>
				</div>
			</div>
		</div>
		<div class="row py-5">
			<div class="col-sm-6">
				<h5>Brand Mission</h5>
				<h3>올바른 생각이 신뢰를 바탕으로</h3>
				<h3>성장하는 세상을 만들고자 합니다.</h3>
			</div>
			<div class="col-sm-6">
				<div class="text-left">
					<p>IFU 업의 본질은 단순히 자금을 모으는 것이 아닙니다.</p>
					<p>금융시장의 자금이 창업 기업이나 스타트업 등 꼭 필요한 곳에 흘러가도록 하여,</p>
					<p>더욱 성장하는 세상을 만드는 것이 우리의 미션입니다.</p>
				</div>
			</div>
		</div>
		<div class="row py-5">
			<div class="col-sm-6">
				<h5>Brand Vision</h5>
				<h3>IFU는 신뢰를 바탕으로소통하며 협력하는</h3>
				<h3>Trust Capitalist Group입니다.</h3>
			</div>
			<div class="col-sm-6">
				<div class="text-left">
					<p>IFU는 말 그대로 만약에 너라면 이라는 의미를 담고 있습니다.</p>
					<p>이처럼 IFU는 보이지 않는 가능성과 평판 등에 투자하며</p>
					<p>신뢰할 수 있는 사회로 만드는 Trust Capitalist Group을 표방하고 있습니다.</p>
				</div>
			</div>
		</div>
		<div class="row py-5">
			<div class="col-sm-6">
				<h5>IFU 5 principle</h5>
				<h3>IFU가 일하는 방식</h3>
			</div>
			<div class="col-sm-6">
				<div class="text-left">
					<p>IFU는 서로를 지지하고 도전을 즐기는 기업문화 안에서</p>
					<p>아래 5가지 원칙을 가지고 일합니다.</p>
				</div>
			</div>
		</div>
		<div class="text-center py-3 principle">
			<h4>1. 우리는 옳은 일을 합니다.</h4>
		</div>
		<div class="text-center py-3 principle">
			<h4>2. 급변의 물살을 즐기며 앞서 나갑니다.</h4>
		</div>
		<div class="text-center py-3 principle">
			<h4>3. 팀원간의 필요를 채워줍니다.</h4>
		</div>
		<div class="text-center py-3 principle">
			<h4>4. 파트너와 고객에게 긍정적인 기억을 남깁니다.</h4>
		</div>
		<div class="text-center py-3 principle">
			<h4>5. 재무적인 이익을 추구합니다.</h4>
		</div>
		<section class="py-3 d-flex justify-content-center" style="border-top: 1px solid rgba(0, 0, 0, .08); border-bottom: 1px solid rgba(0, 0, 0, .08);">
			<button type="button" class="basic-btn" onclick="javascript:location.href='${path}/fund/invest.do';">투자 하러 가기</button>
		</section>
	</div>
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>