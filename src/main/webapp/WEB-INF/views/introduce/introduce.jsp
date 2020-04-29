<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>IFU</title>
<%@ include file="../include/header.jsp"%>
<style type="text/css">
h5 {
	border-bottom: 1px solid rgba(0, 0, 0, .08);
	color: #85adad;
}

h3 {
	font-weight: bold;
}

.contexts {
	margin-top: 28px;
	margin-left: 9px;
	color: #000000;
	font-size: 15px;
	text-align: left;
	color: #000000;
	font-weight: bold;
	letter-spacing: -0.1em;
}

.page-container {
	margin-bottom: 300px;
}

.box {
	margin-top: 300px;
	margin-bottom: 300px;
}

.principles {
	margin-top: 50px;
	margin-bottom: 50px;
	font-weight: bold;
	text-align: center;
	letter-spacing: -0.1em;
	line-height: 2.0em;
	font-size: 20px;
	
}
.coloring{
   color: #85adad;
}

.btnStyle{
     width: 8%;
	
	background-color: tomato;
	border-radius: 0;
	color: black;
	outline: none; /*입력태그 클릭시 테두리색 없애기*/
	border: none; /*입력태그 테두리색 없애기*/
}
</style>
</head>
<body>
	<%@ include file="../include/frame/site-header.jsp"%>
	<div class="bg-light py-3">
		<div class="container">
			<div class="row">
				<a href="${path}/">Home</a> <span class="mx-2 mb-0">/</span> <strong
					class="text-black">IfU소개</strong>
			</div>
		</div>
	</div>
	<section class="img_space">
		<img src="${path}/img/test.jpg" width="100%" height="100%">
	</section>
	<div class="page-container">
		<div class="box">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<h5>Unique Value</h5>
						<h3>IFU에서는 누구나 투자받고</h3>
						<h3>투자하면서 함께 성장합니다.</h3>
					</div>
					<div class="col-sm-6">
						<div class="contexts">
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
			</div>
		</div>
		<div class="box">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<h5>Brand Mission</h5>
						<h3>올바른 생각이 신뢰를 바탕으로</h3>
						<h3>성장하는 세상을 만들고자 합니다.</h3>
					</div>
					<div class="col-sm-6">
						<div class="contexts">
							<p>IFU 업의 본질은 단순히 자금을 모으는 것이 아닙니다.</p>
							<p>금융시장의 자금이 창업 기업이나 스타트업 등 꼭 필요한 곳에 흘러가도록 하여,</p>
							<p>더욱 성장하는 세상을 만드는 것이 우리의 미션입니다.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<h5>Brand Vision</h5>
						<h3>IFU는 신뢰를 바탕으로소통하며 협력하는</h3>
						<h3>Trust Capitalist Group입니다.</h3>
					</div>
					<div class="col-sm-6">
						<div class="contexts">
							<p>IFU는 말 그대로 만약에 너라면 이라는 의미를 담고 있습니다.</p>
							<p>이처럼 IFU는 보이지 않는 가능성과 평판 등에 투자하며</p>
							<p>신뢰할 수 있는 사회로 만드는 Trust Capitalist Group을 표방하고 있습니다.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<h5>IFU 5 Principles</h5>
						<h3>IFU가 일하는 방식</h3>
					</div>
					<div class="col-sm-6">
						<div class="contexts">
							<p>IFU는 서로를 지지하고 도전을 즐기는 기업문화 안에서</p>
							<p>아래 5가지 원칙을 가지고 일합니다.
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="box">
			<div class="container">
				<div class="principles">
					<span>1.</span> <span>우리는 옳은 일을 합니다.</span>
				</div>
				<div class="principles">
					<span>2.</span> <span>급변의 물살을 즐기며 앞서 나갑니다.</span>
				</div>
				<div class="principles">
					<span>3.</span> <span>팀원간의 필요를 채워줍니다.</span>
				</div>
				<div class="principles">
					<span>4.</span> <span>파트너와 고객에게 긍정적인 기억을 남깁니다.</span><br>
				</div>
				<div class="principles">
					<span>5.</span> <span>재무적인 이익을 추구합니다.</span>
				</div>
			</div>
		</div>
		<section
			style="border-top: 1px solid rgba(0, 0, 0, .08); border-bottom: 1px solid rgba(0, 0, 0, .08);">
			<h2 class="principles">
				IFU는<br> <span class="coloring">최고의 복지는 최고의 동료</span>라고 생각합니다.<br>
				우리와 함께하시겠습니까?<br>
				<button class="btnStyle">투자 하러 가기</button>
			</h2>
		</section>
	</div>
	<%@ include file="../include/frame/site-footer.jsp"%>
</body>
</html>