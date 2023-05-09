<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
#headerProfile{
    justify-content: left;
}
#profileImg {
    width: 50px;
    height: 50px;
    object-fit: cover;
    object-position: center 20%;
}
</style>
<!--**********************************
            Header start
        ***********************************-->
        <div class="header">
            <div class="header-content">
                <nav class="navbar navbar-expand">
                    <div class="collapse navbar-collapse justify-content-between">
                        <div class="header-left">
                     <div class="input-group search-area">
                        <span class="input-group-text" >
                        <a href="#" id="sch">
                           <svg width="19" height="19" viewBox="0 0 19 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                           <circle cx="8.78605" cy="8.78605" r="8.23951" stroke="white" stroke-linecap="round" stroke-linejoin="round"/>
                           <path d="M14.5168 14.9447L17.7471 18.1667" stroke="white" stroke-linecap="round" stroke-linejoin="round"/>
                           </svg>

                        </a></span>
                        <input type="text" id="txt" class="form-control" placeholder="Search">
                     </div>
                        </div>
                        <ul class="navbar-nav header-right">
                  	<!-- 알림 -->
					 <!-- 로그인  이동 -->
	       	         <li class="nav-item align-items-center" style="margin-left:10px;">
                        <span id="timeArea" style="color: #fff;"></span>
                        <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                        <a href="#" class="btn btn-warning btn-sm" id="extensionBtn">연장</a>
                     </li>  


					<li class="nav-item dropdown notification_dropdown">
                        <a class="nav-link" href="javascript:void(0);" role="button" data-bs-toggle="dropdown">
