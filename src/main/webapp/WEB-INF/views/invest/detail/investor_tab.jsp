<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<section class="tab-pane fade" id="investor" role="tabpanel" aria-labelledby="investor-tab">
	<div class="tab-subject">
		<h3>투자자<span class="new">200</span></h3>
	</div>
	<div class="tab-contents">
		<div class="d-flex flex-column justify-content-center investor-chart">
			<!-- 차트 -->
			<div class="chart mx-auto">
				<canvas id="chart" width="1" height="1"></canvas>
			</div>
			<div class="mt-2 d-flex flex-row justify-content-center font-weight-bold">
				<div class="px-2 text-center">
					<p class="py-1">개인 일반</p>
					<p class="py-1">개인 적격</p>
					<p class="py-1">개인 전문</p>
					<p class="py-1">법인·투자조합</p>
				</div>
				<div class="px-2 text-right">
					<p class="py-1">23명</p>
					<p class="py-1">0명</p>
					<p class="py-1">1명</p>
					<p class="py-1">0명</p>
				</div>
				<div class="px-2 text-left">
					<p class="py-1">평균 투자금액 1,753,043원</p>
					<p class="py-1">평균 투자금액 0원</p>
					<p class="py-1">평균 투자금액 1,020,000원</p>
					<p class="py-1">평균 투자금액 0원</p>
				</div>
			</div>
		</div>
		<div>
			<div class="d-flex justify-content-between">
				<p>투자자<em>200</em>명</p>
				<div>
					<div>
						select값
						<select>
							<option value="invest">투자순</option>
							<option value="recent">최신순</option>
							<option value="amount">투자금액 순</option>
						</select>
					</div>
				</div>
			</div>
			<div>
				<ul class="investor-list">
					<li class="row investor-info d-flex align-items-center">
						<div class="col-xl-1 col-sm-2 col-3">
							<img src="${path}/images/profile.png" class="rounded-circle">
						</div>
						<div class="col-xl-11 col-sm-10 col-9">
							<span><strong>TEST**</strong>님이 1,020,000원 투자합니다.</span><br> <span>2020/04/23 14:40:24</span>
						</div>
					</li>
					<li class="row investor-info d-flex align-items-center">
						<div class="col-xl-1 col-sm-2 col-3">
							<img src="${path}/images/profile.png" class="rounded-circle">
						</div>
						<div class="col-xl-11 col-sm-10 col-9">
							<span><strong>TEST**</strong>님이 1,020,000원 투자합니다.</span><br> <span>2020/04/23 14:40:24</span>
						</div>
					</li>
					<li class="row investor-info d-flex align-items-center">
						<div class="col-xl-1 col-sm-2 col-3">
							<img src="${path}/images/profile.png" class="rounded-circle">
						</div>
						<div class="col-xl-11 col-sm-10 col-9">
							<span><strong>TEST**</strong>님이 1,020,000원 투자합니다.</span><br> <span>2020/04/23 14:40:24</span>
						</div>
					</li>
					<li class="row investor-info d-flex align-items-center">
						<div class="col-xl-1 col-sm-2 col-3">
							<img src="${path}/images/profile.png" class="rounded-circle">
						</div>
						<div class="col-xl-11 col-sm-10 col-9">
							<span><strong>TEST**</strong>님이 1,020,000원 투자합니다.</span><br> <span>2020/04/23 14:40:24</span>
						</div>
					</li>
					<li class="row investor-info d-flex align-items-center">
						<div class="col-xl-1 col-sm-2 col-3">
							<img src="${path}/images/profile.png" class="rounded-circle">
						</div>
						<div class="col-xl-11 col-sm-10 col-9">
							<span><strong>TEST**</strong>님이 1,020,000원 투자합니다.</span><br> <span>2020/04/23 14:40:24</span>
						</div>
					</li>
					<li class="row investor-info d-flex align-items-center">
						<div class="col-xl-1 col-sm-2 col-3">
							<img src="${path}/images/profile.png" class="rounded-circle">
						</div>
						<div class="col-xl-11 col-sm-10 col-9">
							<span><strong>TEST**</strong>님이 1,020,000원 투자합니다.</span><br> <span>2020/04/23 14:40:24</span>
						</div>
					</li>
					<li class="row investor-info d-flex align-items-center">
						<div class="col-xl-1 col-sm-2 col-3">
							<img src="${path}/images/profile.png" class="rounded-circle">
						</div>
						<div class="col-xl-11 col-sm-10 col-9">
							<span><strong>TEST**</strong>님이 1,020,000원 투자합니다.</span><br> <span>2020/04/23 14:40:24</span>
						</div>
					</li>
					<li class="row investor-info d-flex align-items-center">
						<div class="col-xl-1 col-sm-2 col-3">
							<img src="${path}/images/profile.png" class="rounded-circle">
						</div>
						<div class="col-xl-11 col-sm-10 col-9">
							<span><strong>TEST**</strong>님이 1,020,000원 투자합니다.</span><br> <span>2020/04/23 14:40:24</span>
						</div>
					</li>
					<li class="row investor-info d-flex align-items-center">
						<div class="col-xl-1 col-sm-2 col-3">
							<img src="${path}/images/profile.png" class="rounded-circle">
						</div>
						<div class="col-xl-11 col-sm-10 col-9">
							<span><strong>TEST**</strong>님이 1,020,000원 투자합니다.</span><br> <span>2020/04/23 14:40:24</span>
						</div>
					</li>
					<li class="row investor-info d-flex align-items-center">
						<div class="col-xl-1 col-sm-2 col-3">
							<img src="${path}/images/profile.png" class="rounded-circle">
						</div>
						<div class="col-xl-11 col-sm-10 col-9">
							<span><strong>TEST**</strong>님이 1,020,000원 투자합니다.</span><br> <span>2020/04/23 14:40:24</span>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</section>