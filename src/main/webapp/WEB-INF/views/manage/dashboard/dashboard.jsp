<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" info=""%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>    
	<style>
    .chart-container 
    {
        height: 320px;
        margin-bottom: 10px; 
    }
    .bg-gradient-primary{
    	background-image: linear-gradient(195deg, #ec407a, #d81b60) !important;
    }
    
    .chart.fullscreen {
    position: fixed;
    top: 0;
    left: 0;
    width: 100vw;
    height: 100vh;
    z-index: 9999;
    background: white;
}

.chart.fullscreen + .card-body {
    display: none;
}

    </style>
    <!-- AdminLTE CSS -->
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/admin-lte@3.1/dist/css/adminlte.min.css"> -->
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- AdminLTE JS -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/admin-lte@3.1/dist/js/adminlte.min.js"></script> -->
    <!-- ChartJS -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>
    <jsp:include page="../../assets/layout/admin/lib.jsp" />
    <script type="text/javascript">
        $(function(){
            $("#dashboard_menu").addClass("bg-gradient-primary");
        });
    </script>
</head>
<body class="hold-transition sidebar-mini">
    <jsp:include page="../../assets/layout/admin/header.jsp" />
    <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ps ps--active-y">
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" data-scroll="true">
            <div class="container-fluid py-1 px-3">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
                        <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">관리자 기능</a></li>
                        <li class="breadcrumb-item text-sm text-dark active" aria-current="page">대시보드</li>
                    </ol>
                    <h6 class="font-weight-bolder mb-0">대시보드</h6>
                </nav>
            </div>
        </nav>
        <!-- golgolz start -->
		<div class="container-fluid">
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-6 col-md-12 chart-container">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex flex-column">
                                <h4 class="card-title">최근 회원가입자 수 : </h4>
                                <span class="text-bold text-lg">${totalSignups} 명</span> 
                            </div>
                            <div class="position-relative mb-4">
                                <canvas id="signup-chart"></canvas>
                            </div>
                            <div class="d-flex flex-row justify-content-end">
                            </div>
                        </div>
                    </div>
                </div>
                        <div class="col-lg-6 col-md-12 chart-container">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex flex-column">
                                <h4 class="card-title">최근 등록 기업 수 : </h4>
                                <span class="text-bold text-lg">${totalCompanies} 개</span>
                            </div>
                            <div class="position-relative mb-4">
                                <canvas id="companies-chart"></canvas>
                            </div>
                            <div class="d-flex flex-row justify-content-end">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">기술 스택</h3>
                        </div>
                        <div class="card-body">
                            <canvas id="techStack-chart"></canvas>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">등록 리뷰 수</h3>
                        </div>
                        <div class="card-body">
                            <canvas id="reviewCount-chart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script>
    $(function(){
        $("#dashboard_menu").addClass("bg-gradient-primary");
    });
        $(function () {
        	
        	// JSP에서 전달된 JSON 데이터
            var signupCountsJson = '${signupCountsLastWeekJson}';
            console.log("Signup Counts JSON:", signupCountsJson); // JSON 데이터 확인

            // JSON 데이터 파싱
            try {
                var parsedSignupCounts = JSON.parse(signupCountsJson);
                console.log("Parsed Signup Counts:", parsedSignupCounts); // 파싱된 데이터 확인

                // 날짜와 가입자 수를 추출하여 배열에 저장
                var labels = parsedSignupCounts.map(function(item) {
                    return item.signupDate;
                });
                var data = parsedSignupCounts.map(function(item) {
                    return item.signupCount;
                });
                // 데이터 확인을 위해 콘솔에 출력
                console.log("Labels:", labels);
                console.log("Data:", data);

                // 회원가입자 수 차트 생성
                var ctxSignup = document.getElementById('signup-chart').getContext('2d');
                var signupChart = new Chart(ctxSignup, {
                    type: 'line',
                    data: {
                        labels: labels,
                        datasets: [{
                            label: '가입자 수',
                            backgroundColor: 'rgba(60,141,188,0.1)',
                            borderColor: 'rgba(60,141,188,1)',
                            pointRadius: false,
                            pointColor: '#3b8bba',
                            pointStrokeColor: 'rgba(60,141,188,1)',
                            pointHighlightFill: '#fff',
                            pointHighlightStroke: 'rgba(60,141,188,1)',
                            data: data
                        }]
                    },
                    options: {
                        maintainAspectRatio: false,
                        responsive: true,
                        tooltips: {
                            mode: 'index',
                            intersect: true
                        },
                        hover: {
                            mode: 'nearest',
                            intersect: true
                        },
                        scales: {
                            yAxes: [{
                                ticks: {
                                    beginAtZero: true,
                                    max: 10
                                }
                            }]
                        }
                    }
                });
            } catch (e) {
                console.error('JSON 파싱 오류:', e);
            }

         // 등록 기업 수 데이터 처리
            var registeredCompanyCountsJson = '${registeredCompanyCountsLastWeekJson}';
            console.log("Registered Company Counts JSON:", registeredCompanyCountsJson);

            try {
                var parsedRegisteredCompanyCounts = JSON.parse(registeredCompanyCountsJson);
                console.log("Parsed Registered Company Counts:", parsedRegisteredCompanyCounts);

                var companyLabels = parsedRegisteredCompanyCounts.map(function(item) {
                    return item.registrationDate;
                });
                var companyData = parsedRegisteredCompanyCounts.map(function(item) {
                    return item.companyCount;
                });

                console.log("Company Labels:", companyLabels);
                console.log("Company Data:", companyData);

                var ctxCompanies = document.getElementById('companies-chart').getContext('2d');
                var companiesChart = new Chart(ctxCompanies, {
                    type: 'line',
                    data: {
                        labels: companyLabels,
                        datasets: [{
                            label: '등록 기업 수',
                            backgroundColor: 'rgba(0,128,0,0.1)',
                            borderColor: 'rgba(0,128,0,1)',
                            pointRadius: false,
                            pointColor: '#008000',
                            pointStrokeColor: 'rgba(0,128,0,1)',
                            pointHighlightFill: '#fff',
                            pointHighlightStroke: 'rgba(0,128,0,1)',
                            data: companyData
                        }]
                    },
                    options: {
                        maintainAspectRatio: false,
                        responsive: true,
                        tooltips: {
                            mode: 'index',
                            intersect: true
                        },
                        hover: {
                            mode: 'nearest',
                            intersect: true
                        },
                        scales: {
                            yAxes: [{
                                ticks: {
                                    beginAtZero: true,
                                    max: 10
                                }
                            }]
                        }
                    }
                });
            } catch (e) {
                console.error('Registered Company JSON 파싱 오류:', e);
            }
            
            // 기술 스택 데이터 처리
            var skillCountsJson = '${skillCountsJson}';
            console.log("Skill Counts JSON:", skillCountsJson);

            try {
                var parsedSkillCounts = JSON.parse(skillCountsJson);
                console.log("Parsed Skill Counts:", parsedSkillCounts);

                var skillLabels = parsedSkillCounts.map(function(item) {
                    return item.skillCode;
                });
                var skillData = parsedSkillCounts.map(function(item) {
                    return item.skillCount;
                });

                console.log("Skill Labels:", skillLabels);
                console.log("Skill Data:", skillData);

                var ctxTechStack = document.getElementById('techStack-chart').getContext('2d');
                var techStackChart = new Chart(ctxTechStack, {
                    type: 'doughnut',
                    data: {
                        labels: skillLabels,
                        datasets: [{
                            data: skillData,
                            backgroundColor: ['#f56954', '#00a65a', '#f39c12', '#00c0ef', '#ff851b',
                                '#3c8dbc', '#d2d6de', '#7cb342', '#ff7043', '#d81b60']
                        }]
                    },
                    options: {
                        responsive: true,
                        legend: {
                            position: 'right'
                        }
                    }
                });
            } catch (e) {
                console.error('Skill JSON 파싱 오류:', e);
            }
            
            // 최근 등록 리뷰 수 차트 데이터 처리
            var reviewCountsJson = '${reviewCountsJson}';
            var parsedReviewCounts = JSON.parse(reviewCountsJson);
            var reviewLabels = parsedReviewCounts.map(function(item) { return item.month; });
            var reviewData = parsedReviewCounts.map(function(item) { return item.reviewCount; });

            var ctxReviewCount = document.getElementById('reviewCount-chart').getContext('2d');
            var reviewCountChart = new Chart(ctxReviewCount, {
                type: 'bar',
                data: {
                    labels: reviewLabels,
                    datasets: [{
                        label: '리뷰 수',
                        data: reviewData,
                        backgroundColor: 'rgba(255,215,0,0.5)',
                        borderColor: 'rgba(255,215,0,1)',
                        borderWidth: 1
                    }]
                },
                options: {
                    responsive: true,
                    scales: {
                    	 yAxes: [{
                             ticks: {
                                 beginAtZero: true,
                                 maxTicksLimit: 10 // y축 눈금을 10개로 제한
                             }
                         }]
                
                    }
                }
            });
            
        });
    </script>
    </div>
  	</main>
</body>
</html>
