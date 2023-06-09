<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 페이지 타이틀 -->
<div class="page-titles">
   <ol class="breadcrumb">
      <li><h5 class="bc-title">스터디</h5></li>
      <li class="breadcrumb-item"><a href="javascript:void(0)">
      <svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
		<path fill-rule="evenodd" clip-rule="evenodd" d="M8.79222 13.9396C12.1738 13.9396 15.0641 14.452 15.0641 16.4989C15.0641 18.5458 12.1931 19.0729 8.79222 19.0729C5.40972 19.0729 2.52039 18.5651 2.52039 16.5172C2.52039 14.4694 5.39047 13.9396 8.79222 13.9396Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
		<path fill-rule="evenodd" clip-rule="evenodd" d="M8.79223 11.0182C6.57206 11.0182 4.77173 9.21874 4.77173 6.99857C4.77173 4.7784 6.57206 2.97898 8.79223 2.97898C11.0115 2.97898 12.8118 4.7784 12.8118 6.99857C12.8201 9.21049 11.0326 11.0099 8.82064 11.0182H8.79223Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
		<path d="M15.1095 9.9748C16.5771 9.76855 17.7073 8.50905 17.7101 6.98464C17.7101 5.48222 16.6147 4.23555 15.1782 3.99997" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
		<path d="M17.0458 13.5045C18.4675 13.7163 19.4603 14.2149 19.4603 15.2416C19.4603 15.9483 18.9928 16.4067 18.2374 16.6936" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
	</svg>
         스터디 </a>
      </li>
      <li class="breadcrumb-item active"><a href="#">스터디룸</a></li>
   </ol>
</div>
<div class="container-fluid">

   <!-- 표현하고자 하는 내용 넣기 -->


<div class="row">
	<div class="card" id="accordion-five" style="height:55vh;overflow:auto;">
<!-- 		<div class="card-body"> -->
			<div class="card-header" style="padding-bottom:10px;">
				<h4><span style="font-size:20px; color: #f96d00;">|</span><strong>&nbsp;스터디(참여)</strong></h4>
			</div>
			<div class="row p-3" style="overflow:auto;">
				<c:set value="${studyVO }" var="studyList" />
				<c:choose>
					<c:when test="${empty studyList}">
						<tr>
							<td colspan="5" style="text-align: center;">참여중인 스터디가 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${studyVO }" var="study">
							<div class="col-xl-3 col-sm-6">
								<div class="card" <c:if test="${study.smLeader eq 'Y'}">style="border-top: 4px solid #0D5ddd;"</c:if><c:if test="${study.smLeader ne 'Y'}">style="border-top: 4px solid #89879f;"</c:if>>
									<div class="card-header py-3">
										<h5 class="mb-0">[${study.studyTitle }]</h5> 
									</div>
									<div class="card-body" tabindex="0">
										<div class="sub-card border-primary">
											<div class="sub-card-2">
												<div>
<%-- 												<h5 class="mb-0">${study.rnum} .${study.studyTitle }</h5> --%>
													<span> 
														<c:choose>
															<c:when test="${study.smLeader eq 'Y'}">
																<td><span style="color:#0D5ddd; font-size:18px;"><strong>스터디장</strong></span></td>
															</c:when>
															<c:otherwise>
																<td><span class="text-muted" style="font-size:18px;"><strong>스터디원</strong></span></td>
															</c:otherwise>
														</c:choose>
													</span> 
													<input type="hidden" value="${study.studyCode }" id="studyCode">
													<div> <i class="fa-solid fa-person-walking" style="font-size:28px;"></i>&nbsp;${study.memberCount}명 </div>
													<div>${study.studyDate }</div>
												</div>
												<a href="/study/detail/${study.studyCode}">
													<div class="icon-box" style="border-radius: 50%; background: rgba(13, 153, 255, 0.4);"> 
														<h5 class="sub-card-2 icon-box" style="color:#0d99ff; font-weight:500; line-height:1.5; margin-left:2px;">입장</h5>
													</div>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
<!-- 		</div> -->
	</div>
	</div>
	<!-- card accordion-five -->
	<div class="row">
		<div class="card" id="accordion-five" style="overflow:auto;">
				<div class="card-header" style="padding-bottom:10px;">
					<h4><span style="font-size:20px; color: #f96d00;">|</span><strong>&nbsp;스터디(대기)</strong></h4>
				</div>
			<div class="row p-3" style="height:30vh;overflow:auto;">
			<c:set value="${standBystudyVO }" var="standBystudyList" />
			<c:choose>
				<c:when test="${empty standBystudyList}">
					<p class="text-center">대기중인 스터디모임이 존재하지 않습니다.</p>
				</c:when>
				<c:otherwise>
					<c:forEach items="${standBystudyVO }" var="standBystudy">
						<input type="hidden" value="${standBystudy.msgContent }"
							id="studyTitle">
						<div class="col-xl-3 col-sm-6">
								<div class="card" style="border-top: 4px solid #ff5e5e;">
									<div class="card-body" tabindex="0">
										<div class="sub-card">
											<div class="sub-card-2">
											<div>
												<h5 class="mb-0">
												<i class="bi bi-clock-history" style="font-size:27px;"></i>
<!-- 													<i class="material-icons" style="font-size: 20px">av_timer</i> -->
													<div id="stuTitle" style="font-size:18px;"></div>
												</h5> 
												<div>신청일 : ${standBystudy.msgDate }</div>
											</div>
											<div class="icon-box bg-danger-light rounded-circle">
												<h5 class="text-danger totalCount">대기</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</div>
</div>
<script type="text/javascript">
	var studyTitle = document.querySelector("#studyTitle").value;
	var result = studyTitle.match(/\[(.*?)\]/);
	var stuTitles = document.querySelectorAll('#stuTitle');

	stuTitles.forEach(function(stuTitle, i) {
		stuTitle.innerHTML = result ? result[1] : '';
	});

	// 	  stuTitle.value = result ? result[1] : '';
</script>