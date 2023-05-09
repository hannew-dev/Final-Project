<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 상담 신청 페이지  -->
<%-- ${userInfo } --%>
<style>
  #proListTbl{
    user-select: none;
  }

</style>
<div class="page-titles">
	<ol class="breadcrumb">
		<li>
			<h5 class="bc-title">상담</h5>
		</li>
		<li class="breadcrumb-item"><a href="#">
			<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
				<path fill-rule="evenodd" clip-rule="evenodd" d="M10.986 14.0673C7.4407 14.0673 4.41309 14.6034 4.41309 16.7501C4.41309 18.8969 7.4215 19.4521 10.986 19.4521C14.5313 19.4521 17.5581 18.9152 17.5581 16.7693C17.5581 14.6234 14.5505 14.0673 10.986 14.0673Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
				<path fill-rule="evenodd" clip-rule="evenodd" d="M10.986 11.0054C13.3126 11.0054 15.1983 9.11881 15.1983 6.79223C15.1983 4.46564 13.3126 2.57993 10.986 2.57993C8.65944 2.57993 6.77285 4.46564 6.77285 6.79223C6.76499 9.11096 8.63849 10.9975 10.9563 11.0054H10.986Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
			</svg> 상담조회
		</a></li>
		<li class="breadcrumb-item active"><a href="#">상담신청</a></li>
	</ol>
</div>
<div class="container-fluid">
<div class="row">
  <div class="col-md-4">
    <div class="card">
      <div class="card-header"
       style="padding-bottom:10px;">
          <h4><span style="font-size:18px; color: #f96d00">|</span><strong>&nbsp;교수목록</strong></h4>
      </div>

      <div class="card-body">
        <div class="row">
          <div class="table-responsive">
            <table class="table table-hover text-center" id="proListTbl">
              <thead>
                <tr>
                  <th>교수명</th>
                  <th>전공</th>
                  <th>연구실호수</th>
                  <th>연구실연락처</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${proInfoList }" var="proInfo">
                  <tr class="proInfo">
                    <input type="hidden" value="${proInfo.proId }" />
                    <td>${proInfo.proNameKo }</td>
                    <td>${proInfo.proMajor }</td>
                    <td>${proInfo.proLabNum }</td>
                    <td>${proInfo.proLabTel }</td>
                  </tr>
                </c:forEach>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="col-md-8">
    <div class="card">
      <div class="card-header" style="padding-bottom:10px;">
          <h4><span style="font-size:20px; color: #f96d00">|</span><strong>&nbsp;교수 시간표</strong></h4>
      </div>
      <div class="card-body">
        <div class="table table-responsive">
           	<div id="week" style="text-align: center; font-size: initial; margin-bottom: 10px;"></div>
          
          <div>
            <table class="table table-bordered text-center" id="timeTbl">
              <thead>
                <tr id="datTr">
                  <th style="width:14%;"></th>
                  <th>월</th>
                  <th>화</th>
                  <th>수</th>
                  <th>목</th>
                  <th>금</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td data-index="1" data-bs-toggle="tooltip" 
                  data-bs-title="9:00 ~ 10:00" 
                  data-bs-placement="left"
                  >1교시</td>
                  <td data-index="2"></td>
                  <td data-index="3"></td>
                  <td data-index="4"></td>
                  <td data-index="5"></td>
                  <td data-index="6"></td>
                </tr>
                <tr>
                  <td data-index="1" data-bs-toggle="tooltip" 
                  data-bs-title="10:00 ~ 11:00" 
                  data-bs-placement="left"
                  >2교시</td>
                  <td data-index="2"></td>
                  <td data-index="3"></td>
                  <td data-index="4"></td>
                  <td data-index="5"></td>
                  <td data-index="6"></td>
                </tr>
                <tr>
                  <td data-index="1" data-bs-toggle="tooltip" 
                  data-bs-title="11:00 ~ 12:00" 
                  data-bs-placement="left"
                  >3교시</td>
                  <td data-index="2"></td>
                  <td data-index="3"></td>
                  <td data-index="4"></td>
                  <td data-index="5"></td>
                  <td data-index="6"></td>
                </tr>
                <tr>
                  <td data-index="1" data-bs-toggle="tooltip" 
                  data-bs-title="12:00 ~ 13:00" 
                  data-bs-placement="left"
                  >4교시</td>
                  <td data-index="2"></td>
                  <td data-index="3"></td>
                  <td data-index="4"></td>
                  <td data-index="5"></td>
                  <td data-index="6"></td>
                </tr>
                <tr>
                  <td data-index="1" data-bs-toggle="tooltip" 
                  data-bs-title="13:00 ~ 14:00" 
                  data-bs-placement="left"
                  >5교시</td>
                  <td data-index="2"></td>
                  <td data-index="3"></td>
                  <td data-index="4"></td>
                  <td data-index="5"></td>
                  <td data-index="6"></td>
                </tr>
                <tr>
                  <td data-index="1" data-bs-toggle="tooltip" 
                  data-bs-title="14:00 ~ 15:00" 
                  data-bs-placement="left"
                  >6교시</td>
                  <td data-index="2"></td>
                  <td data-index="3"></td>
                  <td data-index="4"></td>
                  <td data-index="5"></td>
                  <td data-index="6"></td>
                </tr>
                <tr>
                  <td data-index="1" data-bs-toggle="tooltip" 
                  data-bs-title="15:00 ~ 16:00" 
                  data-bs-placement="left"
                  >7교시</td>
                  <td data-index="2"></td>
                  <td data-index="3"></td>
                  <td data-index="4"></td>
                  <td data-index="5"></td>
                  <td data-index="6"></td>
                </tr>
                <tr>
                  <td data-index="1" data-bs-toggle="tooltip" 
                  data-bs-title="16:00 ~ 17:00" 
                  data-bs-placement="left"
                  >8교시</td>
                  <td data-index="2"></td>
                  <td data-index="3"></td>
                  <td data-index="4"></td>
                  <td data-index="5"></td>
                  <td data-index="6"></td>
                </tr>
                <tr>
                  <td data-index="1" data-bs-toggle="tooltip" 
                  data-bs-title="17:00 ~ 18:00" 
                  data-bs-placement="left"
                  >9교시</td>
                  <td data-index="2"></td>
                  <td data-index="3"></td>
                  <td data-index="4"></td>
                  <td data-index="5"></td>
                  <td data-index="6"></td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>




