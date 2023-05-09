<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
  #clock {
    font-size: 1.3em;
    text-align: end;
    color: black;
    /* 오렌지색으로 변경 */
    background-color: #ffffff;
    /* 배경색상 변경 */
  }

  tr {
    user-select: none;
  }

  #timeTbl th,
  #lectureTbl th,
  #basketTbl th {
    padding: 0.5rem 0.2rem;
  }

  #lectureTbl,
  #basketTbl{
    text-align: center;
  }

  #timeTbl {
    text-align: center;
  }

  #lectureTbl thead th,
  #basketTbl thead th {
    position: sticky;
    top: 0;
  }

  #basketTbl th,
  #lectureTbl th {
    background-color: #eee;
  }

  #lectureTbl td {
/*     padding-top: 0.3rem; */ 
/*     padding-bottom: 0.3rem; */
    padding: 0.5rem 0.2rem;
  }

  #timeTbl td,
  #basketTbl td {
    padding: 0.5rem 0.2rem;
  }

  .tblDiv1 {
       height: 360px;
/*     border: 1px solid rgb(190, 190, 190); */ 
  }

  .tblDiv2 {
    height: 360px;
/*     border: 1px solid rgb(190, 190, 190); */
  }

  #basketTbl tbody tr td:nth-child(8):hover {
    background-color: #28a745;
    color: #fff;
    cursor: pointer;
  }

  #basketTbl tbody tr td:nth-child(9):hover {
    background-color: #dc3545;
    color: #fff;
    cursor: pointer;
  }

  #basketTbl th:nth-child(2) {
  position: sticky;
  left: 0;
  z-index: 1;
  background-color: #eee;
  }
  #basketTbl td:nth-child(2) {
  position: sticky;
  left: 0;
  z-index: 1;
  }

</style>

<!-- 페이지 타이틀 -->
<div class="page-titles">
  <ol class="breadcrumb">
    <li><h5 class="bc-title">수강정보</h5></li>
    <li class="breadcrumb-item"><a href="javascript:void(0)">
      <svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
		 <path d="M6.46932 12.2102H0.693665" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
	 	 <path d="M9.04547 3.32535H14.8211" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
		 <path fill-rule="evenodd" clip-rule="evenodd" d="M4.99912 3.27573C4.99912 2.08805 4.02914 1.125 2.8329 1.125C1.63667 1.125 0.666687 2.08805 0.666687 3.27573C0.666687 4.46342 1.63667 5.42647 2.8329 5.42647C4.02914 5.42647 4.99912 4.46342 4.99912 3.27573Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
		 <path fill-rule="evenodd" clip-rule="evenodd" d="M15.3333 12.1743C15.3333 10.9866 14.3641 10.0235 13.1679 10.0235C11.9709 10.0235 11.0009 10.9866 11.0009 12.1743C11.0009 13.3619 11.9709 14.325 13.1679 14.325C14.3641 14.325 15.3333 13.3619 15.3333 12.1743Z" stroke="#888888" stroke-linecap="round" stroke-linejoin="round"></path>
	 </svg>
      수강 </a>
    </li>
    <li class="breadcrumb-item active"><a href="/course/main">수강신청</a></li>
  </ol>
</div>
<div class="container-fluid">
  <div class="row">
	  <!-- 표현하고자 하는 내용 넣기 -->
	  <div class="card p-2">
	    <div class="card-body p-1">
	      <div class="row m-0 p-0 d-flex justify-content-center" style="background-color: white;">
	        <div class="row d-flex justify-content-center p-0">
	          <div class="row my-2 ps-0 d-flex align-items-center">
	            <div class="col-4">
	              <div class="input-group">
	                <input type="text" class="form-control form-control-xl" id="searchWord" placeholder="과목명 검색">
	                <button class="btn btn-xl btn-outline-dark" type="button" id="searchBtn">검색</button>
	              </div>
	            </div>
	            <div class="col-3">
	              <select class="form-select form-select-lg" id="deptCode" aria-label="Default select example">
	                <option selected value="all">학과</option>
	                <c:forEach items="${deptList }" var="dept">
	                  <option value="${dept.deptCode }">${dept.deptName }</option>
	                </c:forEach>
	              </select>
	            </div>
	            <div class="col-3">