<!--                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"> -->
<!--                               <path d="M18 8C18 6.4087 17.3679 4.88258 16.2426 3.75736C15.1174 2.63214 13.5913 2 12 2C10.4087 2 8.88258 2.63214 7.75736 3.75736C6.63214 4.88258 6 6.4087 6 8C6 15 3 17 3 17H21C21 17 18 15 18 8Z" stroke="white" stroke-linecap="round" stroke-linejoin="round"></path> -->
<!--                               <path d="M13.73 21C13.5542 21.3031 13.3019 21.5547 12.9982 21.7295C12.6946 21.9044 12.3504 21.9965 12 21.9965C11.6496 21.9965 11.3054 21.9044 11.0018 21.7295C10.6982 21.5547 10.4458 21.3031 10.27 21" stroke="white" stroke-linecap="round" stroke-linejoin="round"></path> -->
<!--                            </svg> -->
						<i class="bi bi-bell" style="color: #ffffff;"></i>	
                        </a>
                        <div class="dropdown-menu dropdown-menu-end">
                           <div id="DZ_W_Notification1" class="widget-media dz-scroll p-3" style="height:380px;">
                              <ul class="timeline">
                                 <li>
                                    <div class="timeline-panel">
                                       <div class="media me-2">
                                          <img alt="image" width="50" src="${pageContext.request.contextPath}/resources/images/profile.png">
                                       </div>
                                       <div class="media-body">
                                          <h6 class="mb-1">Dr sultads Send you Photo</h6>
                                          <small class="d-block">29 July 2020 - 02:26 PM</small>
                                       </div>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="timeline-panel">
                                       <div class="media me-2 media-info">
                                          KG
                                       </div>
                                       <div class="media-body">
                                          <h6 class="mb-1">Resport created successfully</h6>
                                          <small class="d-block">29 July 2020 - 02:26 PM</small>
                                       </div>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="timeline-panel">
                                       <div class="media me-2 media-success">
                                          <i class="fa fa-home"></i>
                                       </div>
                                       <div class="media-body">
                                          <h6 class="mb-1">Reminder : Treatment Time!</h6>
                                          <small class="d-block">29 July 2020 - 02:26 PM</small>
                                       </div>
                                    </div>
                                 </li>
                                  <li>
                                    <div class="timeline-panel">
                                       <div class="media me-2">
                                          <img alt="image" width="50" src="${pageContext.request.contextPath}/resources/images/profile.png">
                                       </div>
                                       <div class="media-body">
                                          <h6 class="mb-1">Dr sultads Send you Photo</h6>
                                          <small class="d-block">29 July 2020 - 02:26 PM</small>
                                       </div>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="timeline-panel">
                                       <div class="media me-2 media-danger">
                                          KG
                                       </div>
                                       <div class="media-body">
                                          <h6 class="mb-1">Resport created successfully</h6>
                                          <small class="d-block">29 July 2020 - 02:26 PM</small>
                                       </div>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="timeline-panel">
                                       <div class="media me-2 media-primary">
                                          <i class="fa fa-home"></i>
                                       </div>
                                       <div class="media-body">
                                          <h6 class="mb-1">Reminder : Treatment Time!</h6>
                                          <small class="d-block">29 July 2020 - 02:26 PM</small>
                                       </div>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="timeline-panel">
                                       <div class="media me-2">
                                          <img alt="image" width="50" src="${pageContext.request.contextPath}/resources/images/profile.png">
                                       </div>
                                       <div class="media-body">
                                          <h6 class="mb-1">Dr sultads Send you Photo</h6>
                                          <small class="d-block">29 July 2020 - 02:26 PM</small>
                                       </div>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="timeline-panel">
                                       <div class="media me-2 media-info">
                                          KG
                                       </div>
                                       <div class="media-body">
                                          <h6 class="mb-1">Resport created successfully</h6>
                                          <small class="d-block">29 July 2020 - 02:26 PM</small>
                                       </div>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="timeline-panel">
                                       <div class="media me-2 media-success">
                                          <i class="fa fa-home"></i>
                                       </div>
                                       <div class="media-body">
                                          <h6 class="mb-1">Reminder : Treatment Time!</h6>
                                          <small class="d-block">29 July 2020 - 02:26 PM</small>
                                       </div>
                                    </div>
                                 </li>
                                  <li>
                                    <div class="timeline-panel">
                                       <div class="media me-2">
                                          <img alt="image" width="50" src="${pageContext.request.contextPath}/resources/images/profile.png">
                                       </div>
                                       <div class="media-body">
                                          <h6 class="mb-1">Dr sultads Send you Photo</h6>
                                          <small class="d-block">29 July 2020 - 02:26 PM</small>
                                       </div>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="timeline-panel">
                                       <div class="media me-2 media-danger">
                                          KG
                                       </div>
                                       <div class="media-body">
                                          <h6 class="mb-1">Resport created successfully</h6>
                                          <small class="d-block">29 July 2020 - 02:26 PM</small>
                                       </div>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="timeline-panel">
                                       <div class="media me-2 media-primary">
                                          <i class="fa fa-home"></i>
                                       </div>
                                       <div class="media-body">
                                          <h6 class="mb-1">Reminder : Treatment Time!</h6>
                                          <small class="d-block">29 July 2020 - 02:26 PM</small>
                                       </div>
                                    </div>
                                 </li>
                              </ul>
                           </div>
                           <a class="all-notification" href="javascript:void(0);">See all notifications <i class="ti-arrow-end"></i></a>
                        </div>
                     </li>
                     <!-- 알림 끝 -->
                     <!-- 채팅 시작 -->
                     <li class="nav-item dropdown notification_dropdown">
                        <a class="nav-link bell-link" href="javascript:void(0);">
<!-- 	                        <svg width="20" height="22" viewBox="0 0 22 20" fill="none" xmlns="http://www.w3.org/2000/svg"> -->
<!-- 	                        <path d="M16.9026 6.85114L12.4593 10.4642C11.6198 11.1302 10.4387 11.1302 9.59922 10.4642L5.11844 6.85114" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/> -->
<!-- 	                        <path fill-rule="evenodd" clip-rule="evenodd" d="M15.9089 19C18.9502 19.0084 21 16.5095 21 13.4384V6.57001C21 3.49883 18.9502 1 15.9089 1H6.09114C3.04979 1 1 3.49883 1 6.57001V13.4384C1 16.5095 3.04979 19.0084 6.09114 19H15.9089Z" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/> -->
<!-- 	                        </svg> -->
	                        <i class="fa-regular fa-comments" style="color: #ffffff;"></i>
	                      
                        </a>
                     </li>   
                     <!-- 채팅 끝 -->
                     
                     <!-- 학생포털 이동 -->