<!-- 모달 시작 -->
<!-- Modal -->
<div class="modal fade" id="consultRegister">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">
		       <span style="font-size:20px; color: #f96d00">|</span>&nbsp;상담 신청
        </h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal">
        </button>
      </div>
      <!-- modal-body 시작 -->
      <div class="modal-body">
        <div class="card" style="border:none;">
          <div class="card-body">
            <div class="basic-form">
              <form>
                <div class="row">
                  <div class="mb-3 col-md-6">
                    <label class="form-label">교수명</label>
                    <input type="text" class="form-control" placeholder="교수명" name="proNameKo" id="proName" disabled="disabled">
                  </div>
                  <div class="mb-3 col-md-6">
                    <label class="form-label"><span class="text-danger">*</span>&nbsp; 상담구분</label>
                    <div class="dropdown bootstrap-select default-select form-control wide">
                      <select name="consInterview" id="interview" class="default-select form-control wide">
                        <option>선택</option>
                        <option value="Y" id="">대면</option>
                        <option value="N" id="">비대면</option>
                      </select>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="mb-3 col-md-6">
                    <label class="form-label">상담일자</label>
                    <input type="text" class="form-control" placeholder="상담일자" name="consDate" disabled="disabled">
                  </div>
                  <div class="mb-3 col-md-6">
                    <label>상담시간</label>
                    <div class="row">
                      <div class="col-md-5" style="padding-right:0;">
                        <input type="text" class="form-control" placeholder="시작시간" id="start" name="consStart" disabled="disabled">
                      </div>
                      <div class="col-md-1 text-center" style="margin-top:10px;">
                        ~
                      </div>
                      <div class="col-md-5" style="padding-right:0;">
                        <input type="text" class="form-control" placeholder="종료시간" id="end" name="consEnd" disabled="disabled">
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    <label class="form-label"><span class="text-danger">*</span>&nbsp; 상담사유</label>
                    <textarea name="consReqRsn" id="consReqRsn" class="form-txtarea form-control" cols="8" rows="10"></textarea>
                  </div>
                </div>
				<div style="text-align:right;margin-top:10px;">
			        <span class="text-danger">*</span> 필수 입력 항목
		        </div>
              </form>
            </div>
          </div>
        </div>
        <!-- card 끝 -->
      </div>
      <!-- modal body 끝 -->
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="reservation">예약</button>
        <button type="button" class="btn btn-danger light" id="closeBtn" data-bs-dismiss="modal">닫기</button>
      </div>
    </div>
    <!-- modal content 끝 -->
  </div>
</div>

</div>
<!-- fluid 끝 -->

