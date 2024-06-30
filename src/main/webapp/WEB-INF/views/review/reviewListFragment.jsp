<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:forEach var="review" items="${reviewScreenOutput}">
    <section class="content_ty4 video_ad_content" data-content_type="review" data-content_id="${review.reviewNum}" data-company_id="${review.companyCode}">
        <div class="content_wrap">
            <div class="content_top_ty2">
                <span class="ico_pers"></span>
                <span class="txt1">${review.userId}</span>
                <span class="vbar">|</span>
                <span class="txt1"><fmt:formatDate value="${review.inputDate}" pattern="yyyy-MM-dd"/></span>
            </div>
            <div class="ctbody_col2">
                <!-- 개별 리뷰 통계 값 그래프 -->
                <c:set var="reviewQuestions" value="${reviewQuestionsMap[review.reviewNum]}"/>
                <dl class="ctbody_lft">
                    <dt class="df_tit">
                        커리어 (개별)
                    </dt>
                    <dd class="blo_box1">
                        <div class="us_bl_s">
                            <div class="bl_score" style="width:${reviewQuestions.question1 * 20}%;"></div>
                        </div>
                    </dd>
                    <dt class="df_tit">
                        휴가 및 연차 (개별)
                    </dt>
                    <dd class="blo_box1">
                        <div class="us_bl_s">
                            <div class="bl_score" style="width:${reviewQuestions.question2 * 20}%;"></div>
                        </div>
                    </dd>
                    <dt class="df_tit">
                        연봉 (개별)
                    </dt>
                    <dd class="blo_box1">
                        <div class="us_bl_s">
                            <div class="bl_score" style="width:${reviewQuestions.question3 * 20}%;"></div>
                        </div>
                    </dd>
                    <dt class="df_tit">
                        복지 혜택 (개별)
                    </dt>
                    <dd class="blo_box1">
                        <div class="us_bl_s">
                            <div class="bl_score" style="width:${reviewQuestions.question4 * 20}%;"></div>
                        </div>
                    </dd>
                </dl>

                <div class="content_body_ty1">
                    <div class="us_label_wrap">
                        <h2 class="us_label "> <span class="us_label_box">BEST</span> ${review.title} </h2>
                    </div>
                    <dl class="tc_list">
                        <dd>
                            ${review.content}
                        </dd>
                    </dl>
                    <div style="display: flex; justify-content: flex-end; margin-top: 20px;">
                        <form action="${pageContext.request.contextPath}/review/updateRecommend.do" method="post" onsubmit="return checkLoginAndSubmit(this);">
                            <input type="hidden" name="reviewNum" value="${review.reviewNum}">
                            <input type="hidden" name="userId" value="${sessionScope.userId}"> <!-- 유저 ID를 넘기도록 설정 -->
                            <button type="submit" class="btn btn-dark">추천 ${review.recommend}</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</c:forEach>