<!-- 	              <button type="button" class="btn btn-outline-primary btn-xl fs-5" id="addBtn"> -->
<!-- 	                <i class="bi bi-bag-plus-fill"></i> 과목담기</button> -->
	              <button type="button" class="btn btn-primary btn-xl fs-5" id="addBtn">
	                <i class="fa-solid fa-cart-arrow-down" style="font-size:18px;"></i> 과목담기</button>
	            </div>
	            <div class="col-2 d-flex justify-content-end">
	              <i class="fa-regular fa-clock"></i><div id="clock"></div>
	            </div>
	          </div>
	          <div class="row">
	            <div class="table-responsive p-0 tblDiv1">
	              <table class="table table-sm table-hover table-bordered" id="lectureTbl">
	                <thead>
	                  <tr class="table-active">
	                    <th>코드</th>
	                    <th>과목명</th>
	                    <th>분반</th>
	                    <th>담당교수</th>
	                    <th>대상학년</th>
	                    <th>학점</th>
	                    <th>개설학과</th>
	                    <th>정원</th>
	                    <th>신청인원</th>
	                  </tr>
	                </thead>
	                <tbody>
	                  <c:forEach items="${courseOpenList }" var="course" varStatus="stat">
	                    <tr class="lectureTr"
	                    data-lec-code="${course.lecCode }" 
	                    data-start-time="${course.lrsStart}"
	                    data-end-time="${course.lrsEnd}"
	                    data-week-code="${course.weekCode}"
	                    data-isfull="0">
	                    <td>${course.subCode }</td>
	                    <td>${course.subName }</td>
	                    <td>${course.lecDivide }</td>
	                    <td>${course.proNameKo }</td>
	                    <td>${course.lecGrade }</td>
	                    <td>${course.subCredit }</td>
	                    <td>${course.deptName }</td>
	                    <td>${course.lecQuota }</td>
	                    <c:choose>
	                      <c:when test="${course.subApplicant >= course.lecQuota}">
	                        <td style="background-color: #FF5A5A;">${course.subApplicant }</td>
	                      </c:when>
	                      <c:otherwise>
	                        <td>${course.subApplicant }</td>
	                      </c:otherwise>
	                    </c:choose>
	                  </tr>
	                  </c:forEach>
	                </tbody>
	              </table>
	            </div>
	          </div>
	          <div class="row">
	            <div class="col-6">
	              <div class="row">
	                <div class="col-7 ps-0">
	                  <h5 style="margin-bottom: 5px;"><span style="font-size:20px; color: #f96d00;">|</span><strong>&nbsp;수강신청 목록</strong></h5>
	                </div>
	                <div class="col-5 d-flex justify-content-end align-items-center">
	                  <span style="font-size: 16px;">수강학점 : <strong><span id="totCredit" style="color:#f95959;">0</span></strong>점</span>
	                </div>
	              </div>
	              <div class="row mb-2">
	                <div class="table-responsive ps-0 tblDiv2">
	                  <table class="table table-sm table-hover table-bordered" id="basketTbl">
	                    <thead>
	                      <tr class="table-active">
	                        <th>코드</th>
	                        <th>과목명</th>
	                        <th>분반</th>
	                        <th>담당교수</th>
	                        <th>대상학년</th>
	                        <th>학점</th>
	                        <th>개설학과</th>
	                        <th>신청</th>
	                        <th>취소</th>
	                      </tr>
	                    </thead>
	                    <tbody>
	                      <c:if test="${not empty basketList }">
	                        <c:forEach items="${basketList }" var="basket">
	                          <tr data-lec-code="${basket.lecCode }" data-start-time="${basket.lrsStart}" data-end-time="${basket.lrsEnd}"
	                            data-week-code="${basket.weekCode}" data-add-status="${basket.addStatus }">
	                            <td>${basket.subCode }</td>
	                            <td>${basket.subName }</td>
	                            <td>${basket.lecDivide }</td>
	                            <td>${basket.proNameKo }</td>
	                            <td>${basket.lecGrade }</td>
	                            <td>${basket.subCredit }</td>
	                            <td>${basket.deptName }</td>
	                            <c:choose>
	                              <c:when test="${basket.addStatus eq '1' }">
	                                <td style="background-color: #28a745; color: #fff; cursor: auto;" onclick="void(0)">완료</td>
	                              </c:when>
	                              <c:otherwise>
	                                <td class="couApply">신청</td>
	                              </c:otherwise>
	                            </c:choose>
	                            <td class="couCancel">취소</td>
	                          </tr>
	                        </c:forEach>
	                      </c:if>
	                    </tbody>
	                  </table>
	                </div>
	              </div>
	            </div>
	            <div class="col-6">
	              <div class="row">
	                <h5 class="ps-0" style="margin-bottom: 5px;"><span style="font-size:20px; color: #f96d00;">|</span><strong>&nbsp;시간표</strong></h5>
	              </div>
	              <div class="row mb-2">
	                <div class="table-responsive ps-1 pe-0">
	                  <table class="table table-bordered" id="timeTbl">
	                    <thead>
	                      <tr class="bg-light">
	                        <th style="width: 10%;"></th>
	                        <th style="width: 18%;">월</th>
	                        <th style="width: 18%;">화</th>
	                        <th style="width: 18%;">수</th>
	                        <th style="width: 18%;">목</th>
	                        <th style="width: 18%;">금</th>
	                      </tr>
	                    </thead>
	                    <tbody>
	                      <tr>
	                        <td data-bs-toggle="tooltip" 
	                        data-bs-title="9:00 ~ 10:00" 
	                        data-bs-placement="left"
	                        >1교시</td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                      </tr>
	                      <tr>
	                        <td data-bs-toggle="tooltip" 
	                        data-bs-title="10:00 ~ 11:00" 
	                        data-bs-placement="left"
	                        >2교시</td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                      </tr>
	                      <tr>
	                        <td data-bs-toggle="tooltip" 
	                        data-bs-title="11:00 ~ 12:00" 
	                        data-bs-placement="left"
	                        >3교시</td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                      </tr>
	                      <tr>
	                        <td data-bs-toggle="tooltip" 
	                        data-bs-title="12:00 ~ 13:00" 
	                        data-bs-placement="left"
	                        >4교시</td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                      </tr>
	                      <tr>
	                        <td data-bs-toggle="tooltip" 
	                        data-bs-title="13:00 ~ 14:00" 
	                        data-bs-placement="left"
	                        >5교시</td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                      </tr>
	                      <tr>
	                        <td data-bs-toggle="tooltip" 
	                        data-bs-title="14:00 ~ 15:00" 
	                        data-bs-placement="left"
	                        >6교시</td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                      </tr>
	                      <tr>
	                        <td data-bs-toggle="tooltip" 
	                        data-bs-title="15:00 ~ 16:00" 
	                        data-bs-placement="left"
	                        >7교시</td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                      </tr>
	                      <tr>
	                        <td data-bs-toggle="tooltip" 
	                        data-bs-title="16:00 ~ 17:00" 
	                        data-bs-placement="left"
	                        >8교시</td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                      </tr>
	                      <tr>
	                        <td data-bs-toggle="tooltip" 
	                        data-bs-title="17:00 ~ 18:00" 
	                        data-bs-placement="left"
	                        >9교시</td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                        <td></td>
	                      </tr>
	                    </tbody>
	                  </table>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</div> 