<!--                      <li class="nav-item align-items-center header-border" style="margin-left:10px;"> -->
<!--                         <a href="/home" class="btn btn-primary btn-sm">학생포털</a> -->
<!--                      </li>   -->



                     <!-- 사용자 -->
                     <li class="nav-item align-items-center header-border" style="margin-left:10px;">
                        <a href="/login" class="btn btn-primary btn-sm">로그아웃</a>
                     </li>   
                     <li class="nav-item ps-3">
                        <div class="dropdown header-profile2">
                           <a class="nav-link" href="javascript:void(0);" role="button"  data-bs-toggle="dropdown" aria-expanded="false">
                              <div class="header-info2 d-flex align-items-center">
                                 <div class="header-media">
                                    <img src="${pageContext.request.contextPath}/resources/images/profile.png" alt="">
                                 </div>
                                 <div class="header-info">
                                 <c:if test="${sessionScope.userInfo.userType eq 'STU' }">
                                    <h6>${sessionScope.userInfo.studentVO.stuNameKo }</h6>
                                    <p>${sessionScope.userInfo.studentVO.stuId }</p>
                                 </c:if>
                                 <c:if test="${sessionScope.userInfo.userType eq 'PRO' }">
                                    <h6>${sessionScope.userInfo.professorVO.proNameKo }</h6>
                                    <p>${sessionScope.userInfo.professorVO.proId }</p>
                                 </c:if>
                                 <c:if test="${sessionScope.userInfo.userType eq 'EMP' }">
                                    <h6>${sessionScope.userInfo.employeeVO.empNameKo }</h6>
                                    <p>${sessionScope.userInfo.employeeVO.empId }</p>
                                 </c:if>
                                 </div>
                                 
                              </div>
                           </a>
                           <div class="dropdown-menu dropdown-menu-end" style="">
                              <div class="card border-0 mb-0">
                                 <div class="card-header py-2" id="headerProfile">
                                    <div class="products-profile">
                                       <img src="${pageContext.request.contextPath}/resources/images/profile.png" class="avatar avatar-md" alt="">
                                    </div>
                                       <div style="margin-left:20px;">
                                          <c:if test="${sessionScope.userInfo.userType eq 'STU' }">
                                             <h6>${sessionScope.userInfo.studentVO.stuNameKo }</h6>
                                             <span>${sessionScope.userInfo.studentVO.stuId }</span>
                                          </c:if>
                                          <c:if test="${sessionScope.userInfo.userType eq 'PRO' }">
                                             <h6>${sessionScope.userInfo.professorVO.proNameKo }</h6>
                                             <span>${sessionScope.userInfo.professorVO.proId }</span>
                                          </c:if>
                                          <c:if test="${sessionScope.userInfo.userType eq 'EMP' }">
                                             <h6>${sessionScope.userInfo.employeeVO.empNameKo }</h6>
                                             <span>${sessionScope.userInfo.employeeVO.empId }</span>
                                          </c:if>
                                       </div>   
                                 </div>
                                 <div class="card-body px-0 py-2">
                                    <a href="#" class="dropdown-item ai-icon ">
                                       <svg  width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                       <path fill-rule="evenodd" clip-rule="evenodd" d="M11.9848 15.3462C8.11714 15.3462 4.81429 15.931 4.81429 18.2729C4.81429 20.6148 8.09619 21.2205 11.9848 21.2205C15.8524 21.2205 19.1543 20.6348 19.1543 18.2938C19.1543 15.9529 15.8733 15.3462 11.9848 15.3462Z" stroke="var(--primary)" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                       <path fill-rule="evenodd" clip-rule="evenodd" d="M11.9848 12.0059C14.5229 12.0059 16.58 9.94779 16.58 7.40969C16.58 4.8716 14.5229 2.81445 11.9848 2.81445C9.44667 2.81445 7.38857 4.8716 7.38857 7.40969C7.38 9.93922 9.42381 11.9973 11.9524 12.0059H11.9848Z" stroke="var(--primary)" stroke-width="1.42857" stroke-linecap="round" stroke-linejoin="round"/>
                                       </svg>

                                       <span class="ms-2">내정보 </span>
                                    </a>
                                    <!-- 채팅이나 쪽지 -->
                                    <a href="/msg/msgList" class="dropdown-item ai-icon ">
                                       <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                       <path d="M17.9026 8.85114L13.4593 12.4642C12.6198 13.1302 11.4387 13.1302 10.5992 12.4642L6.11844 8.85114" stroke="var(--primary)" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                       <path fill-rule="evenodd" clip-rule="evenodd" d="M16.9089 21C19.9502 21.0084 22 18.5095 22 15.4384V8.57001C22 5.49883 19.9502 3 16.9089 3H7.09114C4.04979 3 2 5.49883 2 8.57001V15.4384C2 18.5095 4.04979 21.0084 7.09114 21H16.9089Z" stroke="var(--primary)" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                       </svg>

                                       <span class="ms-2">쪽지 </span>
                                    </a>
                                    <!-- 알림 -->
                                    <a href="#.html" class="dropdown-item ai-icon ">
                                       <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                          <path fill-rule="evenodd" clip-rule="evenodd" d="M12 17.8476C17.6392 17.8476 20.2481 17.1242 20.5 14.2205C20.5 11.3188 18.6812 11.5054 18.6812 7.94511C18.6812 5.16414 16.0452 2 12 2C7.95477 2 5.31885 5.16414 5.31885 7.94511C5.31885 11.5054 3.5 11.3188 3.5 14.2205C3.75295 17.1352 6.36177 17.8476 12 17.8476Z" stroke="var(--primary)" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                          <path d="M14.3888 20.8572C13.0247 22.372 10.8967 22.3899 9.51947 20.8572" stroke="var(--primary)" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                       </svg>
                                       <span class="ms-2">알림 </span>
                                    </a>
                                 </div>
                                 
                                 <div class="card-footer px-0 py-2">
                                    <a href="/login" class="dropdown-item ai-icon">
                                       <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="var(--primary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path><polyline points="16 17 21 12 16 7"></polyline><line x1="21" y1="12" x2="9" y2="12"></line></svg>
                                       <span class="ms-2">Logout </span>
                                    </a>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </li>
                     <!-- 사용자 끝 -->
                        </ul>
                    </div>
            </nav>
         </div>
      </div>
                    
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->


