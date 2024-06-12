<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="../../../assets/layout/user/lib.jsp" />  
	<!-- golgolz start -->
	<link href="https://i.jobkorea.kr/content/css/ver_2/mtc/mtc_lounge-sv-202402231655.css" rel="stylesheet" type="text/css" />
	<link href="https://i.jobkorea.kr/content/css/ver_2/help/help-sv-202402231655.css" rel="stylesheet" type="text/css" />
	<!-- 파비콘 -->
    <link rel="shortcut icon" href="https://static.wanted.co.kr/favicon/new/favicon.ico"/>
    <link rel="stylesheet" href="https://asset.wanted.co.kr/userweb/www/_next/static/css/c76e012c05e1318d.css" crossorigin="anonymous" data-n-g=""/>
	<link rel="stylesheet" href="http://localhost/recruit-app/assets/css/mypage.css"/>
	<!-- golgolz end -->
	<style text="text/css">
		<!-- golgolz start -->
		
		<!-- golgolz end -->
	</style>
	<script text="text/javascript">
		$(function(){
			<!-- golgolz start -->
			<!-- golgolz end -->
		});
	</script>
</head>
<body>
    <div id="__next" data-reactroot="">
		<jsp:include page="../../../assets/layout/user/header.jsp" />
		<main class="JobsFeed_Jobsfeed__DpeV9">  
		<section class="Section_Section__P1hhc">
        <div class="MainLayout_MainLayout__root__p6itg">
          <div class="Grid_Grid__container__J9CcC Grid_Grid__spacing__5__ZwgDV">
          <jsp:include page="../mypage_layout.jsp"/>
          <div class="Grid_Grid__item__FUkSS Grid_Grid__justify_center__QJu2X Grid_Grid__align-items_flex-start__PA0JE Grid_Grid__grid__xs__12__rVqKh Grid_Grid__grid__md__6__9g_JE">
		  <!-- golgolz start -->
          
		          <div style="margin:40px auto 0; width:800px">
			<section class="content helpSecCont">
			<div class="loungeContent inquiryContent">
			<div class="topHdWrap">
				<h2 class="lug_hd_2">문의</h2>
			</div>
		
			<!--// tap menu -->
			<div class="mtcTplTab">
				<ul class="tabItems">
					<li class=""><a href="mypageWriteQNA.jsp">문의</a></li>
					<li class="on"><a href="mypageQNAList.jsp">문의 내역</a></li>
				</ul>
			</div>
			<!-- tap menu //-->
			<!--// 내 제안내역 보기 -->
			<div class="inquiryListWrap">
			<!--// List 시작 -->
			<div class="schListWrap">
				<div class="mtcSchListTb">
				<!--[개발] 문의 내용이 없는 경우 hide 처리 -->
					<table summary="내 제안내역 보기 목록으로 글번호, 내용, 날짜, 답변여부로 구성되어 있습니다.">
					<caption>내 제안내역 보기</caption>
					<colgroup>
						<col class="col_1">
						<col class="col_2">
						<col class="col_3">
						<col class="col_4">
					</colgroup>
					<thead class="blind">
						<tr>
							<th scope="col">글번호</th>
							<th scope="col">내용</th>
							<th scope="col">날짜</th>
							<th scope="col">답변여부</th>
						</tr>
						</thead>
						<tbody>
							<tr>
							<td>0001</td>
							<td class="alLeft"><span class="tit"><a href="mypageQNADetail.jsp">기업 리뷰는 어떻게 확인하는 지 궁금합니다.</a></span></td>
							<td>2024.05.24</td>
							<td class="">답변완료</td>
							</tr>
						</tbody>
						</table>
		
					<div class="listBtmArea">
					<div class="tplPagination">
		   	 <div class="tplPagination">
		        <ul>
		          <li><span class="now">1</span></li>
		        </ul>
		    </div>
			</div>
			</div>
			</div>
			</div>
			</div>
			<!-- List 끝 //-->
			</div>
					</section>
		</div>
          
		  <!-- golgolz end -->
          </div>
        </div>
			</section>
			<jsp:include page="../../../assets/layout/user/footer.jsp" />
		</main>
	</div>
</body>
</html>