</div>


<script>
  
  $(function () {

    /* 웹소켓 처리 */
    let socket = new WebSocket(`ws://192.168.34.75/courseAppl.do/${sessionScope.userInfo.userId}`);

    socket.onopen = function(event) { // 웹소켓 연결 성공 시 트리거
      console.log("수강신청 페이지 접속 성공>>>>>>", event);
      
    };

    socket.onmessage = function(event){
      let lecCode = event.data;
      console.log("웹소켓->클라", lecCode);
      let findLecture = $("#lectureTbl tr").filter(function() {
        return $(this).data("lecCode") === lecCode.substr(0, lecCode.length - 1);
      });
      console.log("수강신청 목록에서 바구니 신청/취소한 과목 객체:",findLecture);
      // console.log("lecCode 자른 값: ", lecCode.substr(8));

      if(lecCode.substr(8) == 'A'){ // 수강 신청일 경우 인원 +1
        findLecture.find('td:eq(8)').text(parseInt(findLecture.find('td:eq(8)').text())+1);

        let totCount = parseInt(findLecture.find('td:eq(7)').text());   // 정원
        let applCount = parseInt(findLecture.find('td:eq(8)').text());  // 신청인원
        if(applCount >= totCount){
          findLecture.find('td:eq(8)').css("background-color", "#FF5A5A");
        }
      }
      if(lecCode.substr(8) == 'C'){ // 수강 취소일 경우 인원 -1
        findLecture.find('td:eq(8)').text(parseInt(findLecture.find('td:eq(8)').text())-1);
        findLecture.find('td:eq(8)').attr("style", "");
      }
    };

    let courseData = {};
    let lecInfo = null;
    let basket = [];
    let course = {};
    let totCredit = parseInt($("#totCredit").text());
    let COLOR_SET = ["rgb(249,198,122)","rgb(237,157,186)","rgb(163,199,231)","rgb(242,161,118)","rgb(223,132,167)",
    			"rgb(154,215,220)", "rgb(128,198,187)","rgb(249,198,122)","rgb(190,218,133)","rgb(239,136,139)"];

    /* 시계 기능 */
    function displayTime() {
      var date = new Date();
      var time = date.toLocaleTimeString();
      document.getElementById("clock").innerHTML = time;
    }
    setInterval(displayTime, 1000);

    /* 페이지 로드시 장바구니와 시간표 셋팅 */
    $(document).ready(function(){
      jsonString = ${basketJson};
      basket = jsonString;
      console.log("페이지 로드 장바구니 목록:", basket);
      displayLecInfo(basket);
      for(i=0; i<basket.length; i++){
        totCredit += parseInt(basket[i].subCredit);
      }
      $("#totCredit").text(totCredit);

    });

    /* 과목목록테이블 th 클릭시 정렬 기능 */
    const tableHeaders = document.querySelectorAll('#lectureTbl th');
    tableHeaders.forEach(header => {
      header.addEventListener('click', () => {
        const tableBody = document.querySelector('#lectureTbl tbody');
        const tableRows = Array.from(tableBody.querySelectorAll('tr'));

        const index = header.cellIndex;
        const ascending = header.dataset.sorted === 'asc';

        header.dataset.sorted = ascending ? 'desc' : 'asc';

        const sortedRows = tableRows.sort((a, b) => {
          const aValue = a.cells[index].textContent;
          const bValue = b.cells[index].textContent;
          return ascending ? aValue.localeCompare(bValue) : bValue.localeCompare(aValue);
        });

        tableBody.innerHTML = '';
        sortedRows.forEach(row => tableBody.appendChild(row));
      });
    });

    /* 시간표 테두리 그리기 */
    function lineDraw(startTime, endTime, dayOfWeek) {
      var table = document.getElementById("timeTbl");
      var startRow = (startTime - 9) + 1;
      var endRow = (endTime - 9) + 1;
      var dayCol = 0;

      switch (dayOfWeek) {
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

      for (var i = startRow; i <= endRow; i++) {
        var cell = table.rows[i].cells[dayCol];

        if(startRow == endRow){
          cell.style.border = "2px solid red";
        }
        else if (i == startRow) {
          cell.style.border = "2px solid red";
          cell.style.borderBottom = "none";
        } else if (i == endRow) {
          cell.style.border = "2px solid red";
          cell.style.borderTop = "none";
        } else {
          cell.style.border = "2px solid red";
          cell.style.borderTop = "none";
          cell.style.borderBottom = "none";
        }
      }
    }

    /* 시간표 테두리 리셋 */
    function lineDrawReset(startTime, endTime, dayOfWeek) {
      var table = document.getElementById("timeTbl");
      var startRow = (startTime - 9) + 1;
      var endRow = (endTime - 9) + 1;
      var dayCol = 0;

      switch (dayOfWeek) {
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

      for (var i = startRow; i <= endRow; i++) {
        var cell = table.rows[i].cells[dayCol];
        if (i == startRow) {
          cell.style.border = "1px solid #E6E6E6";
          cell.style.borderBottom = "none";
        } else if (i == endRow) {
          cell.style.border = "1px solid #E6E6E6";
          cell.style.borderTop = "none";
        } else {
          cell.style.border = "1px solid #E6E6E6";
          cell.style.borderTop = "none";
          cell.style.borderBottom = "none";
        }
      }
    }

    /* 선택한 tr 배경색 넣기 */
    function trBgDraw(p_this) {
      p_this.css("background-color", "lightblue");
    }

    /* 선택한 tr 배경색 리셋 */
    function trBgDrawReset(p_this) {
      p_this.css("background-color", "white");
    }

    /* tr 클릭시 시간표에 테두리 그려주는 함수 */
    function selectTr(p_this) {
      let startTime = p_this.data("startTime").substr(1);
      let endTime = p_this.data("endTime").substr(1);
      let weekCode = p_this.data("weekCode");
      console.log("selectTr:", p_this);
      console.log("startTime:", startTime);
      console.log("endTime:", endTime);
      console.log("weekCode:", weekCode);
      if (!lecInfo) { // 과목 목록 클릭시 화면 리로드 후 처음 눌렀을 때....
        lineDraw(startTime, endTime, weekCode);
        lecInfo = p_this;
      } else if (lecInfo) { // 과목 목록 클릭시 두번째 눌렀을 때 (이전에 누른 과목이 있으면...)
        let preStartTime = lecInfo.data("startTime").substr(1);
        let preEndTime = lecInfo.data("endTime").substr(1);
        let preWeekCode = lecInfo.data("weekCode");

        lineDrawReset(preStartTime, preEndTime, preWeekCode);
        lineDraw(startTime, endTime, weekCode);
        lecInfo = p_this; // 현재 누른 과목 정보로 바꿔 담음
      }
    }

    /* 과목목록에서 과목 하나 클릭시 이벤트*/
    $(document).on('click', '#lectureTbl .lectureTr', function () {
      console.log("tr 클릭", $(this));
      if (lecInfo) {
        trBgDrawReset(lecInfo);
      }
      trBgDraw($(this));
      selectTr($(this));

    });

    /* 과목신청시 장바구니 중복 신청여부 체크 함수 */
    function dupl_check(p_lecInfo) {
      for(i=0; i < basket.length; i++){
        if(p_lecInfo.data("lecCode") == basket[i].lecCode){
          return true;
        }
      }
    }

    /* 장바구니에 과목 추가시 동일 요일 시간대 강의 비교하는 함수 */
    function checkOverlap(course, basket) {
      for (let i = 0; i < basket.length; i++) {
        if ((course.lrsStart >= basket[i].lrsStart && course.lrsStart < basket[i].lrsEnd) ||
          (course.lrsEnd > basket[i].lrsStart && course.lrsEnd <= basket[i].lrsEnd) ||
          (course.lrsStart <= basket[i].lrsStart && course.lrsEnd >= basket[i].lrsEnd)) {
          if (course.weekCode === basket[i].weekCode) {
            return false;
          }
        }
      }
      return true;
    }

    /* 시간표에 과목명, 분반, 교수명, 배경색 표시하는 함수 */
    function displayLecInfo(p_basket){
      resetTimeTbl();
      let table = document.getElementById("timeTbl");
      let basketTbl = document.getElementById("basketTbl");

      for(i=0; i<p_basket.length; i++){
        let startRow = (parseInt(p_basket[i].lrsStart.substr(1)) - 9) + 1;
        let endRow = (parseInt(p_basket[i].lrsEnd.substr(1)) - 9) + 1;
        let dayCol = 0;
  
        switch (p_basket[i].weekCode) {
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
  
        let subName = p_basket[i].subName;
        let lecDivide = p_basket[i].lecDivide+"분반";
        let proName = p_basket[i].proNameKo;
        let credit = parseInt(p_basket[i].subCredit);
        let color = COLOR_SET[i%COLOR_SET.length];
        
        // 시간표에 강의명, 분반, 교수명, 과목별 배경색 표시
        if(credit == 1){  // 1학점 강의일 때
          for (let j = startRow; j <= endRow; j++) {
            let cell = table.rows[j].cells[dayCol];
            $(cell).css("line-height", 1);
            cell.innerHTML = `<span style="font-size: 10px">\${subName}<br>\${lecDivide} \${proName}</span>`;
              cell.style.backgroundColor = color;
              basketTbl.rows[i+1].cells[1].style.backgroundColor = color; 
          }
        }
        if(credit >= 2 ){  // 2학점 이상 강의일 때
          for (let j = startRow; j <= endRow; j++) {
            let cell = table.rows[j].cells[dayCol];
            $(cell).css("line-height", "");
            if(j == startRow){
              cell.innerHTML = `<span style="font-size: 10px">\${subName}`;
            }
            if(j == (startRow+1)){
              cell.innerHTML = `<span style="font-size: 10px">\${lecDivide} \${proName}</span>`;
            }
            cell.style.backgroundColor = color;
            basketTbl.rows[i+1].cells[1].style.backgroundColor = color; 
          }
        }
      }
    }
    
    /* 시간표에 과목명, 분반, 교수명, 배경색 리셋 함수 */
    function resetTimeTbl() {
      let table = document.getElementById("timeTbl");
      for (let i = 1; i < table.rows.length; i++) {
        for (let j = 1; j < table.rows[i].cells.length; j++) {
          table.rows[i].cells[j].innerHTML = "";
          table.rows[i].cells[j].style.backgroundColor = "white";
        }
      }
    }

    /* 과목담기 버튼 클릭이벤트 */
    $(document).on("click", "#addBtn", function () {
      console.log("선택과목>>", lecInfo);
      if (lecInfo) {  // 과목 선택 여부 체크
        if (dupl_check(lecInfo)) { // 장바구니에 담긴 강의 중복확인
//           alert("장바구니에 담은 과목입니다.");
          Swal.fire({
			  title: '과목담기 실패',
			  html: "이미 장바구니에 담은 과목입니다.",
			  icon: 'error'
		  });	
          return false;
        }

        course = {
          "lecCode": lecInfo.data("lecCode"),
          "subCode": lecInfo.find('td:eq(0)').text(),
          "subName": lecInfo.find('td:eq(1)').text(),
          "lecDivide": lecInfo.find('td:eq(2)').text(),
          "proNameKo": lecInfo.find('td:eq(3)').text(),
          "lecGrade": lecInfo.find('td:eq(4)').text(),
          "subCredit": lecInfo.find('td:eq(5)').text(),
          "deptName": lecInfo.find('td:eq(6)').text(),
          "lrsStart": lecInfo.data("startTime"),
          "lrsEnd": lecInfo.data("endTime"),
          "weekCode": lecInfo.data("weekCode"),
          "addStatus": "0"
        }
        const check = checkOverlap(course, basket);

        if (check) {  // 장바구니에 강의와 요일시간중복 여부 체크 (시간미중복: ture / 시간중복: false)
          totCredit += parseInt(lecInfo.find('td:eq(5)').text());

          if (totCredit > 21) {  // 21학점 초과여부 체크
            totCredit -= parseInt(lecInfo.find('td:eq(5)').text());
//             alert("신청학점이 21학점을 초과합니다.");
            Swal.fire({
			  title: '학점 초과',
			  html: "신청학점이 21학점을 초과합니다.",
			  icon: 'error'
			});
            console.log("장바구니 목록:", basket);
            return false;
          }

        } else {
//           alert("시간이 중복됩니다.");
          Swal.fire({
			  title: '시간 중복',
			  html: "시간이 중복되는 과목입니다.",
			  icon: 'error'
		  });
          return false;
        }
        
        $.ajax({
          type: "post",
          url: "/course/basketInsert",
          data: course,
          success: function(res){
            console.log("장바구니 담겼음?", res);
            if(res == "ok"){
              basket.push(course);
              console.log("장바구니 목록:", basket);
              // lecInfo.attr("data-isadd", "1");
              // lecInfo.data("isadd", "1");
      
              let str = `<tr 
              data-lec-code="\${lecInfo.data('lecCode')}"
              data-start-time="\${lecInfo.data('startTime')}"
              data-end-time="\${lecInfo.data('endTime')}"
              data-week-code="\${lecInfo.data('weekCode')}"
              data-add-status="0">`;
              str += `<td>\${lecInfo.find('td:eq(0)').text()}</td>`;
              str += `<td>\${lecInfo.find('td:eq(1)').text()}</td>`;
              str += `<td>\${lecInfo.find('td:eq(2)').text()}</td>`;
              str += `<td>\${lecInfo.find('td:eq(3)').text()}</td>`;
              str += `<td>\${lecInfo.find('td:eq(4)').text()}</td>`;
              str += `<td>\${lecInfo.find('td:eq(5)').text()}</td>`;
              str += `<td>\${lecInfo.find('td:eq(6)').text()}</td>`;
              str += `<td class="couApply">신청</td>`;
              str += `<td class="couCancel">취소</td>`;
              str += "</tr>";
      
              $("#basketTbl tbody").append(str);
      
              displayLecInfo(basket);
      
              $("#totCredit").text(totCredit);
            }
          }
        });

      } else {
//         alert("과목을 선택해주세요.");
        Swal.fire({
		  title: '경고',
		  html: '수강신청할 과목을 선택해주세요!',
		  icon: 'warning'
		});
        return false;
      }
    });

    /* 수강 신청 버튼 클릭 이벤트 */ // 추가해야할 것 : 정원 초과 신청 막기, 정원 차면 신청 인원 td 색 변경 
    $(document).on("click", ".couApply", function(){
      if(parseInt($(this).parent().data("addStatus"))){
        console.log("이미 신청 완료된 과목입니다.")

        return false;
      }
      let applyBtn = $(this);
      let index = $(this).parent().index();
      console.log("신청하는 과목정보:", basket[index]);
      courseData = basket[index];

      let findLecture = $("#lectureTbl tr").filter(function() {
        return $(this).data("lecCode") === courseData.lecCode;
      });

      console.log("findLecture:", findLecture);
      let totCount = parseInt(findLecture.find('td:eq(7)').text());   // 정원
      let applCount = parseInt(findLecture.find('td:eq(8)').text());  // 신청인원

      if(applCount >= totCount){
//         alert("신청인원이 마감되었습니다.");
		Swal.fire({
		  title: '수강신청 실패',
		  html: "신청인원이 마감되었습니다!",
		  icon: 'error'
		});
        return false;
      }
      $.ajax({
        type: "POST",
        url: "/course/apply",
        data: courseData,
        success: function(res){
          applyBtn.css({'background-color': '#28a745', 'color': '#fff', 'cursor': 'auto'});
          applyBtn.off('click');
          applyBtn.text("완료");
          applyBtn.parent().data("addStatus", "1"); // 신청완료 상태로 전환
          basket[index].addStatus = "1";
          
          socket.send(`\${courseData.lecCode}A`);
//           alert("신청이 완료되었습니다.");
          Swal.fire({
    		 title: '수강신청 성공',
    		 html: "신청이 완료되었습니다!",
    		 icon: 'success'
    	  });
          console.log("addStatus 확인:", applyBtn.parent().data("addStatus"));
        }
      });

    });

    /* 수강 취소 클릭 이벤트*/  // 추가해야할 것 : 신청인원 감소
    $(document).on("click", ".couCancel", function(){
      let cancelBtn = $(this);
      let index = $(this).parent().index();
      console.log("취소하는 과목정보:", basket[index]);
      courseData = basket[index];
      
      Swal.fire({
        title: '수강신청 취소',
        html : '<strong style="color: #f95959; font-size:19px;">수강신청</strong>을 취소하시겠습니까?',
        icon: 'question',
        showCancelButton: true,
        confirmButtonText: 'Yes'
        }).then((result) => { 
        if (result.isConfirmed) {
          $.ajax({
            type: "post",
            url: "/course/cancel",
            data: courseData,
            success: function(res){
              totCredit -= basket[index].subCredit; // 수강학점 빼기
              $("#totCredit").text(totCredit);
              console.log("취소할 과목 addStatus:",basket[index].addStatus);
              if(parseInt(basket[index].addStatus)){  // 수강 신청 완료한 과목일 경우만 신청인원 조정
                socket.send(`\${courseData.lecCode}C`);
              }

              cancelBtn.parent().remove();  // 장바구니 테이블에서 삭제
              basket.splice(index, 1);  // basket 배열에서 해당 과목 삭제
              displayLecInfo(basket);   // timeTbl 다시 그리기
              console.log("장바구니 목록:", basket);
              // alert("수강 신청이 취소되었습니다.");
              Swal.fire({
                title :  '수강신청 취소', 
                html:  '신청이 취소되었습니다!',
                icon : 'error'
                });
              }
            });
          } else { 
            return false;
          }
        });
    });

    /* 검색 엔터 기능 적용 */
    $(document).ready(function(){
      $('input').keypress(function(event){
        if(event.keyCode == 13){
          $('#searchBtn').click();
        }
      });
    });

    /*학과에 따른 과목명 검색 */
    $(document).on("click", "#searchBtn", function(){
      
      let searchWord = $("#searchWord").val();
      console.log("검색할 단어:", searchWord);
      console.log("학과:", $("#deptCode").val());

      let searchData = {
        "searchWord": searchWord,
        "deptCode": $("#deptCode").val()
      }

      $.ajax({
        type: "post",
        url: "/course/search",
        data: searchData,
        success: function(res){
          $("#lectureTbl td").remove();
          console.log("검색한 값: ", res);
          $.each(res, function(i, item){
            let str = `<tr class="lectureTr"
              data-lec-code="\${item.lecCode }" 
              data-start-time="\${item.lrsStart}"
              data-end-time="\${item.lrsEnd}"
              data-week-code="\${item.weekCode}"
              data-isfull="0">
              <td>\${item.subCode }</td>
              <td>\${item.subName }</td>
              <td>\${item.lecDivide }</td>
              <td>\${item.proNameKo }</td>
              <td>\${item.lecGrade }</td>
              <td>\${item.subCredit }</td>
              <td>\${item.deptName }</td>
              <td>\${item.lecQuota }</td>
              <td>\${item.subApplicant }</td>
            </tr>`;
            
            $("#lectureTbl tbody").append(str);
          });
        }
      });

    });
    
    /* 학과로 검색 */
    $(document).on('change', '#deptCode', function() {
      let deptCode = $("#deptCode").val();
      console.log("선택 학과:", deptCode);

      $.ajax({
        type: "get",
        url: `/course/deptSelect/\${deptCode}`,
        success: function(data, status, xhr){
          console.log("data:", data);
          console.log("status:", status);
          $("#lectureTbl td").remove();
          $.each(data, function(i, item){
            let str = `<tr class="lectureTr"
              data-lec-code="\${item.lecCode }" 
              data-start-time="\${item.lrsStart}"
              data-end-time="\${item.lrsEnd}"
              data-week-code="\${item.weekCode}"
              data-isfull="0">
              <td>\${item.subCode }</td>
              <td>\${item.subName }</td>
              <td>\${item.lecDivide }</td>
              <td>\${item.proNameKo }</td>
              <td>\${item.lecGrade }</td>
              <td>\${item.subCredit }</td>
              <td>\${item.deptName }</td>
              <td>\${item.lecQuota }</td>
              <td>\${item.subApplicant }</td>
            </tr>`;
            
            $("#lectureTbl tbody").append(str);
          });
        }
      });
    });

  });


</script>