<script>


// 로그인 시간 연장
let timer = function(time){
	let min =parseInt(time / 60);
	let sec = time % 60;
	
	min = min < 10 ? "0" + min : min;
	sec = sec < 10 ? "0" + sec : sec; 
	
	return min + " : " + sec;
}
const TIMEOUT = <%= session.getMaxInactiveInterval() %>
let time = TIMEOUT;
let timeArea = $("#timeArea");
jobId = setInterval(() => {
	
			if(time==0) {
				clearInterval(jobId);
			}else {
				timeArea.text(timer(--time));	
			}
		}, 1000);

$("#extensionBtn").on("click", function(){
	console.log("click");
	

	$.ajax({
		url: "/extensionLoginTime",
		type: "post",
		success : function(res){
			console.log("통신성공?", res);
			$("#timeArea").html("30 : 00");	
			time = 1800;
		}	
	});
		
});


	var userId = '${userInfo.userId}' ;

	//userId를 가지고 프로필 이미지 경로를 가져오는 함수!!
	var obj = {
		userId : '${userInfo.userId}',
		userType : '${userInfo.userType}'
	}
	function fetchProfileImage(userId) {
	    return $.ajax({
	        type: "post",
	        url: "/chat/chatMemProfile",
	        dataType: "json",
	        data: obj
	    }).then(function(profileRes) {
	        if(profileRes.profile != null){
	            let imgSrc = `${pageContext.request.contextPath}/resources/images/profile\${profileRes.profile.profilePath}\${profileRes.profile.profileName}`;
	            return imgSrc;
	        } else {
	            return null;
	        }
	    });
	}
fetchProfileImage(userId).then(function(imgSrc) {
      let str = "";
       if (imgSrc !=null) {
           $(".header-media").html(`<img src="\${imgSrc}" class="rounded-circle user_img_msg">`);
           $(".products-profile").html(`<img src="\${imgSrc}" id="profileImg"  class="rounded-circle user_img_msg" style="margin-left: 10px;">`);
       } else {
    	   
       }

});

</script>
