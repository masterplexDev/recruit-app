<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 기존 CSS 파일들 -->
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.3/themes/base/jquery-ui.css">
	<jsp:include page="../assets/layout/user/lib.jsp" />  
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://code.jquery.com/ui/1.13.3/jquery-ui.js"></script>
	<script src="http://localhost/recruit-app/assets/js/admin/datepicker-ko.js"></script>
    <link href="http://localhost/recruit-app/assets/css/recruit/part-sv-202405271315.css" rel="stylesheet" type="text/css"/>
    <link href="http://localhost/recruit-app/assets/css/recruit/rcr-sv-202405271315.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" href="http://localhost/recruit-app/assets/css/layout/user/btn-bootstrap.css" />
    <!--  <link rel="stylesheet" href="http://localhost/recruit-app/assets/css/global_user.css"> -->
	<!-- golgolz end -->
	<style text="text/css">
		<!-- golgolz start -->
		.lgiSubMain {
			z-index: -2;
		}
		
		.chip-group {
			display: flex;
			flex-wrap: wrap;
			font-size: 13px;
			padding-left: 15px;
			margin-bottom: 15px;
		}
		
		.chip {
			padding: 8px 16px;
			background-color: #f1f1f1;
			border-radius: 20px;
			margin: 5px;
			cursor: pointer;
		}
		
		.chip.active {
			background-color: #007bff;
			color: white;
		}
		
		.search-container {
			display: flex;
			justify-content: center;
			background-color: white;
			border-radius: 8px;
		}
		
		.search-table {
			width: 90%;
			border-collapse: collapse;
		}
		
		.search-table td {
			font-size: 14px;
			padding: 10px;
			border-bottom: 1px solid #e0e0e0;
			border-top: 1px solid #e0e0e0;
		}
		
		.search-table td:first-child {
			width: 100px;
			background-color: #f9f9f9;
			font-weight: 400;
		}
		
		.search-input {
			font-size: 13px;
			width: 200px;
			padding: 8px;
			border: 1px solid #ddd;
			border-radius: 4px;
		}
		
		.search-select {
			font-size: 13px;
			width: 100px;
			padding: 8px;
			border: 1px solid #ddd;
			border-radius: 4px;
		}
		
		.search-button {
			padding: 8px 15px;
			background-color: #4CAF50;
			color: white;
			border: none;
			border-radius: 4px;
			cursor: pointer;
		}
		
		.button-container {
			display: flex;
			justify-content: center;
			align-items: center;
			margin-top: 25px;
		}
		
		.btn {
			width: 65px;
			height: 34px;
			font-size: 15px;
		}
		
		#btn-reset {
			border: solid 1px #c8c8c8;
			margin-left: 5px;
		}
		<!-- golgolz end -->
	</style>
	<script text="text/javascript">
		$(function(){
			<!-- golgolz start -->
			$(".position-chip").click(function() {
		        var value = $(this).data("value");
				var index = selectedPositions.indexOf(value);

		        if (index === -1) {
		            selectedPositions.push(value);
		            $(this).addClass("active");
		        } else {
		            selectedPositions.splice(index, 1);
		            $(this).removeClass("active");
		        }
			});
			
			var area0 = ["시/도 선택","서울특별시","인천광역시","대전광역시","광주광역시","대구광역시","울산광역시","부산광역시","경기도","강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"];
			var area1 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
			var area2 = ["계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
			var area3 = ["대덕구","동구","서구","유성구","중구"];
			var area4 = ["광산구","남구","동구", "북구","서구"];
			var area5 = ["남구","달서구","동구","북구","서구","수성구","중구","달성군"];
			var area6 = ["남구","동구","북구","중구","울주군"];
			var area7 = ["강서구","금정구","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"];
			var area8 = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
			var area9 = ["강릉시","동해시","삼척시","속초시","원주시","춘천시","태백시","고성군","양구군","양양군","영월군","인제군","정선군","철원군","평창군","홍천군","화천군","횡성군"];
			var area10 = ["제천시","청주시","충주시","괴산군","단양군","보은군","영동군","옥천군","음성군","증평군","진천군","청원군"];
			var area11 = ["계룡시","공주시","논산시","보령시","서산시","아산시","천안시","금산군","당진군","부여군","서천군","연기군","예산군","청양군","태안군","홍성군"];
			var area12 = ["군산시","김제시","남원시","익산시","전주시","정읍시","고창군","무주군","부안군","순창군","완주군","임실군","장수군","진안군"];
			var area13 = ["광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군","무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
			var area14 = ["경산시","경주시","구미시","김천시","문경시","상주시","안동시","영주시","영천시","포항시","고령군","군위군","봉화군","성주군","영덕군","영양군","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군"];
			var area15 = ["거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시","통영시","거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
			var area16 = ["서귀포시","제주시","남제주군","북제주군"];
			 
			// 시/도 선택 박스 초기화
			$("select[name^=sido]").each(function() {
				$selsido = $(this);
				$.each(eval(area0), function() {
					$selsido.append("<option style='font-size: 14px;' value='"+this+"'>"+this+"</option>");
				});
				$selsido.next().append("<option style='font-size: 14px;' value=''>구/군 선택</option>");
			});

			// 시/도 선택시 구/군 설정
			$("select[name^=sido]").change(function() {
				var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
				var $gugun = $(this).next(); // 선택영역 군구 객체
				$("option",$gugun).remove(); // 구군 초기화
	
				if(area == "area0")
					$gugun.append("<option style='font-size: 14px;' value=''>구/군 선택</option>");
				else {
					$.each(eval(area), function() {
					$gugun.append("<option style='font-size: 14px;' value='"+this+"'>"+this+"</option>");
					});
				}
			});
			
			$("#start_date").datepicker({
	    		showOtherMonths: true,
	    	    selectOtherMonths: true,
	    	    showButtonPanel: true,
	    	    dateFormat: "yy-mm-dd",
	            onSelect: function(selectedDate) {
	                $("#end_date").datepicker("option", "minDate", selectedDate);
	            }
	    	});
	    	
	    	$("#end_date").datepicker({
	  	    	showOtherMonths: true,
	  	    	selectOtherMonths: true,
	  	    	showButtonPanel: true,
	  	    	dateFormat: "yy-mm-dd",
	  	        onSelect: function(selectedDate) {
	  	            var startDate = $("#start_date").datepicker("getDate");
	  	            var endDate = $(this).datepicker("getDate");
	  	            
	  	            if (startDate && endDate && startDate > endDate) {
	  	                alert("종료 날짜는 시작 날짜 이후여야 합니다.");
	  	                $(this).val(""); // 선택한 값을 지웁니다
	  	                return false;
	  	            }
	  	        }
	  		});
	    	
	    	$("#btn-reset").click(function(){
	    		resetSearchTable();
	    	});
			<!-- golgolz end -->
		});
		
		function resetSearchTable() {
	        $('#category').val('1');
	        $('#keyword').val('');
	        $('#start_date, #end_date').val('');
	        $('#sido1').val('').find('option:first').prop('selected', true);
	        $('#gugun1').empty().append("<option style='font-size: 14px;' value=''>구/군 선택</option>");
	        $('.position-chip').removeClass('active');
	        $('.position-chip[data-value="BACKDEV"]').addClass('active');
	        if ($.fn.datepicker) {
	            $('#start_date, #end_date').datepicker('setDate', null);
	        }
	    }
	</script>
</head>
<body>
    <div id="__next" data-reactroot="">
		<jsp:include page="../assets/layout/user/header.jsp" />
		<main class="JobsFeed_Jobsfeed__DpeV9">  
			<section class="Section_Section__P1hhc">
			<!-- golgolz start -->
				<div id="wrap" class="bg-gray lgiSubMain">
					<div id="container">
						<div id="content" class="clear" data-pagecode="AM" >
							<h1 class="skip">메뉴별 채용공고</h1>
							<!-- Side Menu -->
							<div class="rcr_cnt" id="bbArea">
								<!-- 검색설정 -->
								<div class="cntWrap clear" id="devSearchForm" data-search-type="">
									<h2 class="titDetailSch" style="font-size:36px; margin-top:42px;" >채용공고 리스트</h2>
								</div>
								<!-- 채용공고리스트 -->
								<div id="dev-gi-list">
									<div class="tplJobListWrap devTplTabBx">
										<h2 class="bn_hd_2 blind">채용공고 리스트</h2>
										<div class="search-container">
									        <table class="search-table">
												<colgroup>
													<col width="150px" />
													<col width="*" />
												</colgroup>
									            <tr>
									                <td><label for="name-search">검색어</label></td>
									                <td>
									                	<select class="search-select" id="category" name="category">
									                		<option value="1">기업명</option>
									                		<option value="2">공고명</option>
									                		<option value="3">공고내용</option>
									                	</select>
									                    <input type="text" id="keyword" class="search-input" placeholder="이름을 입력하세요">
									                </td>
									            </tr>
									            <tr>
									                <td><label for="name-search">공고 등록일</label></td>
									                <td>
									                    <input type="text" id="start_date" class="frm_input search-input" size="10" readonly> 
									                    <span style="font-size: 20px;"> - </span>
              											<input type="text" id="end_date" class="frm_input search-input" size="10" readonly> 
									                </td>
									            </tr>
									            <tr>
									                <td><label for="name-search">근무지</label></td>
									                <td>
									                    <div>
															<select name="sido1" id="sido1" style="width: 200px; height: 30px; font-size: 13px; border: 0px; border-bottom: 0.5px solid #c8c8c8; margin-right: 15px;"></select>
															<select name="gugun1" id="gugun1" style="width: 200px; height: 30px; font-size: 13px; border: 0px; border-bottom: 0.5px solid #c8c8c8;"></select>
														</div>
									                </td>
									            </tr>
									            <tr>
									                <td><label for="job-search">포지션</label></td>
													<td>
														<div class="chip-group" style="margin-bottom:0px; padding-left: 0px;">
															<div class="chip position-chip active"
																data-value="BACKDEV">백엔드</div>
															<div class="chip position-chip" data-value="FRTDEV">프론트엔드</div>
															<div class="chip position-chip" data-value="EMBDEV">임베디드</div>
															<div class="chip position-chip" data-value="QAENG">QA</div>
															<div class="chip position-chip" data-value="INFENG">인프라</div>
															<div class="chip position-chip" data-value="DEVOPENG">DevOps</div>
															<!-- <button id="resetButton">초기화</button> -->
														</div>
													</td>
												</tr>
									        </table>
									    </div>
										<div class="button-container btn_confirm">
										    <input type="button" value="검색" class="btn btn-secondary btn-sm" id="btn-search"/>
											<input type="button" value="초기화" class="btn btn-outline-secondary btn-sm" id="btn-reset"/>
										</div>
										<ul class="tplTab clear" id="anchorGICnt_1" style="margin-top: 25px; margin-left: 13px; margin-bottom: 5px;">
											<li data-tab-index="0">
												<button type="button">
													<span data-text="전체" style="color: #000;">전체 <em>(117,341건)</em></span>
												</button>
											</li>
										</ul>
										<div class="tplList tplJobList">
											<table>
												<caption>
													<span class="blind">전체 채용정보 목록</span>
												</caption>
												<colgroup>
													<col width="50px" />
													<col width="158px" />
													<col width="*" />
													<col width="120px" />
												</colgroup>
												<thead>
													<tr>
														<th scope="col">행 선택</th>
														<th scope="col">회사명</th>
														<th scope="col">채용제목</th>
														<th scope="col">미리보기</th>
														<th scope="col">등록일·마감일</th>
													</tr>
												</thead>
												<tbody>
													<tr class="devloopArea">
														<th scope="row"><span class="tplChkRect tplChkRect_1"></span></th>
														<td class="tplCo">
															<!--app.svcFunc.clickCnt--> 
															<a href="http://localhost/recruit-app/recruit/detail.jsp" class="link normalLog" data-clickctgrcode="B01">아르네코리아㈜</a>
															<div class="typ"></div>
														</td>
														<td class="tplTit">
															<div class="titBx">
																<strong><a href="http://localhost/recruit-app/recruit/detail.jsp" class="link normalLog" title="[아르네코리아㈜] 개발팀 정규직 채용(광주)" data-clickctgrcode="B02">[아르네코리아㈜] 개발팀 정규직 채용(광주)</a></strong>
																<p class="etc">
																	<span class="cell">신입·경력</span> 
																	<span class="cell">학력무관</span>
																	<span class="cell">광주 광산구 외</span> 
																	<span class="cell">정규직</span>
																</p>
															</div>
															<div class="chip-group">
																<div class="chip position-chip active" data-value="BACKDEV">백엔드</div>
																<div class="chip position-chip" data-value="FRTDEV">프론트엔드</div>
																<div class="chip position-chip" data-value="EMBDEV">임베디드</div>
																<div class="chip position-chip" data-value="QAENG">QA</div>
																<div class="chip position-chip" data-value="INFENG">인프라</div>
																<div class="chip position-chip" data-value="DEVOPENG">DevOps</div>
																<!-- <button id="resetButton">초기화</button> -->
															</div>
														</td>
														<td class="odd">
															<button type="button" class="tplBtn tplBtn_1 tplBtnOrg">
																<span>즉시지원</span>
															</button> 
															<span class="time dotum"><span class="tahoma">05/22</span>(수) 등록</span> 
															<span class="date dotum"><span class="tahoma">~06/07</span>(금)</span>
														</td>
													</tr>
													<tr class="devloopArea">
														<th scope="row"><span class="tplChkRect tplChkRect_1"></span></th>
														<td class="tplCo">
															<!--app.svcFunc.clickCnt--> 
															<a href="http://localhost/recruit-app/recruit/detail.jsp" class="link normalLog" data-clickctgrcode="B01">아르네코리아㈜</a>
															<div class="typ"></div>
														</td>
														<td class="tplTit">
															<div class="titBx">
																<strong><a href="http://localhost/recruit-app/recruit/detail.jsp" class="link normalLog" title="[아르네코리아㈜] 개발팀 정규직 채용(광주)" data-clickctgrcode="B02">[아르네코리아㈜] 개발팀 정규직 채용(광주)</a></strong>
																<p class="etc">
																	<span class="cell">신입·경력</span> 
																	<span class="cell">학력무관</span>
																	<span class="cell">광주 광산구 외</span> 
																	<span class="cell">정규직</span>
																</p>
															</div>
															<div class="chip-group">
																<div class="chip position-chip active" data-value="BACKDEV">백엔드</div>
																<div class="chip position-chip" data-value="FRTDEV">프론트엔드</div>
																<div class="chip position-chip" data-value="EMBDEV">임베디드</div>
																<div class="chip position-chip" data-value="QAENG">QA</div>
																<div class="chip position-chip" data-value="INFENG">인프라</div>
																<div class="chip position-chip" data-value="DEVOPENG">DevOps</div>
																<!-- <button id="resetButton">초기화</button> -->
															</div>
														</td>
														<td class="odd">
															<button type="button" class="tplBtn tplBtn_1 tplBtnOrg">
																<span>즉시지원</span>
															</button> 
															<span class="time dotum"><span class="tahoma">05/22</span>(수) 등록</span> 
															<span class="date dotum"><span class="tahoma">~06/07</span>(금)</span>
														</td>
													</tr>
													<tr class="devloopArea">
														<th scope="row"><span class="tplChkRect tplChkRect_1"></span></th>
														<td class="tplCo">
															<!--app.svcFunc.clickCnt--> 
															<a href="http://localhost/recruit-app/recruit/detail.jsp" class="link normalLog" data-clickctgrcode="B01">아르네코리아㈜</a>
															<div class="typ"></div>
														</td>
														<td class="tplTit">
															<div class="titBx">
																<strong><a href="http://localhost/recruit-app/recruit/detail.jsp" class="link normalLog" title="[아르네코리아㈜] 개발팀 정규직 채용(광주)" data-clickctgrcode="B02">[아르네코리아㈜] 개발팀 정규직 채용(광주)</a></strong>
																<p class="etc">
																	<span class="cell">신입·경력</span> 
																	<span class="cell">학력무관</span>
																	<span class="cell">광주 광산구 외</span> 
																	<span class="cell">정규직</span>
																</p>
															</div>
															<div class="chip-group">
																<div class="chip position-chip active" data-value="BACKDEV">백엔드</div>
																<div class="chip position-chip active" data-value="FRTDEV">프론트엔드</div>
																<div class="chip position-chip" data-value="EMBDEV">임베디드</div>
																<div class="chip position-chip" data-value="QAENG">QA</div>
																<div class="chip position-chip" data-value="INFENG">인프라</div>
																<div class="chip position-chip" data-value="DEVOPENG">DevOps</div>
																<!-- <button id="resetButton">초기화</button> -->
															</div>
														</td>
														<td class="odd">
															<button type="button" class="tplBtn tplBtn_1 tplBtnOrg">
																<span>즉시지원</span>
															</button> 
															<span class="time dotum"><span class="tahoma">05/22</span>(수) 등록</span> 
															<span class="date dotum"><span class="tahoma">~06/07</span>(금)</span>
														</td>
													</tr>
													<tr class="devloopArea">
														<th scope="row"><span class="tplChkRect tplChkRect_1"></span></th>
														<td class="tplCo">
															<!--app.svcFunc.clickCnt--> 
															<a href="http://localhost/recruit-app/recruit/detail.jsp" class="link normalLog" data-clickctgrcode="B01">아르네코리아㈜</a>
															<div class="typ"></div>
														</td>
														<td class="tplTit">
															<div class="titBx">
																<strong><a href="http://localhost/recruit-app/recruit/detail.jsp" class="link normalLog" title="[아르네코리아㈜] 개발팀 정규직 채용(광주)" data-clickctgrcode="B02">[아르네코리아㈜] 개발팀 정규직 채용(광주)</a></strong>
																<p class="etc">
																	<span class="cell">신입·경력</span> 
																	<span class="cell">학력무관</span>
																	<span class="cell">광주 광산구 외</span> 
																	<span class="cell">정규직</span>
																</p>
															</div>
															<div class="chip-group">
																<div class="chip position-chip active" data-value="BACKDEV">백엔드</div>
																<div class="chip position-chip" data-value="FRTDEV">프론트엔드</div>
																<div class="chip position-chip" data-value="EMBDEV">임베디드</div>
																<div class="chip position-chip" data-value="QAENG">QA</div>
																<div class="chip position-chip" data-value="INFENG">인프라</div>
																<div class="chip position-chip" data-value="DEVOPENG">DevOps</div>
																<!-- <button id="resetButton">초기화</button> -->
															</div>
														</td>
														<td class="odd">
															<button type="button" class="tplBtn tplBtn_1 tplBtnOrg">
																<span>즉시지원</span>
															</button> 
															<span class="time dotum"><span class="tahoma">05/22</span>(수) 등록</span> 
															<span class="date dotum"><span class="tahoma">~06/07</span>(금)</span>
														</td>
													</tr>
													<tr class="devloopArea">
														<th scope="row"><span class="tplChkRect tplChkRect_1"></span></th>
														<td class="tplCo">
															<!--app.svcFunc.clickCnt--> 
															<a href="http://localhost/recruit-app/recruit/detail.jsp" class="link normalLog" data-clickctgrcode="B01">아르네코리아㈜</a>
															<div class="typ"></div>
														</td>
														<td class="tplTit">
															<div class="titBx">
																<strong><a href="http://localhost/recruit-app/recruit/detail.jsp" class="link normalLog" title="[아르네코리아㈜] 개발팀 정규직 채용(광주)" data-clickctgrcode="B02">[아르네코리아㈜] 개발팀 정규직 채용(광주)</a></strong>
																<p class="etc">
																	<span class="cell">신입·경력</span> 
																	<span class="cell">학력무관</span>
																	<span class="cell">광주 광산구 외</span> 
																	<span class="cell">정규직</span>
																</p>
															</div>
															<div class="chip-group">
																<div class="chip position-chip active" data-value="BACKDEV">백엔드</div>
																<div class="chip position-chip" data-value="FRTDEV">프론트엔드</div>
																<div class="chip position-chip" data-value="EMBDEV">임베디드</div>
																<div class="chip position-chip" data-value="QAENG">QA</div>
																<div class="chip position-chip" data-value="INFENG">인프라</div>
																<div class="chip position-chip" data-value="DEVOPENG">DevOps</div>
																<!-- <button id="resetButton">초기화</button> -->
															</div>
														</td>
														<td class="odd">
															<button type="button" class="tplBtn tplBtn_1 tplBtnOrg">
																<span>즉시지원</span>
															</button> 
															<span class="time dotum"><span class="tahoma">05/22</span>(수) 등록</span> 
															<span class="date dotum"><span class="tahoma">~06/07</span>(금)</span>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div id="dvGIPaging">
											<div class="tplPagination newVer">
												<ul>
													<li><span class="now" data-page="1">1</span></li>
													<li><a href="http://localhost/recruit-app/recruit/recruits.jsp" data-page="2">2</a></li>
													<li><a href="http://localhost/recruit-app/recruit/recruits.jsp" data-page="3">3</a></li>
													<li><a href="http://localhost/recruit-app/recruit/recruits.jsp" data-page="4">4</a></li>
													<li><a href="http://localhost/recruit-app/recruit/recruits.jsp" data-page="5">5</a></li>
													<li>
												</ul>
												<p>
													<a href="http://localhost/recruit-app/recruit/recruits.jsp" class="tplBtn btnPgnNext" data-page="11">다음<i class="ico"></i></a>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- golgolz end -->
			</section>
			<jsp:include page="../assets/layout/user/footer.jsp" />  
		</main>
	</div>
</body>
</html>