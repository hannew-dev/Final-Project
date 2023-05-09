<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
.badge {
    line-height: 2;
    border-radius: 0.25rem;
    font-size: 15px;
    font-weight: 1000;
    padding: 5px 12px;
    border: 0.0625rem solid transparent;
}
.form-control:disabled, .form-control[readonly] {
    background: #f5f5f540;
    opacity: 1;
    pointer-events: none;
}
.light.badge-success {
    background-color: #daf5e6;
    color: #495b72;
}
</style>
<div class="card-deck">
	<div class="card bg-white">
		<div class="card-body text-center">
				<div class="profile-head">
					<div class="photo-content">
						<div class="author-profile">

							<div class="author-info"></div>
						</div>
					</div>
				<c:if test="${sessionScope.userInfo.userType eq 'STU'}">
					<div class="container">
						<div class="row">
							<div class="col">
								<div id="imgArea" class="mb-4">
									<img src= "" alt="">
								</div>
								<input type="file" class="form-control" id="inputFile"/>
							</div>
							<div class="col">
						
								<div class="mb-4">
									<label class="form-label">학번</label>
										 <input type="text" value="${sessionScope.userInfo.userId }" class="form-control" readonly   /> 
									 <label class="form-label">성명</label> 
										 <input type="text" value="${sessionScope.userInfo.studentVO.stuNameKo }" class="form-control" readonly />
									 <label class="form-label">영문 성명</label> 
										 <input type="text" value="${sessionScope.userInfo.studentVO.stuNameEn }" class="form-control" readonly />
								</div>
							</div>
							<div class="col">

								<div class="mb-4">
									<label class="form-label">학과</label> 
										<input type="text" 	value="${sessionScope.userInfo.studentVO.academicVO.acaMajor }" class="form-control" readonly /> 
									<label class="form-label">학년</label> 
										<input type="text" value="${sessionScope.userInfo.studentVO.academicVO.acaGrade }" class="form-control" readonly /> 
									<label class="form-label">이수학기</label> 
										<input type="text" value="${sessionScope.userInfo.studentVO.academicVO.acaSemester }" class="form-control" readonly />
								</div>
							</div>
							
						</div>
					</div>
				</c:if>
				<c:if test="${sessionScope.userInfo.userType eq 'PRO'}">
					<div class="container">
						<div class="row">
							<div class="col">
								<div id="imgArea" class="mb-4">
									<img src= "" alt="">
								</div>
								<input type="file" class="form-control" id="inputFile"/>
							</div>
							<div class="col">
						
								<div class="mb-4">
									<label class="form-label">교번</label>
										 <input type="text" value="${sessionScope.userInfo.userId }" class="form-control" readonly   /> 
									 <label class="form-label">성명</label> 
										 <input type="text" value="${sessionScope.userInfo.professorVO.proNameKo }" class="form-control" readonly />
									 <label class="form-label">영문 성명</label> 
										 <input type="text" value="${sessionScope.userInfo.professorVO.proNameEn }" class="form-control" readonly />
								</div>
							</div>
							<div class="col">

								<div class="mb-4">
									<label class="form-label">전공</label> 
										<input type="text" 	value="${sessionScope.userInfo.professorVO.proMajor }" class="form-control" readonly /> 
									<label class="form-label">연구실 호수</label> 
										<input type="text" value="${sessionScope.userInfo.professorVO.proLabNum }" class="form-control" readonly /> 
									<label class="form-label">연구실 연락처</label> 
										<input type="text" value="${sessionScope.userInfo.professorVO.proLabTel }" class="form-control" readonly />
								</div>
							</div>
							
						</div>
					</div>
				</c:if>
				<c:if test="${sessionScope.userInfo.userType eq 'EMP'}">
					<div class="container">
						<div class="row">
							<div class="col">
								<div id="imgArea" class="mb-4">
									<img src= "" alt="">
								</div>
								<input type="file" class="form-control" id="inputFile"/>
							</div>
							<div class="col">
						
								<div class="mb-4">
									<label class="form-label">사번</label>
										 <input type="text" value="${sessionScope.userInfo.userId }" class="form-control" readonly   /> 
									 <label class="form-label">성명</label> 
										 <input type="text" value="${sessionScope.userInfo.employeeVO.empNameKo }" class="form-control" readonly />
									 <label class="form-label">영문 성명</label> 
										 <input type="text" value="${sessionScope.userInfo.employeeVO.empNameEn }" class="form-control" readonly />
								</div>
							</div>
							<div class="col">

<!-- 								<div class="mb-4"> -->
<!-- 									<label class="form-label">부서코드</label>  -->
<%-- 										<input type="text" 	value="${sessionScope.userInfo.employeeVO.deptCode }" class="form-control" readonly />  --%>
<!-- 									<label class="form-label">학년</label>  -->
<%-- 										<input type="text" value="${sessionScope.userInfo.employeeVO.academicVO.acaGrade }" class="form-control" readonly />  --%>
<!-- 									<label class="form-label">이수학기</label>  -->
<%-- 										<input type="text" value="${sessionScope.userInfo.employeeVO.academicVO.acaSemester }" class="form-control" readonly /> --%>
<!-- 								</div> -->
							</div>
						</div>
					</div>
				</c:if>
			</div>
		</div>
	</div>
