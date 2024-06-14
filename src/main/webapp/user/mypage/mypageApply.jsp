<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info=""%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../../assets/layout/user/lib.jsp" />
<!-- golgolz start -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<!-- 파비콘 -->
    <link rel="shortcut icon" href="https://static.wanted.co.kr/favicon/new/favicon.ico"/>
    <link rel="stylesheet" href="https://asset.wanted.co.kr/userweb/www/_next/static/css/c76e012c05e1318d.css" crossorigin="anonymous" data-n-g=""/>
	<link rel="stylesheet" href="http://localhost/recruit-app/assets/css/mypage.css"/>
	<link rel="stylesheet" href="http://localhost/recruit-app/assets/css/signup.css"/>
<!-- golgolz end -->

<style>
@media (max-width: 767px) {
    .Wrapper_Wrapper_container__cnwtJ {
        background-color: #fff;
    }
    .Body_Body__MlgY5 {
        width: calc(100% - 40px);
        margin: 0 20px;
    }
    .Summary_Summary__AO8Mn {
        padding-top: 24px;
        padding-bottom: 12px;
        margin: 0 -20px;
    }
        .Search_Search__MeaMt {
        position: relative;
        padding-top: 8px;
        padding-bottom: 16px;
        margin: 0 -20px;
        height: 56px;
    }
    .Aside_className__y5t_H {
        display: none;
    }
    .Search_Search__MeaMt:after, .Search_Search__MeaMt:before {
        content: "";
        position: absolute;
        top: 0;
        height: 56px;
        width: 20px;
    }
        .Search_Search__MeaMt:before {
        left: 0;
        background: -webkit-gradient(linear, right top, left top, from(rgba(255, 254, 254, 0)), to(#fffefe));
        background: linear-gradient(270deg, rgba(255, 254, 254, 0) 0, #fffefe);
    }
    .Search_Search__MeaMt>div {
        -ms-scroll-snap-type: x mandatory;
        scroll-snap-type: x mandatory;
        overflow-x: auto;
        white-space: nowrap;
        scrollbar-width: none;
        padding: 0 20px;
    }
    .Search_Search_search__RaFaG {
        width: 126px;
    }
    .CalendarBtn_CalendarBtn__tKe6N {
        background-color: transparent;
        -webkit-box-shadow: none;
        box-shadow: none;
    }
}
.Wrapper_Wrapper_container__cnwtJ {
    display: -ms-flexbox;
    display: flex;
    width: 65%;
    text-align: center;
}
.Body_Body__MlgY5 {
    width: 100%;
    margin:10px;
    margin-top: 30px;
    margin-bottom: 300px;
    font-size: 15px;
}

.Summary_Summary__AO8Mn {
    margin-bottom: 50px;
    font-size: 15px;
}
ol, ul {
    list-style: none;
}
.Summary_Summary_list_active__qwfF0, .Summary_Summary_list_active__qwfF0>a, .Summary_Summary_list_active__qwfF0>a dd, .Summary_Summary_list_active__qwfF0>a:active, .Summary_Summary_list_active__qwfF0>a:visited {
    color: #06f; /* 선택한 상태의 색상을 바꾸는 css */
}
.Summary_Summary_list__AyGdy {
    display: inline-block;
    text-align: center;
    color: #86939e;
    width: 24%;
    border-right: 1px solid #d1d1d1;
}
.Summary_Summary_list__AyGdy:last-of-type {
    border: none;
}
.Aside_className__y5t_H {
    float: left;
    width: 25.4716981132%;
    margin-bottom: 0;
    padding-right: 20px;
}
.Search_Search__MeaMt>div, .Search_Search__MeaMt>div div {
    display: -ms-flexbox;
    display: flex;
}
.Search_Search__MeaMt>div {
    -ms-flex-pack: justify;
    justify-content: space-between;
    font-weight: 600;
    font-size: 15px;
    height: 32px;
    margin-bottom: 17px;
}
.Search_Search_search__RaFaG {
    -ms-flex-align: center;
    align-items: center;
    background-color: #fff;
    border: 1px solid hsla(225, 5%, 46%, .22);
    border-radius: 50px;
    width: 180px;
    padding: 6px 20px;
    gap: 9px;
}
.SvgIcon_SvgIcon__root__8vwon {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-align: inherit;
    align-items: inherit;
    -ms-flex-pack: inherit;
    justify-content: inherit;
}
.Search_Search_search__RaFaG svg {
    min-width: 16px;
    width: 16px;
    height: 16px;
}
.SvgIcon_SvgIcon__root__svg__DKYBi {
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    width: 1em;
    height: 1em;
    display: inline-block;
    fill: currentColor;
    -ms-flex-negative: 0;
    flex-shrink: 0;
    font-size: inherit;
}
svg:not(:root) {
    overflow-clip-margin: content-box;
    overflow: hidden;
}
.Search_Search_search__RaFaG input {
    width: 100%;
    font-size: 15px;
    border: none;
    color: #333;
    padding: 0;
    background: none;
}
input[type=text], textarea {
    -moz-appearance: none;
    -webkit-appearance: none;
    resize: none;
    outline: none;
}
input, input:focus, input[type=text], textarea {
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
}
input, input:focus {
    outline: none !important;
}
.CalendarBtn_CalendarBtn__tKe6N {
    position: relative;
}
.CalendarBtn_CalendarBtn__tKe6N>button {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-align: center;
    align-items: center;
    gap: 8px;
    min-width: 117px;
    background-color: #fff;
    border: 1px solid hsla(225, 5%, 46%, .22);
    border-radius: 100px;
    margin-left: 12px;
    padding: 6px 20px;
}
.Search_Search__MeaMt button {
    letter-spacing: .0145em;
}
.List_List_empty__pphW6 {
    margin-top: 80px;
    text-align: center;
}
dl {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    unicode-bidi: isolate;
}
@media (min-width: 992px) {
    .MainLayout_MainLayout__sidebar__G8teL {
        display: -ms-flexbox;
        display: flex;
        padding: 59px 0 0 55px;
        border-right: 1px solid #f7f7f7;
    }
        .Grid_Grid__grid__md__4__YPyIl {
        -ms-flex-preferred-size: 33.3333333333%;
        flex-basis: 33.3333333333%;
        max-width: 33.3333333333%;
}
}
<!--golgolz end-->
</style>
<script type="text/javascript">
		$(function(){
			<!-- golgolz start -->
			<!-- golgolz end -->
		});
	</script>
</head>
<body>
	<div id="__next" data-reactroot="">
		<jsp:include page="../../assets/layout/user/header.jsp" />
		<main class="JobsFeed_Jobsfeed__DpeV9">
			<section class="Section_Section__P1hhc">
			<div class="MainLayout_MainLayout__root__p6itg">
          <div class="Grid_Grid__container__J9CcC Grid_Grid__spacing__5__ZwgDV">
			<jsp:include page="mypage_layout.jsp" />
            <div class="Wrapper_Wrapper_container__cnwtJ">
					<section class="Body_Body__MlgY5">
					<div style="text-align: left;  margin-bottom:15px; margin-left:15px;"><h1 style="font-size: 25px;"><strong>지원 현황</strong></h1></div>
						<ul class="Summary_Summary__AO8Mn" >
							<li class="Summary_Summary_list__AyGdy" style="padding-right: 15px;"><a
								href="/status/applications/applied" class=""><dl>
										<dt>0</dt>
										<dd>전체</dd>
									</dl></a></li>
							<li class="Summary_Summary_list__AyGdy" ><a
								href="/status/applications/applied?status=complete" class=""><dl>
										<dt>0</dt>
										<dd>지원 완료</dd>
									</dl></a></li>
							<li
								class="Summary_Summary_list__AyGdy Summary_Summary_list_active__qwfF0"><a
								href="/status/applications/applied?status=hire" class=""><dl>
										<dt>0</dt>
										<dd>면접 합격</dd>
									</dl></a></li>
							<li class="Summary_Summary_list__AyGdy"><a
								href="/status/applications/applied?status=reject" class=""><dl>
										<dt>0</dt>
										<dd>불합격</dd>
									</dl></a></li>
						</ul>
						<div class="Search_Search__MeaMt" >
							<div>
								<div>
									<div class="Search_Search_search__RaFaG">
										<span class="SvgIcon_SvgIcon__root__8vwon"><svg
												class="SvgIcon_SvgIcon__root__svg__DKYBi"
												viewBox="0 0 24 24">
												<path fill-rule="evenodd" clip-rule="evenodd"
													d="M9.99961 2.1001C5.63656 2.1001 2.09961 5.63705 2.09961 10.0001C2.09961 14.3631 5.63656 17.9001 9.99961 17.9001C11.8569 17.9001 13.5645 17.2592 14.9133 16.1864L19.8634 21.1365C20.2148 21.4879 20.7847 21.4879 21.1362 21.1365C21.4876 20.785 21.4876 20.2151 21.1362 19.8637L16.1861 14.9136C17.2587 13.5648 17.8996 11.8573 17.8996 10.0001C17.8996 5.63705 14.3627 2.1001 9.99961 2.1001ZM3.89961 10.0001C3.89961 6.63116 6.63067 3.9001 9.99961 3.9001C13.3685 3.9001 16.0996 6.63116 16.0996 10.0001C16.0996 13.369 13.3685 16.1001 9.99961 16.1001C6.63067 16.1001 3.89961 13.369 3.89961 10.0001Z"></path></svg></span><input
											type="text" placeholder="검색" value="">
									</div>
									<div class="CalendarBtn_CalendarBtn__tKe6N">
										<button type="button">
											<span class="SvgIcon_SvgIcon__root__8vwon"><svg
													class="SvgIcon_SvgIcon__root__svg__DKYBi"
													viewBox="0 0 24 24">
													<path d="M17.9999 14H14.9999V17H17.9999V14Z"></path>
													<path fill-rule="evenodd" clip-rule="evenodd"
														d="M16.1997 4.1H6.79983V1H4.99983V4.10078C4.75618 4.10244 4.53518 4.10758 4.34125 4.12343C4.03546 4.14841 3.71861 4.20442 3.41016 4.36158C2.95857 4.59168 2.59141 4.95883 2.36132 5.41042C2.20415 5.71888 2.14814 6.03573 2.12316 6.34151C2.0997 6.62867 2.09971 6.97516 2.09973 7.36667V17.6333C2.09971 18.0248 2.0997 18.3713 2.12316 18.6585C2.14814 18.9643 2.20415 19.2811 2.36132 19.5896C2.59141 20.0412 2.95857 20.4083 3.41016 20.6384C3.71861 20.7956 4.03546 20.8516 4.34125 20.8766C4.62838 20.9 4.97483 20.9 5.3663 20.9H18.6331C19.0245 20.9 19.3711 20.9 19.6582 20.8766C19.964 20.8516 20.2809 20.7956 20.5893 20.6384C21.0409 20.4083 21.4081 20.0412 21.6381 19.5896C21.7953 19.2811 21.8513 18.9643 21.8763 18.6585C21.8998 18.3713 21.8998 18.0248 21.8997 17.6333V7.36666C21.8998 6.97518 21.8998 6.62865 21.8763 6.34151C21.8513 6.03573 21.7953 5.71888 21.6381 5.41042C21.4081 4.95883 21.0409 4.59168 20.5893 4.36158C20.2809 4.20442 19.964 4.14841 19.6582 4.12343C19.3711 4.09996 19.0246 4.09998 18.6331 4.1L17.9997 4.1V1H16.1997V4.1ZM4.48782 5.91745C4.29335 5.93334 4.23975 5.95907 4.22734 5.9654C4.11444 6.02292 4.02265 6.11471 3.96513 6.22761C3.9588 6.24002 3.93307 6.29362 3.91718 6.48809C3.90043 6.69307 3.89973 6.96511 3.89973 7.4V9.2001H20.0997V7.4C20.0997 6.96511 20.099 6.69307 20.0823 6.48809C20.0664 6.29362 20.0407 6.24002 20.0343 6.22761C19.9768 6.11471 19.885 6.02292 19.7721 5.9654C19.7597 5.95907 19.7061 5.93334 19.5116 5.91745C19.3067 5.9007 19.0346 5.9 18.5997 5.9H5.39973C4.96484 5.9 4.6928 5.9007 4.48782 5.91745ZM3.89973 17.6V11.0001H20.0997V17.6C20.0997 18.0349 20.099 18.3069 20.0823 18.5119C20.0664 18.7064 20.0407 18.76 20.0343 18.7724C19.9768 18.8853 19.885 18.9771 19.7721 19.0346C19.7597 19.0409 19.7061 19.0667 19.5116 19.0826C19.3067 19.0993 19.0346 19.1 18.5997 19.1H5.39973C4.96484 19.1 4.6928 19.0993 4.48782 19.0826C4.29335 19.0667 4.23975 19.0409 4.22734 19.0346C4.11444 18.9771 4.02265 18.8853 3.96513 18.7724C3.9588 18.76 3.93307 18.7064 3.91718 18.5119C3.90043 18.3069 3.89973 18.0349 3.89973 17.6Z"></path></svg></span>
											<p>전체 기간</p>
										</button>
										<div></div>
									</div>
								</div>
							</div>
						</div>
						<div>
							<div class="List_List_table__K2VFf">
								<ul>
									<dl class="List_List_empty__pphW6">
										<dd>요청하신 결과가 없습니다.</dd>
									</dl>
								</ul>
							</div>
						</div>
					</section>
				</div>
          </div>
        </div>
				<!-- golgolz end -->
			</section>
			<jsp:include page="../../assets/layout/user/footer.jsp" />
		</main>
	</div>
</body>
</html>