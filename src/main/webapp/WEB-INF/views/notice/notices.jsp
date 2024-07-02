<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<link href="https://i.jobkorea.kr/content/css/ver_2/mtc/mtc_lounge-sv-202402231655.css" rel="stylesheet" type="text/css" /><!--  -->
<link href="https://i.jobkorea.kr/content/css/ver_2/help/help-sv-202402231655.css" rel="stylesheet" type="text/css" /><!--  -->
<!-- 파비콘 -->
<link rel="shortcut icon" href="https://static.wanted.co.kr/favicon/new/favicon.ico"/>
<!-- bootstrap -->
<link href="../assets/css/company/company-info-list-6.css" rel="stylesheet" type="text/css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!-- bootstrap -->
	
	<jsp:include page="../assets/layout/user/lib.jsp" />  
	<!-- golgolz start -->
	
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
	<div class="loungeContent noticeListContent" style="width: 100% ; max-width: 1300px; margin: 30px auto; box-sizing: border-box; padding: 20px;">
	<!-- <div class="loungeContent noticeListContent" style="margin:40px auto 0; width:1300px"> -->
		<div class="topHdWrap clear">
			<h2 class="lug_hd_2">공지사항</h2>
			<form action="#">
		
				<fieldset>
					<legend>공지사항 검색</legend>
					<div class="searchBarItem mtcPlaceholder" style="float : right">
						<span class="phTx"></span>
						<input type="text" id="lb_sch" class="mtcSchInp" title="검색어 입력">
						<!-- <input type="button" class="mtcBtnB mtcSchBtn" value="검색"/> -->
						<button type="button" class="mtcBtnB mtcSchBtn"><span class="skip">검색</span></button>
					</div>

									<select
										style="width: 100px; height: 36px; border: 0.2px solid #ced4da; margin-right: 10px">
										<!-- <select name="" id="lb_view_1" title="문의 종류 선택"> -->
										<option value="선택" selected>선택</option>
										<option value="내용+제목">내용+제목</option>
										<option value="내용">내용</option>
										<option value="제목">제목</option>
									</select>
								</fieldset>
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
								<div  style="float:left; padding-left:15px">
									<select
										style="width: 80px; height: 36px; border: 0.2px solid #FFFFFF;">
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
						<c:forEach var="notice" items="${noticeList}">
								<tr class=primary>
									<td class="sort"><c:out value="${notice.category}"/></td>
									<td class="alLeft"><span class="tit"><a href="detail.jsp"><c:out value="${notice.title}"/></a></span></td>
									<td class="date"><c:out value="${notice.input_date}"/></td>
								</tr>
						</c:forEach>
					</tbody>
				</table>


				<div class="listBtmArea" style="margin-bottom:40px">
                <div class="btnListExDn">
                  <!-- <a href="notice_list.jsp" class="btnMtcTpl">목록</a> -->
                </div>
                
               <!--  
					<div class="listBtmArea">
						            <div class="tplPagination">

                <ul>

                                <li><span class="now">1</span></li>
                                <li><a href="/help/notice?tab=1&amp;Page=2" data-page="2">2</a></li>
                                <li><a href="/help/notice?tab=1&amp;Page=3" data-page="3">3</a></li>

                </ul>

                    <p><a href="/help/notice?tab=1&amp;Page=11" class="tplBtn btnPgnNext" data-page="11"><span>다음 페이지</span></a></p>
            </div>

					</div> -->
					
				<div style="text-align:center; margin-top:30px">
			        <nav aria-label="...">
			                <ul class="pagination pagination-lg" style="display: inline-flex;">
			                       <li class="page-item disabled">
			                            <span class="page-link">&lt;</span>
			                        </li>
			                        <li class="page-item"><a class="page-link" href="#">1</a></li>
			                        <li class="page-item active" aria-current="page">
			                            <span class="page-link">2</span>
			                        </li>
			                        <li class="page-item"><a class="page-link" href="#">3</a></li>
			                        <li class="page-item">
			                            <a class="page-link" href="#">&gt;</a>
			                        </li>
			                 </ul>
			         </nav>
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