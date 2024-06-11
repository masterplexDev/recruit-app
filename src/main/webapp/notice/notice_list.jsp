<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="../assets/layout/user/lib.jsp" />  
	<!-- golgolz start -->
	
<link href="https://i.jobkorea.kr/content/css/ver_2/event/banner.promotion-sv-202401301659.css" rel="stylesheet" type="text/css" />
<link href="https://i.jobkorea.kr/content/css/ver_2/common-sv-202405271315.css" rel="stylesheet" type="text/css" />
<link href="https://i.jobkorea.kr/deploy/pc/dist/css/personal/common/gnb-sv-202405231305.css" rel="stylesheet" type="text/css" />
<link href="https://i.jobkorea.kr/content/css/ver_2/mtc/mtc_lounge-sv-202402231655.css" rel="stylesheet" type="text/css" />
<link href="https://i.jobkorea.kr/content/css/ver_2/help/help-sv-202402231655.css" rel="stylesheet" type="text/css" />
<link href="https://i.jobkorea.kr/deploy/pc/dist/css/personal/layout/footer-sv-202405131313.css" rel="stylesheet" type="text/css" />
<link href="https://i.jobkorea.kr/deploy/pc/dist/css/personal/pages/main/auto_search-sv-202405231305.css" rel="stylesheet" type="text/css" />
	
	<!-- golgolz end -->
	<style type="text/css">
		<!-- golgolz start -->
		<!-- golgolz end -->
	</style>
	
	<script type="text/javascript">
		$(function(){
			<!-- golgolz start -->
			<!-- golgolz end -->
		});
	</script>
	
</head>
<body>
    <div id="__next" data-reactroot="" >
		<jsp:include page="../assets/layout/user/header.jsp" />
		<main class="JobsFeed_Jobsfeed__DpeV9">  
			<section class="Section_Section__P1hhc">
			<!-- golgolz start -->
		<div>
	<div class="loungeContent noticeListContent" style="margin:40px auto 0; width:1300px">
		<div class="topHdWrap clear">
			<h2 class="lug_hd_2">공지사항</h2>
			<form action="#">
				<fieldset>
					<legend>공지사항 검색</legend>
					<div class="searchBarItem mtcPlaceholder" float : right>
						<span class="phTx">키워드 검색</span>
						<input type="text" id="lb_sch" class="mtcSchInp" title="검색어 입력">
						<input type="button" class="mtcBtnB mtcSchBtn" value="검색"/>
						<!-- <button type="button" class="mtcBtnB mtcSchBtn"><span class="skip">검색</span></button> -->
					</div>
				</fieldset>
				<div class="lyTplArea schItems" style="float : right; margin-right : 10px">
                            <label for="lb_sel01"></label>
                            <select>
                                <option value="내용+제목" selected>내용+제목</option>
								<option value="내용">내용</option>
								<option value="제목">제목</option>
                            </select>
                        </div>
			</form>
		</div>
		<div class="schListWrap">
			<div class="mtcSchListTb">
				<table summary="">
					<caption>공지사항</caption>
					<colgroup>
						<col class="col_1">
						<col class="col_2">
						<col class="col_3">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">
								<div class="lyTplArea schItems">
									<!-- <span class="tHd"><button type="button" class="btnListSort mtcBtnA">전체</button></span>
									<ul class="lyItems">
										<li><a href="/help/notice?tab=1&SearchWord=">전체</a></li>
										<li><a href="/help/notice?tab=2&SearchWord=">일반공지</a></li>
										<li><a href="/help/notice?tab=3&SearchWord=">서비스오픈</a></li>
									</ul> -->
									<select>
										<option value="전체" selected>전체</option>
										<option value="일반공지">일반공지</option>
										<option value="서비스">서비스</option>
										<option value="이벤트">이벤트</option>
									</select>
								</div>
							</th>
							<th scope="col">제목</th>
							<th scope="col">날짜</th>
						</tr>
					</thead>
					<tbody>
								<tr class=primary>
									<td class="sort">공지</td>
									<td class="alLeft"><span class="tit"><a href="notice_detail.jsp">[발표] 잡코싶은 커피차 6월 대학교 방문일정 대공개~!</a></span></td>
									<td class="date">2024.05.29</td>
								</tr>
								<tr class=primary>
									<td class="sort">공지</td>
									<td class="alLeft"><span class="tit"><a href="/help/notice/view?no=14793">[잡코리아X알바몬] 한화이글스 한화뿐인 사인볼 증정 이벤트</a></span></td>
									<td class="date">2024.05.20</td>
								</tr>
								<tr class=primary>
									<td class="sort">공지</td>
									<td class="alLeft"><span class="tit"><a href="/help/notice/view?no=14757">[런칭] 잡코싶은 포트폴리오 무료로 받아가세요!</a></span></td>
									<td class="date">2024.02.23</td>
								</tr>
								<tr >
									<td class="sort">공지</td>
									<td class="alLeft"><span class="tit"><a href="/help/notice/view?no=14791">[이벤트] 잡코리아 원픽 1주년 감사 이벤트</a></span></td>
									<td class="date">2024.05.20</td>
								</tr>
								<tr >
									<td class="sort">공지</td>
									<td class="alLeft"><span class="tit"><a href="/help/notice/view?no=14790">[사전공지] 맞춤법 검사 서비스 종료</a></span></td>
									<td class="date">2024.05.16</td>
								</tr>
					</tbody>
				</table>


				<div class="listBtmArea">
                <div class="btnListExDn">
                    <a href="notice_list.jsp" class="btnMtcTpl">목록</a>
                </div>
                
                
					<div class="listBtmArea">
						            <div class="tplPagination">

                <ul>

                                <li><span class="now">1</span></li>
                                <li><a href="/help/notice?tab=1&amp;Page=2" data-page="2">2</a></li>
                                <li><a href="/help/notice?tab=1&amp;Page=3" data-page="3">3</a></li>

                </ul>

                    <p><a href="/help/notice?tab=1&amp;Page=11" class="tplBtn btnPgnNext" data-page="11"><span>다음 페이지</span></a></p>
            </div>

					</div>
			</div>
		</div>
	</div>
</div>
	</section>
</div>
			<!-- golgolz end -->
			</section>
			<jsp:include page="../assets/layout/user/footer.jsp" />  
		</main>
	</div>
</body>

</html>