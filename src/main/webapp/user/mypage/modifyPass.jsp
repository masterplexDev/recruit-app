<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
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
    .css-9dug5j {
        min-width: auto;
    }
    .css-j2itip {
        display: flex;
        flex-direction: column;
        align-items: flex-end;
	    }
	}
	.css-j2itip {
	    color: rgb(23, 23, 25);
	    font-weight: var(--text-weight-body-normal);
	    text-align: left;
	    letter-spacing: var(--text-spacing-body);
	    font-size: var(--text-size-body);
	    line-height: var(--text-height-body);
	    flex: 1 1 0%;
	    margin-right: 15px;
	    word-break: break-all;
	}
	.css-15hfbq8:not(:first-child) {
	    border-top: 1px solid rgba(112, 115, 124, 0.22);
	}
	.css-15hfbq8 {
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    cursor: pointer;
	}
	.css-xr5rwo:not(:first-child) {
	    border-top: 1px solid rgba(112, 115, 124, 0.22);
	}
	.css-xr5rwo {
	    display: flex;
	    -webkit-box-align: center;
	    cursor: pointer;
	    align-items: flex-start;
	}
	#__next {
	    padding: 0;
	    margin: 0;
	    width: 100%;
	    height: 100%;
	    min-width: 320px;
	    text-rendering: optimizeLegibility;
	    word-break: keep-all;
	    overflow-wrap: anywhere;
	}
	body {
	background-color: #FFFFFF;
	}
	.css-1sbrczv {
		    width: 100%;
		    height: 48px;
		    min-height: 48px;
		    padding: 0px 16px;
		    outline: none;
		    background-color: transparent;
		    border: 1px solid rgba(112, 115, 124, 0.22);
		    color: #171719;
		    border-radius: 10px;
		    font-size: 15px;
		    font-weight: 400;
		}
    </style>
	<style type="text/css">
		<!-- golgolz start -->
		
		<!-- golgolz end -->
	</style>
	<script type="text/javascript">
		$(function(){
			<!-- golgolz start -->
			$("#modifyUser").click(function(){
      		  location.href = "modifyUserInfo.jsp";
      	  });
			<!-- golgolz end -->
		});
	</script>
</head>
<body>
    <div id="__next" data-reactroot="">
		<jsp:include page="../../assets/layout/user/header.jsp" />
		<main class="JobsFeed_Jobsfeed__DpeV9">  
			<section class="Section_Section__P1hhc">
			<!-- golgolz start -->
        <div class="MainLayout_MainLayout__root__p6itg">
          <div class="Grid_Grid__container__J9CcC Grid_Grid__spacing__5__ZwgDV">
          <jsp:include page="mypage_layout.jsp"/>
            <div
              class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE Grid_Grid__grid__md__1__aOHPk MainLayout_MainLayout__space__8eQvZ"
            ></div>
            <div
              class="Grid_Grid__item__FUkSS Grid_Grid__justify_center__QJu2X Grid_Grid__align-items_flex-start__PA0JE Grid_Grid__grid__xs__12__rVqKh Grid_Grid__grid__md__6__9g_JE"
            >
              <div
                class="Grid_Grid__container__J9CcC Grid_Grid__direction_column__jR3AZ Grid_Grid__wrap_nowrap__4r_cp ProfileView_ProfileView__root__eOS_q"
              >
                <div class="Grid_Grid__container__J9CcC Grid_Grid__align-items_center__VEikH ProfileViewFollowerFollwingInfo_ProfileViewFollowerFollwingInfo__root__TSJnS" >
                </div>
                <section class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE ProfileView_ProfileView__borderSection__VkDe7" style="margin: 30px 0px 30px 0px;">
                  <h1 style="font-size: 25px;">비밀번호 재설정</h1>
                </section>
                <section
                  class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE" style="margin-bottom: 50px;"
                >
                  <article class="css-dnwsdj">
                  <div class="css-9as5im">
                  <p data-testid="Typography" color="rgba(55, 56, 60, 0.61)" class="css-1b12nwt"><strong>새로운 비밀번호</strong>를 입력해주세요.</p>
                  </div>
                  <ul class="css-14jv0iu">
                  <li data-list-type="SOCIAL_LINK" tabindex="0" class="css-15hfbq8"><p data-testid="Typography" color="#000000" class="css-9dug5j">새로운 비밀번호</p>
                  <input type="password" name="password" autocomplete="on" class="css-1sbrczv" value="*********">
                  </li>
                  <li data-list-type="SOCIAL_LINK" tabindex="0" class="css-15hfbq8"><p data-testid="Typography" color="#000000" class="css-9dug5j">비밀번호 확인</p>
                  <input type="password" name="password" autocomplete="on" class="css-1sbrczv" value="*********">
                  </li>
                   <li data-list-type="SOCIAL_LINK" tabindex="0" style="text-align: center;">
                   <input type="button" value="수정완료" class="button modifyBtn" style="margin: 5px;">
                   <input type="button" value="취소" class="button" style="margin: 5px;">
                   </li>
                  </ul></article>
                </section>
                <style>
                	.button{
                		width: 120px; height: 40px; border: 1px solid rgba(112, 115, 124, 0.22); border-radius: 10px;
                	}
                	.modifyPassBtn{
                		background-color: grey;
                		color: #FFFFFF;
                	}
                	.modifyBtn{
                		background-color: skyblue;
                		color: #FFFFFF;
                	}
                </style>
              </div>
            </div>
            <div
              class="Grid_Grid__item__FUkSS Grid_Grid__align-items_flex-start__PA0JE Grid_Grid__grid__md__1__aOHPk MainLayout_MainLayout__space__8eQvZ"
            ></div>
          </div>
        </div>
			<!-- golgolz end -->
			</section>
			<jsp:include page="../../assets/layout/user/footer.jsp" />
		</main>
	</div>
</body>
</html>