</div>
	<div class="card-header flex-wrap d-flex justify-content-between border-0">
	<div>
		<h1 class="badge badge-success light border-2">인적정보</h1>
		</div>
		<ul class="nav nav-tabs dzm-tabs" id="myTab-2" role="tablist">
			<li class="nav-item" role="presentation">
			<button type="button" id="chgBtn" class="btn btn-success"><i class="fa-solid fa-gear me-2"></i>변경하기</button>
			</li>
		</ul>
	</div>

<div class="card bg-white">
		<div class="card-body text-center">
			<div class="profile-head">
				<div class="photo-content">
					<div class="author-profile">
	
						<div class="author-info"></div>
					</div>
				</div>
			<c:if test="${sessionScope.userInfo.userType eq 'STU'}">
					<div class="container" id="infoCont">
						<div class="row">
							<div class="col">
								<div class="mb-3">
									 <label class="form-label">생년월일</label> 
										 <input type="text" value="${sessionScope.userInfo.studentVO.stuReg1 }" class="form-control" readonly/>
									<label class="form-label">핸드폰번호</label>
										 <input type="text" id = "phone" value="${sessionScope.userInfo.studentVO.stuPhone }" class="form-control"> 
									 <label class="form-label">이메일</label> 
										 <input type="text" id = "email" value="${sessionScope.userInfo.studentVO.stuEmail }" class="form-control">
								</div>
							</div>
							<div class="col">
								<div class="mb-3">
									<label class="form-label">국가구분</label>
										 <input type="text" id ="nation" value="${sessionScope.userInfo.studentVO.stuNation }" class="form-control" readonly/> 
										<span class="input-group-append">
											<button type="button" class="btn btn-primary btn-xxs" onclick="DaumPostcode()">우편번호 찾기</button>
										 <input type="text" id = "postcode" value="${sessionScope.userInfo.studentVO.stuPostcode }" name="stuPostcode" class="form-control">
										</span>
									 <label class="form-label">주소</label> 
										 <input type="text" id = "addr1" value="${sessionScope.userInfo.studentVO.stuAddr1 }" name="stuAddr1" class="form-control">
									
								</div>
							</div>	
							<div class="col">
		
								<div class="mb-3">
									<label class="form-label">은행</label> 
										<input type="text" id = "bank" value="${sessionScope.userInfo.studentVO.stuBank }" class="form-control"/>
									<label class="form-label">계좌번호</label> 
										<input type="text" id = "account"  value="${sessionScope.userInfo.studentVO.stuAccount }" class="form-control"/> 
								 <label class="form-label">상세주소</label> 
										 <input type="text" id = "addr2" value="${sessionScope.userInfo.studentVO.stuAddr2 }" name="stuAddr2" class="form-control">
								</div>
							</div>
						</div>
					</div>
				</c:if>
			<c:if test="${sessionScope.userInfo.userType eq 'PRO'}">
					<div class="container" id="infoCont">
						<div class="row">
							<div class="col">
								<div class="mb-3">
									 <label class="form-label">생년월일</label> 
										 <input type="text" value="${sessionScope.userInfo.professorVO.proReg1 }" class="form-control" readonly/>
									<label class="form-label">핸드폰번호</label>
										 <input type="text" id = "phone" value="${sessionScope.userInfo.professorVO.proPhone }" class="form-control"> 
									 <label class="form-label">이메일</label> 
										 <input type="text" id = "email" value="${sessionScope.userInfo.professorVO.proEmail }" class="form-control">
								</div>
							</div>
							<div class="col">
								<div class="mb-3">
									<label class="form-label">국가구분</label>
										 <input type="text" id ="nation" value="${sessionScope.userInfo.professorVO.proNation }" class="form-control" readonly/> 
										<span class="input-group-append">
											<button type="button" class="btn btn-primary btn-xxs" onclick="DaumPostcode()">우편번호 찾기</button>
										 <input type="text" id = "postcode" value="${sessionScope.userInfo.professorVO.proPostcode }" name="stuPostcode" class="form-control">
										</span>
									 <label class="form-label">주소</label> 
										 <input type="text" id = "addr1" value="${sessionScope.userInfo.professorVO.proAddr1 }" name="stuAddr1" class="form-control">
									
								</div>
							</div>	
							<div class="col">
		
								<div class="mb-3">
									<label class="form-label">은행</label> 
										<input type="text" id = "bank" value="${sessionScope.userInfo.professorVO.proBank }" class="form-control"/>
									<label class="form-label">계좌번호</label> 
										<input type="text" id = "account"  value="${sessionScope.userInfo.professorVO.proAccount }" class="form-control"/> 
								 <label class="form-label">상세주소</label> 
										 <input type="text" id = "addr2" value="${sessionScope.userInfo.professorVO.proAddr2 }" name="stuAddr2" class="form-control">
								</div>
							</div>
						</div>
					</div>
				</c:if>
			<c:if test="${sessionScope.userInfo.userType eq 'EMP'}">
					<div class="container" id="infoCont">
						<div class="row">
							<div class="col">
								<div class="mb-3">
									 <label class="form-label">생년월일</label> 
										 <input type="text" value="${sessionScope.userInfo.employeeVO.empReg1 }" class="form-control" readonly/>
									<label class="form-label">핸드폰번호</label>
										 <input type="text" id = "phone" value="${sessionScope.userInfo.employeeVO.empPhone }" class="form-control"> 
									 <label class="form-label">이메일</label> 
										 <input type="text" id = "email" value="${sessionScope.userInfo.employeeVO.empEmail }" class="form-control">
								</div>
							</div>
							<div class="col">
								<div class="mb-3">
									<label class="form-label">국가구분</label>
										 <input type="text" id ="nation" value="${sessionScope.userInfo.employeeVO.empNation }" class="form-control" readonly/> 
										<span class="input-group-append">
											<button type="button" class="btn btn-primary btn-xxs" onclick="DaumPostcode()">우편번호 찾기</button>
										 <input type="text" id = "postcode" value="${sessionScope.userInfo.employeeVO.empPostcode }" name="stuPostcode" class="form-control">
										</span>
									 <label class="form-label">주소</label> 
										 <input type="text" id = "addr1" value="${sessionScope.userInfo.employeeVO.empAddr1 }" name="stuAddr1" class="form-control">
									
								</div>
							</div>	
							<div class="col">
		
								<div class="mb-3">
									<label class="form-label">은행</label> 
										<input type="text" id = "bank" value="${sessionScope.userInfo.employeeVO.empBank }" class="form-control"/>
									<label class="form-label">계좌번호</label> 
										<input type="text" id = "account"  value="${sessionScope.userInfo.employeeVO.empAccount }" class="form-control"/> 
								 <label class="form-label">상세주소</label> 
										 <input type="text" id = "addr2" value="${sessionScope.userInfo.employeeVO.empAddr2 }" name="stuAddr2" class="form-control">
								</div>
							</div>
						</div>
					</div>
				</c:if>
			</div>
		</div>
	</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
