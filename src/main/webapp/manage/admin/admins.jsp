<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info=""%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.3/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://code.jquery.com/ui/1.13.3/jquery-ui.js"></script>
<script type="text/javascript">
	$(function(){
		$("#admin_menu").addClass("bg-gradient-primary");
		
	    	$("#start_date_first").datepicker({
	    		showOtherMonths: true,
	    	    selectOtherMonths: true,
	    	    showButtonPanel: true,
	    	    dateFormat: "yy-mm-dd"
	    	});
	    	
	    	$("#end_date_first").datepicker({
	  	    	showOtherMonths: true,
	  	    	selectOtherMonths: true,
	  	    	showButtonPanel: true,
	  	    	dateFormat: "yy-mm-dd"
	  		});
	    	
	    	$("#start_date_sec").datepicker({
	    		showOtherMonths: true,
	    	    selectOtherMonths: true,
	    	    showButtonPanel: true,
	    	    dateFormat: "yy-mm-dd"
	    	});
	    	
	    	$("#end_date_sec").datepicker({
	  	    	showOtherMonths: true,
	  	    	selectOtherMonths: true,
	  	    	showButtonPanel: true,
	  	    	dateFormat: "yy-mm-dd"
	  		});
	});
</script>
<!-- golgolz start -->
<link href="http://localhost//recruit-app/assets/css/pagenation.css" rel="stylesheet" />
<link href="http://localhost//recruit-app/assets/css/manage/order/admin.css" rel="stylesheet" />
<link href="http://localhost//recruit-app/assets/css/manage/order/reset.css" rel="stylesheet" />
<link href="http://localhost/recruit-app/assets/css/manage/goods/goods.css" rel="stylesheet" />
<link href="http://localhost/recruit-app/assets/css/manage/goods/default.css" rel="stylesheet" />
<!-- golgolz end -->
<jsp:include page="../../assets/layout/admin/lib.jsp" />
</head>
<body>
	<jsp:include page="../../assets/layout/admin/header.jsp" />
	<main
		class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ps ps--active-y">
		<nav
			class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl"
			id="navbarBlur" data-scroll="true">
			<div class="container-fluid py-1 px-3">
				<nav aria-label="breadcrumb">
					<ol
						class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
						<li class="breadcrumb-item text-sm"><a
							class="opacity-5 text-dark" href="javascript:;">
							관리자 기능</a></li>
						<!-- 하단의 대시보드 텍스트를 본인 기능으로 변경 필요  -->
						<li class="breadcrumb-item text-sm text-dark active"
							aria-current="page">관리자 관리</li>
					</ol>
					<h6 class="font-weight-bolder mb-0">관리자 관리</h6>
				</nav>
			</div>
		</nav>
		<div class="container-fluid py-4">
			<!-- golgolz start -->
			<div class="s_wrap">
				<form name="fsearch" id="fsearch">
					<input type="hidden" name="code" value="list">
					<div class="tbl_frm01">
						<table>
							<colgroup> 
								<col class="w100">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">검색어</th>
									<td>
										<input type="hidden" name="page" value="1" />
										<select name="category">
												<option value="1"${param.category eq '1' ? " selected" : "" }>아이디</option>
										</select> 
										<input type="text" name="keyword" value="${ param.keyword }" class="frm_input" size="30">
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="btn_confirm">
						<input type="button" value="검색" class="btn btn-secondary btn-sm"> 
						<input type="button" value="초기화" id="frmRest" class="btn btn-outline-secondary btn-sm">
					</div>
				</form>
				<div class="local_ov mart30">
					전체 : <b class="fc_red">n</b> 건 조회
				</div>
				<form name="forderlist" id="forderlist" method="post">
					<input type="hidden" name="q1" value="code=list"> 
					<input type="hidden" name="page" value="1">
				</form>
				<div class="tbl_head01">
					<table id="sodr_list">
						<colgroup>
							<col class="w90">
							<col class="w90">
							<col class="w90">
							<col class="w90">
							<col class="w90">
							<col class="w90">
							<col class="w90">
							<col class="w90">
							<col class="w90">
							<col class="w90">
						</colgroup>
						<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">직책</th>
							<th scope="col">아이디</th>
							<th scope="col">대시보드</th>
							<th scope="col">사용자관리</th>
							<th scope="col">기업관리</th>
							<th scope="col">공고관리</th>
							<th scope="col">리뷰관리</th>
							<th scope="col">문의관리</th>
							<th scope="col">공지관리</th>
							<th scope="col">권한설정</th>
						</tr>
						</thead>
						<tbody>
							<tr class="list0">
								<td>1</td>
								<td>일반</td>
								<td>userManager</td>
								<td>Y</td>
								<td>Y</td>
								<td>N</td>
								<td>N</td>
								<td>Y</td>
								<td>Y</td>
								<td>N</td>
								<td><input type="button" value="권한설정" class="btn btn-outline-secondary btn-sm" style="font-weight: bold;margin:0px auto;" /></td>
							</tr>
							<tr class="list0">
								<td>2</td>
								<td>일반</td>
								<td>companyManager</td>
								<td>Y</td>
								<td>N</td>
								<td>Y</td>
								<td>Y</td>
								<td>Y</td>
								<td>Y</td>
								<td>N</td>
								<td><input type="button" value="권한설정" class="btn btn-outline-secondary btn-sm" style="font-weight: bold;margin:0px auto;" /></td>
							</tr>
							<tr class="list0">
								<td>3</td>
								<td>일반</td>
								<td>noticeManager</td>
								<td>Y</td>
								<td>N</td>
								<td>N</td>
								<td>N</td>
								<td>N</td>
								<td>N</td>
								<td>Y</td>
								<td><input type="button" value="권한설정" class="btn btn-outline-secondary btn-sm" style="font-weight: bold;margin:0px auto;" /></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div style="text-align: center; display: none;">
					<h4><strong>검색결과가 존재하지 않습니다.</strong></h4>
				</div>
				<div class="modal">
				
				</div>				
				<div class="alignCenter">
          			<table cellpadding="0" cellspacing="0" border="0" width="100%">
            			<tbody>
              				<tr>
                				<td align="center">
						        	<div id="pageNation">
							        </div>		
                				</td>
                				<td align="right">
									<input type="button" value="관리자 등록" class="btn btn-outline-success btn-sm float-right" style="font-weight: bold; margin:0px auto;" />
                				</td>
              				</tr>
            			</tbody>
          			</table>
        		</div>	
			</div>
		</div>
	</main>
	<!-- golgolz start -->
	<!-- golgolz end -->
</body>
</html>