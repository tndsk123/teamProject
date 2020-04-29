<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="tab-pane fade" id="feedback" role="tabpanel" aria-labelledby="feedback-tab">
	<section>
		<div>
			<h3>피드백<span class="new">5</span></h3>
		</div>
		<div class="row justify-content-between align-items-center">
			<div class="col-6">
				<h5>상품에 대한 5개의 피드백이 있습니다.</h5>
			</div>
			<div class="col-sm-3 col-6 d-flex align-items-center">
				<select name="searchType" class="form-control">
					<option value="">최신순</option>
					<option value="">과거순</option>
					<option value="">추천순</option>
				</select>
			</div>
		</div>
		<c:forEach var="var" items="${fund_board}">
		<div class="contents" data-toggle="modal" data-target="#reply">
			<div class="pb-3 reply-contents">
				<div class="row justify-content-between align-items-center">
					<div class="col-8">
						<p>${var.title}</p>
					</div>
					<div class="px-2">
						<p><fmt:formatDate value="${var.append_date}" pattern="yyyy-MM-dd"/></p>
					</div>
				</div>
				<div class="row align-items-center justify-content-between pt-1">
					<div class="col-sm-10 col-8 d-flex align-items-center profile">
						<div class="pr-3">
							<img src="${path}/images/profile.png" class="rounded-circle">
						</div>
						<div class="px-2 d-flex flex-column profile">
							<div>${var.writer}</div>
							<div>
								<p>${var.grade}</p>
							</div>
						</div>
					</div>
					<div class="col-sm-2 col-4 px-0 updown">
						<div class="d-flex align-items-center justify-content-end">
							<!-- <i class="fas fa-thumbs-up"></i> <i class="fas fa-thumbs-down"></i> -->
							<button type="button" title="동의" data-flag="like" onclick="like()">
								<i class="far fa-thumbs-up"></i><br>${var.good}
							</button>
							<button type="button" title="비동의" data-flag="dislike" onclick="unlike()">
								<i class="far fa-thumbs-down"></i><br>${var.hate}
							</button>
							<button type="button">
								<span>댓글</span>555
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		</c:forEach>
		<div class="write">
			<div class="mt-5">
				<h3>피드백 작성하기</h3>
			</div>
			<form action="${path}/fund_board/insert.do" method="post" name="form1">
				<div class="form-group row px-3">
					<label for="writer" class="col-12 mt-2"></label> <input type="text" class="form-control" name="writer" id="writer" placeholder="아이디"> 
					<label for="title" class="col-12 mt-2"></label> <input type="text" class="form-control" name="title" id="title" placeholder="제목"> 
					<label for="content" class="col-12 mt-2"></label>
					<textarea id="content" name="content" class="form-control" rows="5" placeholder="게시글 작성"></textarea>
					<input type="hidden" value="${list.bno}" name="bno">
					<button type="submit" class="mt-2 ml-auto col-12 col-sm-2" onclick="write()">등록</button>
				</div>
			</form>
		</div>
		<script type="text/javascript">
		function write(){
			var userid=$("#userid").val();
			alert(userid);
			if(userid == ''){
				alert("로그인 후 작성 가능합니다.");
				return;
			}
		}
		</script>
		<div class="reply">
			<div class="modal fade" id="reply">
				<div class="modal-dialog modal-xl modal-dialog-scrollable">
					<div class="modal-content">
						<!-- Modal Header -->
						<div class="px-3 py-3 d-flex flex-column flex-sm-row justify-content-sm-between">
							<h3>헬스케어 투자</h3>
							<p>항균,항바이러스 효과를 갖는 발아관련 아이템</p>
						</div>
						<!-- Modal body -->
						<div class="modal-body">
							<div class="px-1 px-sm-2 d-flex justify-content-between align-items-center profile">
								<div class="d-flex align-items-center">
									<div class="pr-2">
										<img src="${path}/images/profile.png" class="rounded-circle">
									</div>
									<div class="d-flex flex-column flex-sm-row">
										<div>TEST**</div>
										<div class="pl-sm-2">
											<p>개인 회원 / 일반 투자자</p>
										</div>
									</div>
								</div>
								<div class="pl-2">
									<p>2020.4.21 16:45</p>
								</div>
							</div>
							<div class="px-1 p-sm-3 contents">
								<div class="d-flex justify-content-between align-items-center py-3 subject">
									<h2>투자를 검토하며 궁금한 사항이 있습니다.</h2>
									<div class="btn-group">
										<button type="button" class="btn btn-light">수정</button>
										<button type="button" class="btn btn-light">삭제</button>
									</div>
								</div>
								<div class="py-3 px-0">
									<p>최근 와디즈에서도 현재 펀딩오픈중인 리화이트 등 세탁 O2O 업체가 많이 나와 관심을 가지고 있습니다.</p>
									<p>리화이트는 편의점과 제휴를 맺고 있고, 런드리고는 언택트 세탁물 수거함을 설치,</p>
									<p>늦게 퇴근을 하는 직장인들도 시간제약없이 세탁물을 수거할 수 있는 24시간 서비스를 하고있다고 들었습니다.</p>
									<p>혹시 찬스바이찬의 세탁 서비스는 수거 과정이 어떠한가요?</p>
									<p>또한 타 세탁 O2O 서비스 대비 찬스바이찬이 이 점에서 뛰어나다 하실 수 있는 가장 자랑하실 수 있는 부분은 어떤것 인가요?</p>
								</div>
							</div>
							<div class="py-3 row justify-content-center align-items-center like">
								<button type="button" title="동의해요" data-flag="like" onclick="like()">
									<i class="far fa-thumbs-up fa-2x"></i><br>2
								</button>
								<button type="button" title="글쎄요" data-flag="dislike" onclick="unlike()">
									<i class="far fa-thumbs-down fa-2x"></i><br>2
								</button>
							</div>
							<div class="px-1 px-md-4">
								댓글<span class="new">1</span>
							</div>
							<form action="#">
								<div class="px-1 px-md-4 d-flex flex-column">
									<label for="comment"></label>
									<textarea id="comment" name="comment" class="form-control" rows="5" placeholder="댓글을 입력하세요."></textarea>
									<button type="button" class="btn btn-primary mt-2 ml-auto">등록</button>
								</div>
							</form>
							<div class="px-1 px-md-4 comment">
								<div class="d-flex align-items-center">
									<a href="#company" class="d-flex align-items-center">
										<div>
											<img src="${path}/images/profile.png" class="rounded-circle">
										</div>
										<span class="ml-2 name">찬스바이찬 주식회사</span>
									</a>
									<span class="ml-2 time">16시간 전</span>
								</div>
								<div class="px-2 mt-3 d-flex justify-content-between align-items-center content">
									<p>네 감사합니다. 열심히 하겠습니다.</p>
									<div>
										<button type="button" class="">답글</button>
									</div>
								</div>
							</div>
						</div>
						<!-- Modal footer -->
						<div class="modal-footer">
							<button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>