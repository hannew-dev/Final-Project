<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- <div class="page-titles"> -->
<!-- 		<ol class="breadcrumb"> -->
<!-- 			<li><h5 class="bc-title">스터디모집</h5></li> -->
<!-- 			<li class="breadcrumb-item"><a href="javascript:void(0)"> -->
<!-- 				<svg width="17" height="17" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg"> -->
<!-- 					<path d="M2.125 6.375L8.5 1.41667L14.875 6.375V14.1667C14.875 14.5424 14.7257 14.9027 14.4601 15.1684C14.1944 15.4341 13.8341 15.5833 13.4583 15.5833H3.54167C3.16594 15.5833 2.80561 15.4341 2.53993 15.1684C2.27426 14.9027 2.125 14.5424 2.125 14.1667V6.375Z" stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round"/> -->
<!-- 					<path d="M6.375 15.5833V8.5H10.625V15.5833" stroke="#2C2C2C" stroke-linecap="round" stroke-linejoin="round"/> -->
<!-- 				</svg> -->
<!-- 				등록 </a> -->
<!-- 			</li> -->
<!-- 			<li class="breadcrumb-item active"><a href="#">스터디모집</a></li> -->
<!-- 		</ol> -->
<!-- 		<a class="text-primary fs-13" data-bs-toggle="offcanvas" href="#offcanvasExample1" role="button" aria-controls="offcanvasExample1">+ Add Task</a> -->
<!-- 	</div> -->
	
<!-- 	<!-- 헤더 -->
<div class="conL"> 
	<div class="row">
       <h2 id="cateName" style="margin-bottom: 15px; font-weight: 800; font-size: 25px;">  스터디 모집 등록</h2>
		<div class="card">
<!-- 			<div class="card-header flex-wrap border-0" style="padding-left:0px;"> -->
<!-- 	        </div> -->
			<div class="page-header min-height-300 border-radius-xl mt-4"
				style="background-image: url('https://images.unsplash.com/photo-1531512073830-ba890ca4eba2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1920&q=80');">
				<span class="mask  bg-gradient-secondary opacity-6"></span>
			</div>
			<div class="card-body">
				<form class="row gx-4 mb-2" id="insertForm"
					action="/board/insert/${boardVO.cateCode}" method="post"
					enctype="multipart/form-data">
					<div class="col-md-12">
						<div
							class="input-group input-group-outline mb-4 align-items-center">
							제목 :&nbsp;&nbsp;<input type="text"
								class="form-control input-default " name="boTitle"
								placeholder="제목을 입력해주세요."> <input type="hidden"
								name="userId" value="${sessionScope.userInfo.userId}"> <input
								type="hidden" name="cateCode" id="cateCode"
								value="${boardVO.cateCode}">
						</div>
					</div>
					<div class="col-md-12">
						<div class="mb-4" style="padding-left: 3px;">
							<textarea class="form-txtarea form-control" rows="20"
								id="boContent" name="boContent" style="width: 100%;"></textarea>
						</div>
					</div>
					<div class="col-md-12">
						<div class="mb-1 ps-1">
							<h6 class="mb-1">첨부파일</h6>
							<div class="input-group input-group-outline">
								<input type="file" class="form-control" multiple="multiple"
									name="boAttach">
							</div>
						</div>
						<div class="card-footer bg-white" style="border-color: #fff;">
							<ul
								class="mailbox-attachments d-flex align-items-stretch clearfix">
								<c:if test="${not empty board.boardAttachList }">
									<c:forEach items="${board.boardAttachList }" var="boAttach">
										<li>
											<!-- 파일데이터를 출력하기위한 출력세트 --> <span
											class="mailbox-attachment-icon"> <i
												class="far fa-file-pdf"></i>
										</span>
											<div class="mailbox-attachment-info">
												<a href="#" class="mailbox-attachment-name"> <i
													class="fas fa-paperclip"></i>${boAttach.baOrigin }
												</a> <span class="mailbox-attachment-size clearfix mt-1">
													<span>${boAttach.baFancysize } </span> <span
													class="btn btn-default btn-sm float-right attachmentFileDel"
													id="span_${boAttach.baNo }"> <i class="fas fa-times"></i>
												</span>
												</span>
											</div>
										</li>
									</c:forEach>
								</c:if>
							</ul>
						</div>
					</div>
					<div
						class="col-md-12 d-grid gap-3 d-md-flex justify-content-md-end">
						<button type="button" class="btn btn-primary"
							id="insertBtn">등록</button>
						<button type="button" class="btn btn-danger"
							id="cancelBtn">취소</button>
						<button type="button" class="btn btn-dark"
							id="listBtn">목록</button>
					</div>
				</form>

			</div>
		</div>
	</div>
</div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="/resources/vendor/global/global.min.js"></script>
	<script src="/resources/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
	<script src="/resources/vendor/ckeditor/ckeditor.js"></script>
    <script src="/resources/js/custom.js"></script>
	<script src="/resources/js/deznav-init.js"></script>
    <script>
    
    $(function(){
    	CKEDITOR.replace("boContent",{
    		footnotesPrefix : 'a',
    		filebrowserUploadUrl:'${pageContext.request.contextPath }/imageUpload'
    	})
    	
    	var insertBtn = $("#insertBtn")
    	var cancelBtn = $("#cancelBtn")
    	var listBtn = $("#listBtn")
    	var insertForm = $("#insertForm")
    	var cateCode = $("#cateCode").val()
    	
    		listBtn.on("click", function () {
			location.href="/board/list/"+cateCode;
    	
		});
    	
    	insertBtn.on("click",function(){
    		if($("#boTitle").val() == ""){
    			alert("제목을 입력해주세요")
    			return false;
    		}
    		if(CKEDITOR.instances.boContent.getData() ==""){
    			alert("내용을 입력해주세요")
    			return false;
    		}
    		insertForm.submit();
    	})
    	
    	$(".attachmentFileDel").on("click",function(){
		var id = $(this).prop("id");
		var idx = id.indexOf("_");
		var noticeFileNo = id.substring(idx + 1);
		var ptrn = "<input type='text' name='delNoticeNo' value='%V' hidden='hidden'/>";
		$("#noticeForm").append(ptrn.replace("%V",noticeFileNo));
		$(this).parents("li:first").hide();
	})
    	
    })
    
    
    </script>