$(function() {
	$("#chgBtn").click(function(){
		
		
		var obj = {
				"userId" : '${userInfo.userId}',
				"userType" : '${userInfo.userType}',
				"phone" : $('#phone').val(),
				"email" : $('#email').val(),
				"postcode" : $('#postcode').val(),
				"addr1" : $('#addr1').val(),
				"addr2" : $('#addr2').val(),
				"bank" : $('#bank').val(),
				"account" : $('#account').val()
			}
		console.log("stuObj >>>> ", obj);
		$.ajax({
			type :"post",
			url : "/update",
			dataType : "text",
			data: obj,
			 success: function (res) {
				 console.log("res >>> ",res);
				 alert("변경되었습니다.");
				 $("#infoCont").ajax.reload();
			 },
			error: function(jqXHR, textStatus, errorThrown) {
				alert("ERROR : " + textStatus + " : " + errorThrown);
			}
		});
		
	});
});	

var inputFile = $("#inputFile");

inputFile.on("change", function(event){
	console.log("change event");
	
	var files = event.target.files;
	var file = files[0];
	var str = "";
	
	var formData = new FormData();
	// key : value 형태로 값이 추가된다.
	formData.append("file", file);
	
	
		$.ajax({
				type : "post",
				url : "/uploadAjax",
				data : formData,
				dataType : "text",
				processData : false,
				contentType : false,
				success : function(data){
					console.log("data >> ",data);
					if(checkImageType(data)) { // 이미지이면 이미지 태그를 이용한 출력형태
						str += "<div id='imgArea' class='mb-4'>";
						str += "<img src = '/displayFile?fileName=" + getThumbnailName(data)+ "'/>";
						str += "</div>";
					}  $("#imgArea").replaceWith(str);
				}
		});
});	

function getOriginalName(fileName){
	if(checkImageType(fileName)){
		return;
	}		
	var idx = fileName.indexOf("_") + 1;
	return fileName.substr(idx);
}
function getThumbnailName(fileName){
	var front = fileName.substr(0,12);
	var end = fileName.substr(12);
	
	console.log("front : " + front);
	console.log("end : " + end);
	
	return front + "s_" + end;
}

function checkImageType(fileName){
	var pattern = /jpg|gif|png|jpeg/i;
	return fileName.match(pattern); // 패턴과 일치하면 true (너 이미지 맞구나?)
}


function DaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('postcode').value = data.zonecode;
            document.getElementById("addr1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("addr2").focus();
        }
    }).open();
}


</script>