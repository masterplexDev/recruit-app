<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="https://img.echosting.cafe24.com/editors/froala/css/froala_style_ec.min.css?vs=2404180600"
	charset="UTF-8" />
<link rel="stylesheet" type="text/css"
	href="https://insideobject.com/ind-script/optimizer.php?filename=nZExDgIxDAT7KC3vsOAJPIEfOMFwJxJv5DgS_J6jggYJ0o52doulBVVofzBqhqtxJZOOYVko904Xgzpl1AqNG9jRL3nJoaMMX6Eh4T4pDvfZ0cIPsTnVORWZVNFCWVVCYtWv-9waHcF2ptNn3YZjeuGYCvJtVjZpMP_Pft_7BA&type=css&k=ecd691e0c80070ef935d0e961272742f67437a3c&t=1681776733" />
<link rel="stylesheet" type="text/css"
	href="https://insideobject.com/ind-script/optimizer_user.php?filename=tZRBbsQgDEX3k257Ds-o6j0q9QTEcYI1gBGGTOf2dTtVq64DO8DwvvX1MXiJBIRTUyoKgVcKbj6_nC-Q2xwYJ19jAF1oWkh5S6BXTpdXQFWIsrRAMIsriz3V-ubw6jZ6suIzdCMruYK-MxRdpSh7717XlrCypGPY4O7SKsxOGb81UGLsDn0cdIYSnmxDp8aDwFUkVM6D6J7CKHQuFhQc5Xd2GyfL9CjX3TyIPLdau0f7Fy4f4wwJo8y2a3gMvaxBpEAOzVJhu1Ohnen2txrUuRWodBupPzKx2YdXL_ndc86ctt4CKGk3ho3tfND3KIXSfn9o9Bja_4GqX7RP&type=css&k=d664d08dad9a7052b47cd7d6e8a0a70935bed9eb&t=1678165953&user=T" />
<link href="http://localhost/recruit-app/assets/css/layout/user/common-sv-202405271315.css" rel="stylesheet" type="text/css" />
<jsp:include page="../../assets/layout/admin/lib.jsp" />


<!-- summernote -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<!-- summernote -->

<!--bootstrap시작-->
<link rel="stylesheet" href="http://localhost/recruit-app/assets/css/layout/user/btn-bootstrap.css" />
<!--bootstrap끝-->

<script type="text/javascript">
	$(function() {
		$("#qna_menu").addClass("bg-gradient-primary");
		$('#content').summernote(
				{
					placeholder : 'Hello stand alone ui',
					tabsize : 2,
					width : 1435,
					height : 500,
					toolbar : [ [ 'style', [ 'style' ] ],
							[ 'font', [ 'bold', 'underline', 'clear' ] ],
							[ 'color', [ 'color' ] ],
							[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
							[ 'table', [ 'table' ] ],
							[ 'insert', [ 'link', 'picture', 'video' ] ],
							[ 'view', [ 'fullscreen', 'codeview', 'help' ] ] ]
				});//summernote
	});//ready
</script>
<!-- golgolz start -->
<style>
	table{
		width: 100%;
	}
	#emailFrm{
		margin:55px 40px 40px 8px; width:1500px; padding-left:28px
	}
	.note-editor{
		margin-top: 10px;
	}
	.typeWrite{
		width: 1435px;
	}
	tbody{
		border: 1px solid #e9e9e9;
	}
	.ec-base-table table:before{
		border: 1px solid #e9e9e9;
		width: 1px;
	}
	th{
		font-size: 14px;
	}
</style>
<!-- golgolz end -->
</head>
<body>
		<jsp:include page="../../assets/layout/admin/header.jsp" />
	<main
		class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ps--active-y">
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
							aria-current="page">문의 관리</li>
					</ol>
					<h6 class="font-weight-bolder mb-0">문의 관리</h6>
				</nav>
			</div>
		</nav>
		<div id="emailFrm">
		<div class="ec-base-table typeWrite ">
		<table border="1" summary="">
			<colgroup>
				<col style="width: 130px;" />
				<col style="width: auto;" />
			</colgroup>
			<tbody>
				<tr>
				</tr>
				<tr>
					<th scope="row">제목</th>
					<td><input id="title" name="title" class="inputTypeText"
						placeholder="" maxLength="125" value="${qnaAnswer.title}" type="text" /></td> <!--qna title에서 re:가 붙어야 함. -->
				</tr>
				<tr>
					<th scope="row">송신 이메일</th>
					<td><input id="title" name="title" class="inputTypeText"
						placeholder="" maxLength="125" value="" type="text" /></td> <!-- request.Scope.어쩌구 ??? -->
				</tr>
			</tbody>
		</table>
		</div>
		
		<div id="content" style="margin-left: 600px"></div>
		<div id="emailButtonArea" style="margin-top: 20px">
			<input type="button" value="취소" class="btn btn-outline-danger " style="float:right ; margin-right : 40px">
			<input type="button" value="전송하기" class="btn btn-outline-secondary " style="float:right ; margin-right : 10px">
			<!-- <input type="button" class="btn btn-info btn-sm" value="전송" /> 
			<input type="button" class="btn btn-info btn-sm" value="취소" /> -->
		</div>
		</div>
	</main>
	<!-- golgolz start -->

	<!-- golgolz end -->

</body>
</html>