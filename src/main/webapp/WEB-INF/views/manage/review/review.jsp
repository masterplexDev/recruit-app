<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>

<!DOCTYPE html>
<html>
<head>

<jsp:include page="../../assets/layout/admin/lib.jsp" />
<script type="text/javascript">
    $(function(){
        $("#review_menu").addClass("bg-gradient-primary");
    });

    // JSON 데이터를 파싱하여 테이블에 추가하는 함수
    function loadReviews(reviewListJson) {
        console.log("loadReviews called with reviewListJson:", reviewListJson);
        const reviews = JSON.parse(reviewListJson);
        const reviewListTable = document.querySelector('.list');

        reviewListTable.innerHTML = ''; // 기존 리스트 초기화

        reviews.forEach((review, index) => {
            console.log("Adding review:", review); // 디버그 로그 추가
            const row = document.createElement('tr');

            const reviewNumCell = document.createElement('td');
            reviewNumCell.textContent = index + 1;
            row.appendChild(reviewNumCell);

            const userIdCell = document.createElement('td');
            userIdCell.textContent = review.userId;
            row.appendChild(userIdCell);

            const authorCell = document.createElement('td');
            authorCell.textContent = review.author;
            row.appendChild(authorCell);

            const titleCell = document.createElement('td');
            titleCell.textContent = review.title;
            row.appendChild(titleCell);

            const inputDateCell = document.createElement('td');
            inputDateCell.textContent = review.inputDate;
            row.appendChild(inputDateCell);

            const recommendCell = document.createElement('td');
            recommendCell.textContent = review.recommend;
            row.appendChild(recommendCell);

            const deleteFlagCell = document.createElement('td');
            deleteFlagCell.textContent = review.deleteFlag;
            row.appendChild(deleteFlagCell);

            reviewListTable.appendChild(row);
        });
    }
    
    // 페이지가 로드될 때 리뷰 리스트를 로드합니다.
    window.onload = function() {
        const reviewListJson = ' ${reviewListJson} '; // JSP 표현식을 사용하여 JSON 문자열을 가져옵니다.
        console.log("window.onload called with reviewListJson:", reviewListJson);
        if (reviewListJson) {
            loadReviews(reviewListJson);
        }
    }
</script>

<!-- golgolz start -->

<link href="http://localhost//recruit-app/assets/css/pagenation.css" rel="stylesheet" />
<link href="http://localhost//recruit-app/assets/css/manage/order/admin.css" rel="stylesheet" />
<link href="http://localhost//recruit-app/assets/css/manage/order/reset.css" rel="stylesheet" />
<!-- golgolz end -->
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
                            aria-current="page">리뷰 관리</li>
                    </ol>
                    <h6 class="font-weight-bolder mb-0">리뷰 관리</h6>
                </nav>
            </div>
        </nav>
    
    <div class="container-fluid">
            <!-- golgolz start -->
            <div class="s_wrap">
    <form name="fsearch" id="fsearch" method="get" onsubmit="return handleFormSubmit(event);" action="/manage/review/review.do">
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
            <select name="sfl">
                <option value="id">아이디</option>
                <option value="name">회원명</option>
                <option value="titleOrContent">제목 또는 내용</option> <!-- 추가 -->
            </select>
            <input type="text" name="stx" value="" class="frm_input" size="30">
        </td>
    </tr>
    
    </tbody>
    </table>
</div>
<div class="btn_confirm">
    <input type="submit" value="검색" class="btn btn-secondary btn-sm">
</div>
</form>

<div class="local_ov mart30">
    총 리뷰 수 : <b class="fc_red">${reviewList != null ? reviewList.size() : 0}</b>건
</div>
<div class="tbl_head01">
    <table>
    <thead>
     <tr>
                <th scope="col" style="width: 50px;">번호</th>
                <th scope="col" style="width: 50px;">아이디</th>
                <th scope="col" style="width: 50px;">작성자</th>
                <th scope="col" style="width: 150px;">제목</th>
                <th scope="col" style="width: 130px;">작성일</th>
                <th scope="col" style="width: 60px;">추천수</th>
                <th scope="col" style="width: 60px;">삭제여부</th>
            </tr>
    </thead>
    <tbody class="list">
    <!-- 리뷰 리스트가 여기에서 동적으로 추가됩니다. -->
    </tbody>
    </table>
</div>
</div>
</div>

    <!-- golgolz end -->
    </main>
</body>
</html>