<script>

  var days = []; // 그렇다면 전역변수, 현재 1번밖에 안씀

  $(function () {
    let WEEK_CODE = ["", "MON", "TUE", "WED", "THU", "FRI"];
    let TIME_CODE = ["H09", "H10", "H11", "H12", "H13", "H14", "H15", "H16", "H17", "H18", "H19"];
    let selectProInfo = null;
    let cells = [];
    let consultData = {};
    let timeTblTd = null;

	// 날짜 테이블 클릭 
    $("#timeTbl td").on("click", function (event) {
    	
      // 현재 날짜
      var sunnyNow = new Date();
      var sunnyMonth ="";
      var sunnyDate = "";
      if((sunnyNow.getMonth()+1) < 10){
        sunnyMonth = "0"+ (sunnyNow.getMonth()+1);
      }

      if(sunnyNow.getDate() < 10){
        sunnyDate = "0" + sunnyNow.getDate();
      }
      sunnyNow = sunnyMonth + sunnyDate;
//       alert(sunnyNow);
      
      var sunnyIndex = event.target.dataset.index -1;
      var headDate = $("#timeTbl th").eq(sunnyIndex).html().substr(0,5).replaceAll("/",""); 
//       alert($("#timeTbl th").eq(sunnyIndex).html().substr(0,5).replaceAll("/",""));

      if(headDate < sunnyNow){
    	Swal.fire({
   		   title :  '', 
   		   html : '<strong>오늘날짜(' + sunnyMonth + "/" + sunnyDate + ')이전은 신청 불가합니다!</strong>', 
   		   icon : 'warning' 
   		});
        //alert("이전 날짜는 안될껄용!!!");
        $('#consultRegister').modal('hide');
        return false;
      }


      if(!selectProInfo){
   	 	 Swal.fire({
   		   title :  '', 
   		   html : '<strong>상담 신청할 교수를 선택해주세요!</strong>', 
   		   icon : 'warning' 
   		});
       // alert("상담 신청할 교수를 선택해주세요.");
        return false;
      }   
      timeTblTd = $(this);  
      let index = $(this).index();
      console.log("요일 코드:", WEEK_CODE[$(this).index()]);
      console.log("endTime:", TIME_CODE[$(this).parent().index() + 1].substr(1));
	  
      let startTime = TIME_CODE[$(this).parent().index()].substr(1) + ":00";
      console.log(startTime);
      let endTime = TIME_CODE[$(this).parent().index() + 1].substr(1) + ":00";
      console.log(endTime);
      let day = $("#timeTbl").find(`th:eq(\${index})`).text();
      let proName = selectProInfo.find('td:eq(0)').text();

      $("#start").val(startTime);
      $("#end").val(endTime);
      $('input[name="consDate"]').val(day);
      $("#proName").val(proName);
      
      consultData.proId = selectProInfo.find('input:eq(0)').val();
      consultData.stuId = "${sessionScope.userInfo.userId}";
      consultData.consDate = "2023/"+day.substr(0,5);
      consultData.consStart = TIME_CODE[$(this).parent().index()];
      consultData.consEnd = TIME_CODE[$(this).parent().index()];
      consultData.consWeek = WEEK_CODE[$(this).index()];
      
    });
    
    // 상담 예약
    $(document).on("click", "#reservation", function(){
    	consultData.consReqRsn = $("#consReqRsn").val();
    	consultData.consInterview = $("#interview").val();
    	console.log("consultData:", consultData);
   	  
    	if($("#interview").val() == '선택' || $("#consReqRsn").val() == "" ){
    		Swal.fire({
    	   		   title :  '', 
    	   		   html : '<strong>필수 항목을 입력해주세요!</strong>', 
    	   		   icon : 'warning' 
   	   		});
    		//alert("필수 항목을 입력해주세요!");
          return false;
        }

    	
    	$.ajax({
    		type: "post",
    		url: "/consult/insert",
    		data: consultData,
    		success: function(res){
    			console.log("상담 예약 성공");
    			$('#consultRegister').modal('hide');
    			Swal.fire({
    		   		   title :  '상담 예약 완료', 
    		   		   html : '상담 예약을 완료하였습니다!', 
    		   		   icon : 'success' 
    		   	});
    			//alert("예약이 성공하였습니다!");
          timeTblTd.css("background-color", "#132743");
    		}
    	});
    });

    // select 박스 값 가져오기
    $("#interview").on("change", function () {
      const selectVal = $(this).val();
      console.log(selectVal)
    });

    // tr태그에 오늘 날짜를 기준으로 5일치 일수를 적용한다.
    $("#datTr th").map(function (idx, element) {
      var val = selectWeek();
      let dayCode = ["", "월", "화", "수", "목", "금"];
      if (idx > 0) {
        element.innerHTML = val[idx] + "(" + dayCode[idx] + ")";
      }

    });

  

    /* 선택한 tr 배경색 넣기 */
    function trBgDraw(p_this) {
      p_this.css("background-color", "lightblue");
    }

    /* 선택한 tr 배경색 리셋 */
    function trBgDrawReset(p_this) {
      p_this.css("background-color", "white");
    }

    // 시간표에 교수 수업일정 표시하는 함수
    function displayProTime(proTime){
      let table = document.getElementById("timeTbl");

      for(i=0; i<proTime.length; i++){
        let startRow = (parseInt(proTime[i].startTime.substr(1)) - 9) + 1;
        let endRow = (parseInt(proTime[i].endTime.substr(1)) - 9) + 1;
        let dayCol = 0;
  
        switch (proTime[i].weekCode) {
          case "MON":
            dayCol = 1;
            break;
          case "TUE":
            dayCol = 2;
            break;
          case "WED":
            dayCol = 3;
            break;
          case "THU":
            dayCol = 4;
            break;
          case "FRI":
            dayCol = 5;
            break;
          default:
            return;
        }

        for (let j = startRow; j <= endRow; j++) {
          let cell = table.rows[j].cells[dayCol];
          // 해당 셀 모달창 막기
          $(cell).removeAttr("data-bs-toggle").removeAttr("data-bs-target");
          // 현재 cell들의 정보를 담기
          cells.push($(cell)); 
          cell.style.backgroundColor = "#75a9f1e3";
        }
      }
    }
    
    // 시간표에 상담예약 일정 표시하는 함수
    function displayProConsTime(proConsTime){
      let table = document.getElementById("timeTbl");

      for(i=0; i<proConsTime.length; i++){
       // console.log(proConsTime[i].startTime);
       // console.log(proConsTime[i].endTime);
        
        let startRow = (parseInt(proConsTime[i].startTime.substr(1)) - 9) + 1;
        let endRow = (parseInt(proConsTime[i].endTime.substr(1)) - 9) + 1;
        let dayCol = 0;
  
        switch (proConsTime[i].weekCode) {
          case "MON":
            dayCol = 1;
            break;
          case "TUE":
            dayCol = 2;
            break;
          case "WED":
            dayCol = 3;
            break;
          case "THU":
            dayCol = 4;
            break;
          case "FRI":
            dayCol = 5;
            break;
          default:
            return;
        }

        for (let j = startRow; j <= endRow; j++) {
          let cell = table.rows[j].cells[dayCol];
          // 해당 셀 모달창 막기
          $(cell).removeAttr("data-bs-toggle").removeAttr("data-bs-target");
          // 현재 cell들의 정보를 담기
          cells.push($(cell)); 
          cell.style.backgroundColor = "#204170";
        }
        
      }
    }

    // 이전에 담아둔 셀들 모달창 다시 띄우게 하기
    function cellModal(p_cells){
      for(i=0; i<p_cells.length; i++){
        p_cells[i].attr("data-bs-toggle", "modal").attr("data-bs-target", "#consultRegister");
      }
    }

    // 시간표 배경색 리셋 함수
    function resetTimeTbl() {
      let table = document.getElementById("timeTbl");
      for (let i = 1; i < table.rows.length; i++) {
        for (let j = 1; j < table.rows[i].cells.length; j++) {
          table.rows[i].cells[j].innerHTML = "";
          table.rows[i].cells[j].style.backgroundColor = "white";
        }
      }
    }
    
    // 목록에서 교수 클릭시 작동 함수
    $(document).on("click", ".proInfo", function(){
    
            // 현재 날짜
      var sunnyNow = new Date();
      var sunnyMonth ="";
      var sunnyDate = "";
      if((sunnyNow.getMonth()+1) < 10){
        sunnyMonth = "0"+ (sunnyNow.getMonth()+1);
      }

      if(sunnyNow.getDate() < 10){
        sunnyDate = "0" + sunnyNow.getDate();
      }
      sunnyNow = sunnyMonth + sunnyDate;

      var ths = document.querySelectorAll("#timeTbl th");
      var trs = document.querySelectorAll("#timeTbl tr");
      console.log(">>>>>", $(trs), trs);
      for(let i=0; i<ths.length; i++){
         if(ths[i].innerHTML.substr(0,5).replaceAll("/","") >= sunnyNow ){
           for(let j=0; j<trs.length; j++){
               let tds = trs[j].children;
               for(let k = i; k<tds.length; k++){
                  console.log("kkkk",tds[k]);
                  $(tds[k]).attr("data-bs-toggle", "modal").attr("data-bs-target", "#consultRegister")
               }   
           }
           break;
         }
      }


      //$("#timeTbl td").attr("data-bs-toggle", "modal").attr("data-bs-target", "#consultRegister");

      if(selectProInfo){  // 목록에서 교수 선택한적 있으면 초기화
        trBgDrawReset(selectProInfo);
        resetTimeTbl();
        cellModal(cells);
      }

      let proId = $(this).find('input:eq(0)').val();
      selectProInfo = $(this);

      trBgDraw($(this));

      // 교수 강의 시간표 가져오기
      $.ajax({
        type: "get",
        url: `/consult/proTimeTbl/\${proId}`,
        success: function(res){
          console.log("교수 시간 목록:",res);
          displayProTime(res);
        }
      });

      // 교수의 상담 예약 시간 가져오기
      $.ajax({
        type: "get",
        url: `/consult/proConsTimeTbl/\${proId}`,
        success: function(res){
          console.log("교수 상담예약 목록:", res);
          console.log("현재 5일치 날짜:", days.slice(1, 6));
          let week = days.slice(1, 6);
          let searchRes = [];
          let cnt = 0;

          for(i=0; i<res.length; i++){
            if(week.includes(res[i].consDate)){
              cnt += 1;
              searchRes.push(res[i]);
            } 
          }
          if(cnt > 0) displayProConsTime(searchRes);
        }
      });

  	});

    // 날짜 계산 함수
    function selectWeek() {

      // 오늘의 요일 및 날짜
      var currentDay = new Date();
      var theYear = currentDay.getFullYear();
      var theMonth = Number(currentDay.getMonth()) + 1;
      var theDate = Number(currentDay.getDate());
      var theDay = Number(currentDay.getDay());

      // 날짜 업데이트
      var newYear, newMonth, newDate;

      // 이번달 마지막날
      var nowLast = new Date();
      nowLast.setMonth(nowLast.getMonth() + 1);
      var nowLastDay = new Date(nowLast.getYear(), nowLast.getMonth(), "");
      nowLastDay = nowLastDay.getDate();

      var lastDay; // 이전 달 마지막날 파악

      for (var i = -theDay; i < (theDay - 7) * -1; i++) {

        newYear = theYear;
        newDate = theDate;
        newMonth = theMonth;

        //첫주 일때
        if (theDate + i < 1) {

          if (theMonth == 1) { // 1월 첫째주 일때
            lastDay = new Date(Number(currentDay.getFullYear()) - 1, Number(currentDay.getMonth()) + 12, "");
          } else { // 1월 첫째주가 아닐때
            lastDay = new Date(currentDay.getFullYear(), currentDay.getMonth(), "");
          }

          newYear = lastDay.getFullYear();
          newMonth = lastDay.getMonth();
          newDate = Number(lastDay.getDate()) + i;

          //마지막주 일때
        } else if (theDate + i > nowLastDay) {

          if (theMonth == 12) { // 12월 마지막주 일때
            newYear = Number(theYear) + 1;
          }

          newMonth = Number(theMonth) + 1;
          newDate = i;
        } else {
          newDate = (newDate + i);
        }

        // yyyy-mm-dd 형식으로
        if (String(newDate).length < 2) {
          newDate = "0" + String(newDate);
        }
        if (String(newMonth).length < 2) {
          newMonth = "0" + String(newMonth);
        }

        //이번주 7일의 날짜를 days에 담는다.
        days.push(newMonth + "/" + newDate);
      }

      return days;
    }

});

// 해당월 주차별 표시
function getWeekOfMonth(date) {
	var firstDayOfMonth = new Date(date.getFullYear(), date.getMonth(), 1)
			.getDay();
	var dayOfWeek = date.getDay();
	var adjustedDayOfWeek = (dayOfWeek === 0) ? 7 : dayOfWeek; // 일요일은 0이 아닌 7로 처리
	var daysInFirstWeek = 7 - firstDayOfMonth + 1;
	var daysSinceFirstWeek = date.getDate() - daysInFirstWeek;
	return Math.ceil(daysSinceFirstWeek / 7) + 1;
}

window.onload = function() {
	var date = new Date(); // 현재 날짜와 시간
	var weekOfMonth = getWeekOfMonth(date);

	// div 영역에 텍스트로 주차를 출력
	var div = document.getElementById("week");
	div.innerText = date.getFullYear() + "년 " + (date.getMonth() + 1)
			+ "월 " + weekOfMonth + "주차";
}
</script>