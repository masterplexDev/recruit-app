<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="../assets/layout/user/lib.jsp" />  
	<!-- golgolz start -->
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
		<jsp:include page="../assets/layout/user/header.jsp" />
		<main class="JobsFeed_Jobsfeed__DpeV9">  
			<section class="Section_Section__P1hhc">
			<!-- golgolz start -->
			<div class="fixed-top">
				<div class="popup-temporary-storage" aria-hidden="true">
					임시저장이 완료되었습니다.</div>
				</div>
				<div class="resumePage">
					<form action="https://www.jobkorea.co.kr/User/Resume/Save" method="post" id="frm1">
						<div class="resumeWrapper">
							<div class="resumeContainer">
								<div class="resumeTitle">
									<input id="UserResume_M_Resume_Title" maxlength="100"
										name="UserResume.M_Resume_Title"
										placeholder="기업에게 나에 대해 알려줍시다. 강점, 목표, 관심분야도 좋아요." type="text"
										value="" />
								</div>
								<div class="formWrap formWrapProfile">
									<h2 class="header">
										인적사항
										<div class="description">
											<span class="star">*</span> 필수 입력 정보입니다.
										</div>
									</h2>
									<div class="form formProfile">
										<div class="row">
											<div class="input is-label input-profile-name is-value">
												<label for="UserInfo_M_Name">이름 <span class="star">*</span>
												</label> <input type="text" class="dev-essential"
													name="UserInfo.M_Name" id="UserInfo_M_Name" value="우미연"
													data-format-type="name" />
												<div class="validation hidden" aria-hidden="true"></div>
											</div>
											<div class="input is-label input-profile-birth is-value">
												<label for="UserInfo_M_Born">생년월일 <span class="star">*</span>
												</label> <input class="dev-essential" data-format-type="birth"
													data-max-date="2009.06.01" data-val="true"
													data-val-date="생년월일 필드는 날짜여야 합니다." id="UserInfo_M_Born"
													name="UserInfo.M_Born" placeholder="1988.03.01" type="text"
													value="1996-08-21 오전 12:00:00" />
												<div class="validation hidden" aria-hidden="true"></div>
											</div>
											<div class="dropdown dropdown-profile-sex is-label selected">
												<div class="label" aria-hidden="true">
													성별 <span class="star">*</span>
												</div>
												<button type="button"
													class="button buttonChoose dev-essential"
													aria-haspopup="true">
													<span>여자</span>
												</button>
												<div class="list hidden" aria-hidden="true">
													<ul>
														<li>
															<button type="button" class="button" data-value="False">
																<span>남자</span>
															</button>
														</li>
														<li>
															<button type="button" class="button" data-value="True">
																<span>여자</span>
															</button>
														</li>
													</ul>
												</div>
												<div class="validation hidden" aria-hidden="true">성별을
													입력해주세요</div>
												<input class="dev-essential" id="UserInfo_M_Gender"
													name="UserInfo.M_Gender" type="hidden" value="True" />
											</div>
											<div class="input input-profile-email is-label is-value">
												<label for="UserInfo_M_Email">이메일 <span class="star">*</span>
												</label> <input type="email" name="UserInfo.M_Email"
													id="UserInfo_M_Email" data-format-type="email"
													value="yeon.dev.8@gmail.com" autocomplete="off"
													spellcheck="false" class="dev-essential" data-privacy="이메일" />
												<div class="autocomplete hidden" aria-hidden="true">
													<div class="list">
														<ul></ul>
													</div>
												</div>
												<div class="validation hidden" aria-hidden="true"></div>
												<div class="backdrop">
													<div class="highlights"></div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="input is-label input-profile-tel is-value">
												<label for="UserInfo_M_Hand_Phone">전화번호 <span
													class="star">*</span>
												</label> <input type="text" name="UserInfo.M_Hand_Phone"
													id="UserInfo_M_Hand_Phone" placeholder="010-1234-1234"
													value="010-1234-1234" maxlength="30" autocomplete="off"
													data-format-type="hp" class="dev-essential" />
												<div class="validation hidden" aria-hidden="true"></div>
											</div>
											<div class="input is-label input-profile-hp is-value">
												<label for="UserInfo_M_Hand_Phone">휴대폰번호 <span
													class="star">*</span>
												</label> <input type="text" name="UserInfo.M_Hand_Phone"
													id="UserInfo_M_Hand_Phone" placeholder="010-1234-1234"
													value="010-1234-1234" maxlength="30" autocomplete="off"
													data-format-type="hp" class="dev-essential" />
												<div class="validation hidden" aria-hidden="true"></div>
											</div>
											<input id="UserInfo_M_Zipcode" name="UserInfo.M_Zipcode"
												type="hidden" value="" /> <input id="UserInfo_M_AddAddr"
												name="UserInfo.M_AddAddr" type="hidden" value="" /> <input
												id="UserInfo_M_AddrType" name="UserInfo.M_AddrType"
												type="hidden" value="L" /> <a
												href="javascript:post_check();"
												class="input is-label input-profile-addr"> <label
												for="temp_M_Addr_Text">주소</label> <input type="text"
												id="temp_M_Addr_Text" readonly="" class="dev-optional"
												data-privacy="주소" /> <input id="UserInfo_M_Addr_Text"
												name="UserInfo.M_Addr_Text" type="hidden" value="" /> <input
												id="UserInfo_M_Addr_Text1" name="UserInfo.M_Addr_Text1"
												type="hidden" value="" />&gt; <i class="icon icon-search"
												aria-hidden="true"></i>
											</a>
										</div>

										<div class="picture dropped" style="">
											<div class="guide">사진추가</div>
											<a href="javascript:;" class="buttonAddFile"> 사진등록 </a>
											<div class="image hidden">
												<input type="hidden" class="dev-optional dev-photo"
													data-privacy="사진" value="False" /> <img
													src="https://www.jobkorea.co.kr/User/Resume/Write" />
											</div>
											<button type="button" class="button buttonChangePicture"
												aria-hidden="false" style="display: none">
												<span>사진변경</span>
											</button>
											<button type="button" class="button buttonDelete"
												aria-hidden="false" style="display: none">삭제</button>
										</div>
									</div>
								</div>

								<div class="formWrap formWrapSkill" id="formSkill"
									style="display: block">
									<h2 class="header">스킬</h2>
									<div class="form">
										<div class="colum dev-input-skill" style="">
											<div id="skillAutoComplete"
												class="input input-search-wrap is-label"
												data-comp_type="jkAc">
												<label id="skillSearch" for="skillText">찾으시는 스킬이
													있나요?</label> <input type="text" id="skillText"
													data-type="Skill_Name" data-comp_type="jkAcInput"
													autocomplete="off" maxlength="50" /> <input type="hidden"
													data-type="Skill_Name" />
												<button type="button" class="delete-button">delete</button>
												<button type="button" class="search-button">search</button>
												<div id="skillSearchResult" class="autocomplete hidden"
													aria-hidden="true" data-comp_type="jkAcResultWrap">
													<div class="list">
														<ul></ul>
													</div>
												</div>
											</div>
										</div>
										<div class="colum dev-input-skill" style="">
											<div class="plus-keyword-wrap">
												<div class="tap-list">
													<button type="button" class="tab-button on"
														data-code="1000229">백엔드개발자</button>
												</div>
												<div class="keyword-list"></div>
												<button type="button" class="button button-reset">
													초기화</button>
											</div>
										</div>
									</div>
									<div class="popup popupSkill hidden" aria-hidden="true">
										<div class="popupContainerWrap">
											<div class="popupHeader">
												<span class="dev-all-skill-title">백엔드개발자</span> 스킬 전체보기<span
													class="pagination"><em class="current">9</em>/20</span>
												<!-- <p>자신을 대표하는 스킬을 선택하세요.</p> -->
											</div>
											<div class="popupContainer">
												<div class="plus-keyword-wrap">
													<div class="keyword-list"></div>
												</div>
											</div>
											<div class="popupFooter">
												<div class="btn-wrap">
													<button type="button" class="btn cancel">취소</button>
													<button type="button" class="btn check">확인</button>
												</div>
											</div>
											<button type="button"
												class="button buttonClose is-event is-popup-hidden"
												data-target=".popupSkill">닫기</button>
										</div>
									</div>
								</div>
								<script type="text/template" id="tplSkillAutoComplete">
              						<li>
                  						<%-- <button type="button" class="button dev-skill-item" data-json='<%=itemJson%>'><span><%=Skill_Name%></span></button> --%>
              						</li>
            					</script>	
								<script type="text/template" id="tplSkillTabMenuItem">
              						<%-- <button type="button" class='tab-button <% if (index == 1) { %>on <%}%>' data-code="<%=data.BizJobtype_Code%>"><% if (data.BizJobtype_Code == 0) { %><i class="icon-star"></i>추천<% } else { %> <%=data.BizJobtype_Name%> <%}%> </button> --%>
            					</script>
								<script type="text/template" id="tplSkillItem">
              						<%-- <button type="button" class="list-btn dev-skill-item-<%=cid%>" data-code="<%=data.Skill_Code%>" data-name="<%=data.Skill_Name%>" data-type="<%=data.Skill_Type_Code%>" data-cid="<%=cid%>"><span><%=data.Skill_Name%></span></button> --%>
            					</script>
								<script type="text/template" id="tplSelectedSkillItem">
              						<%-- <button type="button" class="list-btn dev-skill-item-<%=cid%>" data-code="<%=data.Skill_Code%>" data-name="<%=data.Skill_Name%>" data-type="<%=data.Skill_Type_Code%>" data-cid="<%=cid%>"><span><%=data.Skill_Name%></span></button>
	              						<input type="hidden" class="dev-skill-item-<%=cid%>" name="Skill.index" value="<%=cid%>">
	              						<input type="hidden" class="dev-skill-item-<%=cid%>" name="Skill[<%=cid%>].Skill_Code" value="<%=data.Skill_Code%>" />
	              						<input type="hidden" class="dev-skill-item-<%=cid%>" name="Skill[<%=cid%>].Skill_Name" value="<%=data.Skill_Name%>" /> --%>
            					</script>
								<div class="formWrap formWrapEducation" id="formEducation"
									style="">
									<h2 class="header">학력</h2>
									<div class="checkbox check-education-under-highschool">
										<input type="checkbox" id="LowLastEduLevel"
											data-checked-value="true" data-non-checked-value="false" />
										<label for="LowLastEduLevel">고등학교 미만 졸업</label> <input
											type="hidden" name="LowLastEduLevel" value="false" />
									</div>
									<div class="form formEducation">
										<div id="school_containers">
											<div class="container container1">
												<div class="row">
													<div class="dropdown dropdown-education-category">
														<div class="label" aria-hidden="false">학교구분</div>
														<button type="button" class="button buttonChoose">
															<span><span>학교구분 <span class="star">*</span>
															</span></span>
														</button>
														<div class="list hidden">
															<ul>
																<li>
																	<button type="button" class="button"
																		data-schltypecode="0">
																		<span>고등학교</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button"
																		data-schltypecode="1">
																		<span>대학(2,3년)</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button"
																		data-schltypecode="2">
																		<span>대학교(4년)</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button"
																		data-schltypecode="3">
																		<span>대학원</span>
																	</button>
																</li>
															</ul>
														</div>
													</div>
													<div class="input input-education-name search is-label">
														<label for="lbl_education_school">학교명 <span
															class="star">*</span>
														</label> <input type="text" id="lbl_education_school" />
													</div>
												</div>
												<button type="button" class="button buttonDeleteField">
													<span>학교 삭제</span>
												</button>
											</div>
										</div>
										<button type="button" class="button buttonAddField"
											id="school_addbutton">
											<span>추가</span>
										</button>
										<div class="popup popupMajor hidden" aria-hidden="true"
											id="otherMajorDeletePop">
											<div class="popupHeader">이력서에서 삭제할 전공을 선택해주세요</div>
											<div class="popupContainer">
												<ul class="list"></ul>
											</div>
											<div class="popupFooter">
												<div class="buttons alignCenter">
													<button type="button" class="button buttonConfirm">
														<span>확인</span>
													</button>
													<button type="button"
														class="button is-event is-popup-hidden"
														data-target=".popupMajor">
														<span>취소</span>
													</button>
												</div>
											</div>
											<button type="button"
												class="button buttonClose is-event is-popup-hidden"
												data-target=".popupMajor">닫기</button>
											<input type="hidden" class="devUnivCid" />
										</div>
									</div>
								</div>
								<script type="text/template" id="tplSchoolAutoComplete">
              						<%-- <li>
                  						<button type="button" class="button" data-json='<%=itemJson%>'><span><%=Highlight_Name%> (<%=Seat_Area_Name%>)</span></button>
              						</li> --%>
            					</script>
								<script type="text/template" id="tplOtherMajorDeleteViewItem">
              						<%-- <li>
                  						<input type="checkbox" id="chk_<%=Row_Id%>" data-rowid="<%=Row_Id%>">
                  						<label for="chk_<%=Row_Id%>"><span><%=Major_Type_Name%></span><%=Major_Name%></label>
              						</li> --%>
            					</script>
								<script type="text/javascript" src="./edu.js"></script>
								<script type="text/template" id="tplSchool">
              						<div class="container container<%=no%>">
                  						<div class="row">
                      						<div class="dropdown dropdown-education-category">
                          						<div class="label" aria-hidden="false">학교구분</div>
                          						<button type="button" class="button buttonChoose"><span><span>학교구분 <span class="star">*</span></span></span></button>
                          						<div class="list hidden">
                              						<ul>
                                  						<li><button type="button" class="button" data-schltypecode="0"><span>고등학교</span></button></li>
                                  						<li><button type="button" class="button" data-schltypecode="1"><span>대학(2,3년)</span></button></li>
                                  						<li><button type="button" class="button" data-schltypecode="2"><span>대학교(4년)</span></button></li>
                                  						<li><button type="button" class="button" data-schltypecode="3"><span>대학원</span></button></li>
                              						</ul>
                          						</div>
                      						</div>
                      						<div class="input input-education-name search is-label">
                          						<label for="lbl_education_school">학교명 <span class="star">*</span></label>
                          						<input type="text" id="lbl_education_school">
                      						</div>
                  						</div>
                  						<button type="button" class="button buttonDeleteField"><span>학교 삭제</span></button>
              						</div>
            					</script>
								<script type="text/template" id="tplGed"></script>
								<script type="text/template" id="tplHighSchool">
              						<div class="container container<%=no%> <%print(!_.isUndefined(data.Major_Aftn_Code) && data.Major_Aftn_Code != '0' ? 'ged' : '' ) %>" data-cid="<%=cid%>">
                  						<div class="row">
                  							<div class="dropdown dropdown-education-category selected is-label">
                  					    		<div class="label" aria-hidden="false">학교구분</div>
                  					    		<button type="button" class="button buttonChoose" aria-haspopup="true"><span>고등학교</span></button>
                 					    		<div class="list hidden" aria-hidden="true">
				                        		<ul>
                                  					<li><button type="button" class="button" data-schltypecode="0"><span>고등학교</span></button></li>
                                  					<li><button type="button" class="button" data-schltypecode="1"><span>대학(2,3년)</span></button></li>
                                  					<li><button type="button" class="button" data-schltypecode="2"><span>대학교(4년)</span></button></li>
                                  					<li><button type="button" class="button" data-schltypecode="3"><span>대학원</span></button></li>
                              					</ul>
                          					</div>
                      					</div>
                      					<%if (data.Ged_Stat == 0) { %>
                      					<div class="input input-education-name search is-label is-ellipsis" id="highSchoolAutocomplete_<%=cid%>" data-comp_type="jkAc">
                      					    <label for="HighSchool_Schl_Name_Search">학교명 <span class="star">*</span></label>
                          					<input type="text" id="HighSchool_Schl_Name_Search" data-type="School_Name" data-comp_type="jkAcInput" value="<%=data.Schl_Name%>" autocomplete="off" maxlength="50" />
                          					<input type="hidden" name="HighSchool.Schl_Name" data-type="School_Name" value="<%=data.Schl_Name%>" />
                          					<input type="hidden" name="HighSchool.School_Code" data-type="School_Code" value="<%=data.School_Code%>" />
                          					<input type="hidden" name="HighSchool.Area_Code" data-type="GG_Area_Code" value="<%=data.Area_Code%>" />
                          				<div class="validation hidden" aria-hidden="true"></div>
                          				<div class="autocomplete hidden" aria-hidden="true" data-comp_type="jkAcResultWrap"></div>
                          				<i class="icon icon-search" aria-hidden="true"></i>
                      				</div>
                      				<div class="input input-education-enddate is-label">
                          				<label for="HighSchool_Grad_Year">졸업년도 <span class="star">*</span></label>
                          				<input type="text" name="HighSchool.Grad_Year" id="HighSchool_Grad_Year" placeholder="2016" data-format-type="year" value="<%=data.Grad_Year%>" autocomplete="off">
                          				<div class="validation hidden" aria-hidden="true"></div>
                      				</div>
                      				<div class="dropdown dropdown-edcation-state is-label">
                          				<div class="label hidden" aria-hidden="true">졸업상태</div>
                          				<button type="button" class="button buttonChoose"><span><span>졸업상태 <span class="star">*</span></span></span></button>
                          				<div class="list hidden">
                              				<ul>
                                  				<li><button type="button" class="button" data-value="10"><span>졸업</span></button></li>
                                  				<li><button type="button" class="button" data-value="5"><span>졸업예정</span></button></li>
                                  				<li><button type="button" class="button" data-value="4"><span>재학중</span></button></li>
                              				</ul>
                          				</div>
                          				<input type="hidden" name="HighSchool.Grad_Type_Code" id="HighSchool_Grad_Type_Code" value="<%=data.Grad_Type_Code%>" />
                          				<div class="validation hidden" aria-hidden="true"></div>
                      				</div>
                      				<%if (!_.isUndefined(data.Major_Aftn_Code) && data.Major_Aftn_Code != "0") {%>
                      				<div class="dropdown dropdown-edcation-highschool-category is-label">
                          				<div class="label hidden" aria-hidden="true">전공계열</div>
                          				<button type="button" class="button buttonChoose"><span>전공계열</span></button>
                          				<div class="list hidden">
                              				<ul>
                                  				<li><button type="button" class="button" data-value="1"><span>문과</span></button></li>
                                  				<li><button type="button" class="button" data-value="2"><span>이과</span></button></li>
                                  				<li><button type="button" class="button" data-value="3"><span>전문(실업)</span></button></li>
                                  				<li><button type="button" class="button" data-value="4"><span>예체능</span></button></li>
                              				</ul>
                              				<input type="hidden" name="HighSchool.Major_Aftn_Code" id="HighSchool_Major_Aftn_Code" value="<%=data.Major_Aftn_Code%>" />
                          				</div>
                          				<input type="hidden" name="HighSchool.Grad_Type_Code" id="HighSchool_Grad_Type_Code" value="<%=data.Grad_Type_Code%>" />
                      				</div>
                      				<%}%>
                      				<%} else { %>
                      				<div class="input input-education-name search is-value">
                          				<div class="value">대입자격검정고시</div>
                          				<input type="hidden" name="HighSchool.Schl_Name" />
                          				<input type="hidden" name="HighSchool.School_Code" />
                          				<input type="hidden" name="HighSchool.Area_Code" />
                      				</div>
                      				<div class="input input-education-enddate is-label">
                          				<label for="HighSchool_Grad_Year">합격년도 <span class="star">*</span></label>
                          				<input type="text" name="HighSchool.Grad_Year" id="HighSchool_Grad_Year" placeholder="2016" data-format-type="year" value="<%=data.Grad_Year%>">
                          				<div class="validation hidden" aria-hidden="true"></div>
                      				</div>
                      				<input type="hidden" name="HighSchool.Grad_Type_Code" id="HighSchool_Grad_Type_Code" value="10" />
                      				<%}%>
                      				<div class="checkbox checkbox-education-ged devGedCheck">
                          				<%if (data.Ged_Stat == 0) { %>
                          				<input type="checkbox" id="Ged_Stat" data-checked-value="1" data-non-checked-value="0">
                          				<% } else { %>
                          				<input type="checkbox" id="Ged_Stat" data-checked-value="1" data-non-checked-value="0" checked>
                          				<% } %>
                          				<label for="Ged_Stat">대입검정고시</label>
                          				<input type="hidden" name="HighSchool.Ged_Stat" value="<%=data.Ged_Stat%>">
                      				</div>
                  				</div>
                  				<button type="button" class="button buttonDeleteField"><span>삭제</span></button>
              				</div>
            			</script>
						<script type="text/template" id="tplUnivSchool">
              				<div class="container container<%=no%>" data-cid="<%=cid%>">
                  				<div class="row">
                      				<input type="hidden" name="UnivSchool.index" value="<%=cid%>">
                      				<input type="hidden" name="UnivSchool[<%=cid%>].Index_Name" value="<%=cid%>" />
                      				<div class="dropdown dropdown-education-category selected is-label">
                          				<div class="label" aria-hidden="false">학교구분</div>
                          				<button type="button" class="button buttonChoose" aria-haspopup="true">
                              <% if (data.Schl_Type_Code == '1') { %>
                              <span>대학(2,3년)</span>
                              <% } %>
                              <% if (data.Schl_Type_Code == '2') { %>
                              <span>대학교(4년)</span>
                              <% } %>
                              <% if (data.Schl_Type_Code == '3') { %>
                              <span>대학원</span>
                              <% } %>
                          </button>
                          <div class="list hidden" aria-hidden="true">
                              <ul>
                                  <li><button type="button" class="button" data-schltypecode="0"><span>고등학교</span></button></li>
                                  <li><button type="button" class="button" data-schltypecode="1"><span>대학(2,3년)</span></button></li>
                                  <li><button type="button" class="button" data-schltypecode="2"><span>대학교(4년)</span></button></li>
                                  <li><button type="button" class="button" data-schltypecode="3"><span>대학원</span></button></li>
                              </ul>
                              <input type="hidden" name="UnivSchool[<%=cid%>].Schl_Type_Code" id="UnivSchool_Schl_Type_Code_<%=cid%>" value="<%=data.Schl_Type_Code%>" />
                          </div>
                      </div>
                      <div class="input input-education-name is-label is-ellipsis <%print(data.Schl_Type_Code == '3' ? 'is-graduate-school' : '')%>" id="UnivSchoolautoComplete_<%=cid%>" data-comp_type="jkAc">
                          <label for="UnivSchool_Schl_Name_<%=cid%>">학교명 <span class="star">*</span></label>
                          <input type="text" id="UnivSchool_Schl_Name_<%=cid%>" data-type='School_Name' data-comp_type="jkAcInput" value="<%=data.Schl_Name%>" autocomplete="off" maxlength="50" />
                          <div class="validation hidden" aria-hidden="true">학교명을 입력해주세요</div>
                          <div class="autocomplete hidden" aria-hidden="true" data-comp_type="jkAcResultWrap"></div>
                          <input type="hidden" name="UnivSchool[<%=cid%>].Schl_Name" data-type="School_Name" value="<%=data.Schl_Name%>" />
                          <input type="hidden" name="UnivSchool[<%=cid%>].School_Code" data-type="School_Code" value="<%=data.School_Code%>" />
                          <input type="hidden" name="UnivSchool[<%=cid%>].Area_Code" data-type="GG_Area_Code" value="<%=data.Area_Code%>" />
                          <i class="icon icon-search" aria-hidden="true"></i>
                      </div>
                      <% if (data.Schl_Type_Code == '3') { %>
                      <div class="dropdown dropdown-edcation-degree is-label">
                          <div class="label hidden" aria-hidden="false">학위</div>
                          <button type="button" class="button buttonChoose"><span>학위</span></button>
                          <div class="list hidden">
                              <ul>
                                  <li><button type="button" class="button" data-value="2"><span>석사</span></button></li>
                                  <li><button type="button" class="button" data-value="3"><span>박사</span></button></li>
                                  <li><button type="button" class="button" data-value="1"><span>석박사</span></button></li>
                              </ul>
                              <input type="hidden" name="UnivSchool[<%=cid%>].Mstr_Dctr_Type_Code" id="UnivSchool_Mstr_Dctr_Type_Code_<%=cid%>" value="<%=data.Mstr_Dctr_Type_Code%>" />

                          </div>
                      </div>
                      <% } %>

                      <input type="hidden" name="UnivSchool[<%=cid%>].Schl_Type_Code" value="<%=data.Schl_Type_Code%>" />
                      <div class="input input-education-startdate is-label">
                          <label for="UnivSchool_Entc_YM_<%=cid%>">입학년월 <span class="star">*</span></label>
                          <input type="text" name="UnivSchool[<%=cid%>].Entc_YM" id="UnivSchool_Entc_YM_<%=cid%>" data-format-type="month" value="<%=data.Entc_YM%>" placeholder="2012.03">
                          <div class="validation hidden" aria-hidden="true"></div>
                      </div>
                      <div class="input input-education-enddate is-label">
                          <label for="UnivSchool_Grad_YM_<%=cid%>">졸업년월 <span class="star">*</span></label>
                          <input type="text" name="UnivSchool[<%=cid%>].Grad_YM" id="UnivSchool_Grad_YM_<%=cid%>" data-format-type="month" value="<%=data.Grad_YM%>" placeholder="2016.02">
                          <div class="validation hidden" aria-hidden="true"></div>
                      </div>
                      <input type="hidden" name="UnivSchool[<%=cid%>].Mstr_Dctr_Type_Code" />
                      <div class="dropdown dropdown-edcation-state is-label">
                          <div class="label hidden" aria-hidden="true">졸업상태</div>
                          <button type="button" class="button buttonChoose"><span><span>졸업상태 <span class="star">*</span></span></span></button>
                          <div class="list hidden">
                              <ul>
                                  <li><button type="button" class="button" data-value="10"><span>졸업</span></button></li>
                                  <li><button type="button" class="button" data-value="5"><span>졸업예정</span></button></li>
                                  <li><button type="button" class="button" data-value="4"><span>재학중</span></button></li>
                                  <li><button type="button" class="button" data-value="2"><span>중퇴</span></button></li>
                                  <li><button type="button" class="button" data-value="9"><span>수료</span></button></li>
                                  <li><button type="button" class="button" data-value="3"><span>휴학</span></button></li>
                              </ul>
                          </div>
                          <input type="hidden" name="UnivSchool[<%=cid%>].Grad_Type_Code" value="<%=data.Grad_Type_Code%>" id="UnivSchool_Grad_Type_Code_<%=cid%>" />
                      </div>
                      <div class="checkbox devTrnfCheck">
                          <input type="checkbox" id="univschool_trnfstat_<%=cid%>" data-checked-value="1" data-non-checked-value="0">
                          <label for="univschool_trnfstat_<%=cid%>">편입</label>
                          <input type="hidden" name="UnivSchool[<%=cid%>].Trnf_Stat" id="UnivSchool_Trnf_Stat_<%=cid%>" value="<%=data.Trnf_Stat%>">
                      </div>

                  </div>
                  <div class="row">
                      <span class="devMainMajorTemplateArea"></span>
                      <div class="input input-education-grades is-label">
                          <label for="UnivSchool_Grade_<%=cid%>">학점</label>
                          <input type="text" name="UnivSchool[<%=cid%>].Grade" id="UnivSchool_Grade_<%=cid%>" value="<%=data.Grade%>" maxlength="4" data-format-type="score">
                          <div class="validation hidden" aria-hidden="true"></div>
                      </div>

                      <div class="dropdown dropdown-education-total is-label">
                          <div class="label hidden" aria-hidden="true">총점</div>
                          <button type="button" class="button buttonChoose"><span>총점</span></button>
                          <div class="list hidden">
                              <ul>
                                  <li><button type="button" class="button" data-value="4.5"><span>4.5</span></button></li>
                                  <li><button type="button" class="button" data-value="4.3"><span>4.3</span></button></li>
                                  <li><button type="button" class="button" data-value="4.0"><span>4.0</span></button></li>
                                  <li><button type="button" class="button" data-value="100"><span>100</span></button></li>
                              </ul>
                          </div>
                          <input type="hidden" name="UnivSchool[<%=cid%>].Grade_Prft_Scr" id="UnivSchool_Grade_Prft_Scr_<%=cid%>" value="<%=data.Grade_Prft_Scr%>" />
                      </div>
                  </div>

                  <span class="devOtherUnivMajorTemplateArea"></span>

                  <div class="row devGradPaperRow" style="display:<%print(data.Grad_Paper_Name ? '' : 'none') %>;">
                      <div class="textarea is-label">
                          <label for="lbl_education_contents">졸업/논문작품</label>
                          <textarea name="UnivSchool[<%=cid%>].Grad_Paper_Name" cols="30" rows="10" id="UnivSchool_Grad_Paper_Name_<%=cid%>" data-maxlength="150"><%=data.Grad_Paper_Name%></textarea>
                      </div>
                  </div>
                  <div class="formFooter">
                      <div class="menu">
                          <button type="button" class="button buttonEducationMajor <%print(data.UnivMajorCount && data.UnivMajorCount > 1 ? 'selected' : '') %>"><span>다른전공</span></button>
                          <button type="button" class="button buttonEducationContents <%print(data.Grad_Paper_Name  ? 'selected' : '') %>"><span>졸업 논문/작품</span></button>
                      </div>
                  </div>
                  <button type="button" class="button buttonDeleteField"><span>삭제</span></button>
              </div>
            </script>
								<script type="text/template" id="tplUnivMajorItem">
              <%if (data.Major_Type_Code == 1) { %>
              <div class="input input-education-major-name search is-label" id="UnivMajorAutoComplete_1_<%=idx%>" data-comp_type="jkAc">
                  <label for="univmajor_<%=idx%>_0">전공명 <span class="star">*</span></label>
                  <input type="text" id="univmajor_<%=idx%>_0" data-type="Major_Name" data-comp_type="jkAcInput" value="<%=data.Major_Name%>" autocomplete="off" maxlength="50">
                  <div class="autocomplete hidden" aria-hidden="true" data-comp_type="jkAcResultWrap"></div>
                  <input type="hidden" name="UnivSchool[<%=school_cid%>].UnivMajor[<%=idx%>].Major_Name" data-type="Major_Name" value="<%=data.Major_Name%>">
                  <input type="hidden" name="UnivSchool[<%=school_cid%>].UnivMajor[<%=idx%>].Major_Code" data-type="Major_Code" value="<%=data.Major_Code%>">
                  <input type="hidden" name="UnivSchool[<%=school_cid%>].UnivMajor[<%=idx%>].Major_Aftn_Code" data-type="Major_Aftn_Code" value="<%=data.Major_Aftn_Code%>">
                  <i class="icon icon-search" aria-hidden="true"></i>
                  <input type="hidden" name="UnivSchool[<%=school_cid%>].UnivMajor[<%=idx%>].Major_Type_Code" value="<%=data.Major_Type_Code%>" id="UnivMajor_Major_Type_Code_<%=school_cid%>_<%=idx%>" />
                  <input type="hidden" name="UnivSchool[<%=school_cid%>].UnivMajor[<%=idx%>].Index_Name" value="<%=idx%>" />
              </div>
              <%} else {%>
              <div class="row devOtherUnivMajorRow" style="<%print(data.Major_Name ? '' : 'display:none;') %>" data-rowid="<%=school_cid%>_<%=idx%>">
                  <div class="dropdown dropdown-education-major is-label">
                      <div class="label hidden" aria-hidden="true">전공선택</div>
                      <button type="button" class="button buttonChoose"><span>전공선택</span></button>
                      <div class="list hidden">
                          <ul>
                              <li><button type="button" class="button" data-value="2"><span>부전공</span></button></li>
                              <li><button type="button" class="button" data-value="3"><span>복수전공</span></button></li>
                              <li><button type="button" class="button" data-value="4"><span>이중전공</span></button></li>
                          </ul>
                      </div>
                      <input type="hidden" name="UnivSchool[<%=school_cid%>].UnivMajor[<%=idx%>].Major_Type_Code" value="<%=data.Major_Type_Code%>" id="UnivMajor_Major_Type_Code_<%=school_cid%>_<%=idx%>" />
                  </div>
                  <div class="input input-education-major-name-multiple search is-label" id="UnivMajorAutoComplete_2_<%=idx%>" data-comp_type="jkAc">
                      <label for="univmajor_<%=idx%>_1">전공명</label>
                      <input type="text" id="univmajor_<%=idx%>_1" data-type="Major_Name" data-comp_type="jkAcInput" value="<%=data.Major_Name%>" autocomplete="off" maxlength="50">
                      <div class="autocomplete hidden" aria-hidden="true" data-comp_type="jkAcResultWrap"></div>
                      <input type="hidden" name="UnivSchool[<%=school_cid%>].UnivMajor[<%=idx%>].Major_Name" data-type="Major_Name" value="<%=data.Major_Name%>">
                      <input type="hidden" name="UnivSchool[<%=school_cid%>].UnivMajor[<%=idx%>].Major_Code" data-type="Major_Code" value="<%=data.Major_Code%>">
                      <input type="hidden" name="UnivSchool[<%=school_cid%>].UnivMajor[<%=idx%>].Major_Aftn_Code" data-type="Major_Aftn_Code" value="<%=data.Major_Aftn_Code%>">
                      <input type="hidden" name="UnivSchool[<%=school_cid%>].UnivMajor[<%=idx%>].Index_Name" value="<%=idx%>" id="UnivMajor_Index_Name_<%=school_cid%>_<%=idx%>" />
                      <i class="icon icon-search" aria-hidden="true"></i>
                  </div>
              </div>
              <% } %>
            </script>
								<div class="formWrap formWrapCareer" id="formCareer" style="">
									<div class="header">
										<h2 class="header">경력</h2>
										<div class="term" style="display: none">
											<span id="spn_Career_Term_Year">0</span> 년 <span
												id="spn_Career_Term_Month">0</span> 개월
										</div>
										<div class="options"></div>
									</div>

									<div class="form formCareer">
										<div id="career_containers">
											<div class="container container1">
												<div class="row">
													<input type="hidden" name="Career.index" value="c14" /> <input
														type="hidden" name="Career[c14].Index_Name" value="c14" />
													<div class="input input-career-name is-label"
														data-comp_type="jkAc">
														<label for="Career_C_Name_c14">회사명 <span
															class="star">*</span>
														</label> <input type="text" id="Career_C_Name_c14"
															data-comp_type="jkAcInput" data-type="Co_Name" value=""
															maxlength="50" autocomplete="off" />
														<div class="validation hidden" aria-hidden="true"></div>
														<div class="autocomplete hidden"
															data-comp_type="jkAcResultWrap"></div>
													</div>
													<div class="input input-career-part is-label">
														<label for="Career_C_Part_c14">부서명</label>
														<div class="validation hidden" aria-hidden="true"></div>
														<input type="text" name="Career[c14].C_Part"
															id="Career_C_Part_c14" value="" maxlength="25" />
													</div>
													<div class="input input-career-joindate is-label">
														<label for="Career_CSYM_c14">입사년월 <span
															class="star">*</span>
														</label> <input type="text" name="Career[c14].CSYM"
															id="Career_CSYM_c14" value="" data-format-type="month"
															placeholder="2016.03" />
														<div class="validation hidden" aria-hidden="true"></div>
													</div>
													<div class="input input-career-leavedate is-label">
														<label for="Career_CEYM_c14">퇴사년월 <span
															class="star">*</span>
														</label> <input type="text" name="Career[c14].CEYM"
															id="Career_CEYM_c14" value="" data-format-type="month"
															class="devCareerCEYM" placeholder="2016.06" />
														<div class="validation hidden" aria-hidden="true"></div>
													</div>
												</div>
												<div class="row">
													<div class="input input-career-duty is-label is-value">
														<label>포지션</label> <input type="text"
															name="Career[c14].M_MainField"
															id="Career_M_MainPay_User_c14" value=""
															data-format-type="price" maxlength="7" />
													</div>
													<div class="input input-career-salary is-label salaryInput">
														<label for="Career_M_MainPay_User_c14">연봉</label> <input
															type="text" name="Career[c14].M_MainPay_User"
															id="Career_M_MainPay_User_c14" value=""
															data-format-type="price" maxlength="7" />
														<div class="unit hidden" aria-hidden="true">만원</div>
													</div>
												</div>
												<div class="row workInputRow">
													<div class="textarea is-label workInput">
														<label for="lbl_o_experience_contents">담당업무</label>
														<textarea name="Career[c14].Prfm_Prt" cols="30" rows="2"
															id="Career_Prfm_Prt_c14" class="textarea-career"
															placeholder="담당하신 업무와 성과에 대해 간단명료하게 적어주세요."
															style="height: 40px"></textarea>
													</div>
												</div>
												<button type="button" class="button buttonDeleteField">
													<span>경력 삭제</span>
												</button>
											</div>
										</div>
										<button type="button" class="button buttonAddField">
											<span>추가</span>
										</button>
									</div>
								</div>
								<script type="text/template" id="tplCareerItem">
                      <div class="container container<%=no%>">
                          <div class="row">
                              <div class="input input-career-name is-label <%if (data.NHIS_LINKED_STAT == 1){ %>is-value disabled<% } %>" data-comp_type="jkAc">
                                  <label for="Career_C_Name_<%=cid%>">회사명 <span class="star">*</span></label>
                                  <input type="text" id="Career_C_Name_<%=cid%>" data-comp_type="jkAcInput" data-type="Co_Name" value="<%-data.C_Name%>" maxlength="50" autocomplete="off" <%if (data.NHIS_LINKED_STAT == 1){ %>tabindex=-1<% } %>>
                                  <div class="validation hidden" aria-hidden="true"></div>
                                  <div class="autocomplete hidden" data-comp_type="jkAcResultWrap"></div>
                                  <%if (data.NHIS_LINKED_STAT == 1){ %>
                                  <i class="icon icon-health" aria-hidden="true"></i>
                                  <% } %>
                                  <input type="hidden" name="Career[<%=cid%>].C_Name" data-type="Co_Name" value="<%-data.C_Name%>" />
                                  <input type="hidden" name="Career[<%=cid%>].Co_Code" data-type="Co_Code" value="<%=data.Co_Code%>" />
                                  <input type="hidden" name="Career[<%=cid%>].CName_Code" data-type="CName_Code" value="<%=data.CName_Code%>" />
                                  <input type="hidden" name="Career[<%=cid%>].M_MainCate" value="<%=data.M_MainCate%>" />
                                  <input type="hidden" name="Career[<%=cid%>].Retire_Rsn_Code" value="<%=data.Retire_Rsn_Code%>">
                                  <input type="hidden" name="Career[<%=cid%>].Retire_Rsn" value="<%=data.Retire_Rsn%>">
                                  <input type="hidden" name="Career[<%=cid%>].Biz_No"  data-type="BizNo" value="<%-data.Biz_No%>">
                                  <input type="hidden" name="Career[<%=cid%>].NHIS_LINKED_STAT" value="<%=data.NHIS_LINKED_STAT%>">
                              </div>
                              <div class="input input-career-part is-label">
                                  <label for="Career_C_Part_<%=cid%>">부서명</label>
                                  <div class="validation hidden" aria-hidden="true"></div>
                                  <input type="text" name="Career[<%=cid%>].C_Part" id="Career_C_Part_<%=cid%>" value="<%-data.C_Part%>" maxlength="25">
                              </div>
                              <div class=" input input-career-joindate is-label <%if (data.NHIS_LINKED_STAT == 1){ %>focus disabled<% } %>">
                                  <label for="Career_CSYM_<%=cid%>">입사년월 <span class="star">*</span></label>
                                  <input type="text" name="Career[<%=cid%>].CSYM" id="Career_CSYM_<%=cid%>" value="<%=data.CSYM%>" data-format-type="month" placeholder="2016.03" <%if (data.NHIS_LINKED_STAT == 1){ %>tabindex=-1<% } %>>
                                  <div class="validation hidden" aria-hidden="true"></div>
                              </div>
                              <div class="input input-career-leavedate is-label <%if (data.NHIS_LINKED_STAT == 1){ %>focus disabled<% } %>">
                                  <label for="Career_CEYM_<%=cid%>">퇴사년월 <span class="star">*</span></label>
                                  <input type="text" name="Career[<%=cid%>].CEYM" id="Career_CEYM_<%=cid%>" value="<%=data.CEYM%>" data-format-type="month" class="devCareerCEYM" placeholder="2016.06" <%if (data.NHIS_LINKED_STAT == 1){ %>tabindex=-1<% } %>>
                                  <div class="validation hidden" aria-hidden="true"></div>
                              </div>
                              <div class="is-inoffice">
                                  <div class="checkbox checkbox-inoffice <%if (data.NHIS_LINKED_STAT == 1){ %>disabled<% } %>">
                                      <input type="checkbox" id="Career_RetireSt_<%=cid%>" data-checked-value="3" data-non-checked-value="1" class="devRetireStCheck">
                                  </div>
                              </div>
                          </div>
                          <div class="row">
                            <div class="input input-career-duty is-label is-value">
                              <label>포지션</label>
                              <input
                                type="text"
                                name="Career[c14].M_MainField"
                                id="Career_M_MainPay_User_c14"
                                value=""
                                data-format-type="price"
                                maxlength="7"
                              />
                            </div>
                              <div class="input input-career-salary is-label salaryInput">
                                  <label for="Career_M_MainPay_User_<%=cid%>">연봉</label>
                                  <input type="text" name="Career[<%=cid%>].M_MainPay_User" id="Career_M_MainPay_User_<%=cid%>" value="<%=data.M_MainPay_User%>" data-format-type="price" maxlength="7">
                                  <div class="unit hidden" aria-hidden="true">만원</div>
                              </div>
                          </div>
                          <div class="row workInputRow">
                              <div class="textarea is-label workInput">
                                  <label for="lbl_o_experience_contents">담당업무</label>
                                  <textarea name="Career[<%=cid%>].Prfm_Prt" cols="30" rows="2" id="Career_Prfm_Prt_<%=cid%>" class="textarea-career" placeholder="담당하신 업무와 성과에 대해 간단명료하게 적어주세요."><%=data.Prfm_Prt%></textarea>
                              </div>
                          </div>
                          <button type="button" class="button buttonDeleteField"><span>경력 삭제</span></button>
                      </div>
            </script>
								<script type="text/template" id="tplCompanyAutoComplete"></script>
								<script type="text/template" id="tplCompanyNotFound"></script>
								<script type="text/template" id="tplSelectedKeywordNew"></script>
								<script type="text/template" id="tplKeywordAutocomplete"></script>
								<script type="text/template" id="tplFrgnWorkItem"></script>
								<script type="text/template" id="tplSelectedJobType"></script>
								<script type="text/javascript" src="./career1.js"></script>
								<script type="text/javascript" src="./career2.js"></script>
								<script type="text/javascript" src="./career3.js"></script>
								<div class="formWrap formWrapCertificate" id="formLicense"
									style="">
									<div class="header devNaverElement">
										<h2 class="header">자격증</h2>
									</div>
									<div class="form formCertificate">
										<div id="license_containers">
											<div class="container container1" data-cid="c23">
												<input type="hidden" name="License.index" value="c23" /> <input
													type="hidden" name="License[c23].Index_Name" value="c23" />
												<input type="hidden"
													name="License[c23].Naver_Lcns_Linked_Stat"
													data-type="Dp3_NaverStat" value="" />
												<div class="row">
													<div class="input input-certificate-name is-label"
														data-comp_type="jkAc">
														<input type="hidden" name="License[c23].Lc_Name"
															id="License_Lc_Name" data-type="Lc_Name" value="" /> <input
															type="hidden" name="License[c23].Lc_Code"
															data-type="Lc_Code" value="" /> <label
															for="License_Search_c23">자격증 명 <span class="star">*</span>
														</label> <input type="text" id="License_Search_c23"
															data-type="Lc_Name" value="" data-comp_type="jkAcInput"
															maxlength="50" />
														<div class="autocomplete hidden" aria-hidden="true"
															data-comp_type="jkAcResultWrap"></div>
														<div class="validation hidden" aria-hidden="true"></div>
														<i class="icon icon-search" aria-hidden="true"></i>
													</div>
													<div class="input input-certificate-agency is-label">
														<label for="License_Lc_Pub_c23">발행처</label> <input
															type="text" name="License[c23].Lc_Pub"
															id="License_Lc_Pub_c23" value="" data-type="Lc_Pub"
															maxlength="50" />
														<div class="validation hidden" aria-hidden="true"></div>
													</div>
													<div class="input input-certificate-term is-label">
														<label for="License_Lc_YYMM_c23">취득월</label> <input
															type="text" name="License[c23].Lc_YYMM"
															id="License_Lc_YYMM_c23" value=""
															data-format-type="month" placeholder="2017.10" />
														<div class="validation hidden" aria-hidden="true"></div>
													</div>
												</div>
												<button type="button"
													class="button buttonDeleteField dev-btn-del-license">
													<span>자격증 삭제</span>
												</button>
											</div>
										</div>

										<button type="button" class="button buttonAddField">
											<span>자격증 추가</span>
										</button>
									</div>
								</div>
								<script type="text/template" id="tplLicenseItem">
              <div class="container container<%=no%>" data-cid="<%=cid%>">
                  <input type="hidden" name="License.index" value="<%=cid%>">
                  <input type="hidden" name="License[<%=cid%>].Index_Name" value="<%=cid%>">
                  <input type="hidden" name="License[<%=cid%>].Naver_Lcns_Linked_Stat" data-type="Dp3_NaverStat" value="<%=data.Naver_Lcns_Linked_Stat%>" />
                  <div class="row">
                      <div class="input input-certificate-name is-label" data-comp_type="jkAc">
                          <input type="hidden" name="License[<%=cid%>].Lc_Name" id="License_Lc_Name" data-type="Lc_Name" value="<%=data.Lc_Name%>" />
                          <input type="hidden" name="License[<%=cid%>].Lc_Code" data-type="Lc_Code" value="<%=data.Lc_Code%>" />
                          <label for="License_Search_<%=cid%>">자격증 명 <span class="star">*</span></label>

                          <input type="text" id="License_Search_<%=cid%>" data-type="Lc_Name" value="<%=data.Lc_Name%>" data-comp_type="jkAcInput" maxlength="50" />
                          <div class="autocomplete hidden" aria-hidden="true" data-comp_type="jkAcResultWrap"></div>
                          <div class="validation hidden" aria-hidden="true"></div>
                          <i class="icon icon-search" aria-hidden="true"></i>
                      </div>
                      <div class="input input-certificate-agency is-label">
                          <label for="License_Lc_Pub_<%=cid%>">발행처</label>
                          <input type="text" name="License[<%=cid%>].Lc_Pub" id="License_Lc_Pub_<%=cid%>" value="<%=data.Lc_Pub%>" data-type="Lc_Pub" maxlength="50">
                          <div class="validation hidden" aria-hidden="true"></div>
                      </div>
                      <div class="input input-certificate-term is-label">
                          <label for="License_Lc_YYMM_<%=cid%>">취득월</label>
                          <input type="text" name="License[<%=cid%>].Lc_YYMM" id="License_Lc_YYMM_<%=cid%>" value="<%=data.Lc_YYMM%>" data-format-type="month" placeholder="2017.10">
                          <div class="validation hidden" aria-hidden="true"></div>
                      </div>

                  </div>
                  <button type="button" class="button buttonDeleteField dev-btn-del-license"><span>자격증 삭제</span></button>
              </div>
            </script>
								<script type="text/javascript" src="./certification.js"> </script>
								<div class="formWrap formWrapLanguage" id="formLanguage"
									style="">
									<h2 class="header">어학</h2>
									<div class="form formLanguage">
										<div id="language_containers">
											<div class="container container1">
												<input type="hidden" name="Language.Index" value="c508" />
												<input type="hidden" name="Language[c508].Index_Name"
													value="c508" />

												<div class="row">
													<div class="dropdown dropdown-category is-label">
														<div class="label hidden" aria-hidden="true">
															<span><span>구분 <span class="star">*</span>
															</span></span>
														</div>
														<button type="button" class="button buttonChoose">
															<span><span>구분 <span class="star">*</span>
															</span></span>
														</button>
														<div class="list hidden">
															<ul>
																<li>
																	<button type="button" class="button" data-value="1">
																		<span>회화능력</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="2">
																		<span>공인시험</span>
																	</button>
																</li>
															</ul>
														</div>
														<input type="hidden" id="Language_Eval_Category_c508"
															value="" name="Language[c508].Eval_Category" />
													</div>

													<div
														class="dropdown dropdown-language-name is-label devLanguageDropdown">
														<div class="label hidden" aria-hidden="true">
															<span><span>외국어명 <span class="star">*</span>
															</span></span>
														</div>
														<button type="button" class="button buttonChoose">
															<span><span>외국어명 <span class="star">*</span>
															</span></span>
														</button>
														<div class="validation hidden" aria-hidden="true"></div>
														<div class="list hidden is-scroll">
															<ul>
																<li>
																	<button type="button" class="button" data-value="16">
																		<span>영어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="20">
																		<span>일본어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="21">
																		<span>중국어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="4">
																		<span>독일어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="27">
																		<span>프랑스어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="13">
																		<span>스페인어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="5">
																		<span>러시아어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="19">
																		<span>이탈리아어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="15">
																		<span>아랍어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="23">
																		<span>태국어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="7">
																		<span>마인어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="1">
																		<span>그리스어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="25">
																		<span>포르투갈어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="10">
																		<span>베트남어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="2">
																		<span>네덜란드어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="30">
																		<span>힌디어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="3">
																		<span>노르웨이어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="17">
																		<span>유고어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="29">
																		<span>히브리어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="18">
																		<span>이란(페르시아어)</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="24">
																		<span>터키어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="22">
																		<span>체코어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="6">
																		<span>루마니아어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="8">
																		<span>몽골어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="12">
																		<span>스웨덴어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="28">
																		<span>헝가리어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="26">
																		<span>폴란드어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="9">
																		<span>미얀마어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="14">
																		<span>슬로바키아어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="11">
																		<span>세르비아어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="32">
																		<span>한국어</span>
																	</button>
																</li>
																<li>
																	<button type="button" class="button" data-value="31">
																		<span>직접입력</span>
																	</button>
																</li>
															</ul>
														</div>

														<input type="hidden" name="Language[c508].Lang1_Name"
															value="" id="Language_Lang1_Name_c508" />
													</div>

													<div
														class="input input-language-name is-label devLanguageInput"
														style="display: none">
														<label for="Language_Lang_Etc_c508">외국어명 <span
															class="star">*</span>
														</label> <input type="text" name="Language[c508].Lang_Etc"
															id="Language_Lang_Etc_c508" maxlength="25" value="" /> <input
															type="hidden" name="Language[c508].Lang1_Name" value=""
															id="Language_Lang1_Name_c508" />
													</div>

													<span class="devExamArea" style="display: none">
														<div
															class="dropdown dropdown-language-category is-label devExamDropdown">
															<div class="label hidden" aria-hidden="true">
																<span><span>공인시험 <span class="star">*</span>
																</span></span>
															</div>
															<button type="button" class="button buttonChoose">
																<span><span>공인시험 <span class="star">*</span>
																</span></span>
															</button>
															<div class="list hidden is-scroll">
																<ul></ul>
															</div>
															<input type="hidden" name="Language[c508].Test1_Name"
																id="Language_Test1_Name_c508" value="" />
														</div>

														<div class="input input-language is-label devExamInput">
															<label for="Language_Test_Etc_c508">공인시험 <span
																class="star">*</span>
															</label> <input type="text" name="Language[c508].Test_Etc"
																id="Language_Test_Etc_c508" value="" maxlength="50" />
														</div> <!--점수/급수 input-->
														<div class="input input-grade is-label devExamGradeInput">
															<label for="Language_Test1_Point_I_c508">급수/점수 <span
																class="star">*</span>
															</label> <input type="text" name="Language[c508].Test1_Point"
																id="Language_Test1_Point_I_c508" maxlength="3" value=""
																data-format-type="score" />
														</div> <!-- 점수/급수 dropdown-->
														<div
															class="dropdown dropdown-language-grade is-label devExamGradeDropdown">
															<div class="label hidden" aria-hidden="true">
																<span><span>급수 <span class="star">*</span>
																</span></span>
															</div>
															<button type="button" class="button buttonChoose">
																<span><span>급수 <span class="star">*</span>
																</span></span>
															</button>
															<div class="list hidden">
																<ul></ul>
															</div>
															<input type="hidden" name="Language[c508].Test1_Point"
																id="Language_Test1_Point_D_c508" value="" />
														</div> <!--점수/급수 카테고리 dropdown-->
														<div
															class="dropdown dropdown-grade-category devExamGradeCategoryDropdown"
															style="display: none">
															<div class="label hidden" aria-hidden="true">
																<span><span>선택 <span class="star">*</span>
																</span></span>
															</div>
															<button type="button" class="button buttonChoose">
																<span><span>선택 <span class="star">*</span>
																</span></span>
															</button>
															<div class="list hidden">
																<ul>
																	<li>
																		<button type="button" class="button" data-value="1">
																			<span>점</span>
																		</button>
																	</li>
																	<li>
																		<button type="button" class="button" data-value="2">
																			<span>급</span>
																		</button>
																	</li>
																	<li>
																		<button type="button" class="button" data-value="3">
																			<span>취득</span>
																		</button>
																	</li>
																</ul>
															</div>
															<input type="hidden"
																name="Language[c508].Point_Grade_Type_Code"
																id="Language_Point_Grade_Type_Code_D_c508" value="" />
														</div> <!--취득년월-->
														<div class="input input-passdate is-label">
															<label for="Language_Test_YYMM_c508">취득년월</label> <input
																type="text" name="Language[c508].Test_YYMM"
																id="Language_Test_YYMM_c508" placeholder="2016.03"
																data-format-type="month" value="" />
															<div class="validation hidden" aria-hidden="true"></div>
														</div>
													</span> <span class="devConversationArea">
														<div class="dropdown dropdown-language-grade is-label">
															<div class="label hidden" aria-hidden="true">
																<span><span>회화능력 <span class="star">*</span>
																</span></span>
															</div>
															<button type="button" class="button buttonChoose">
																<span><span>회화능력 <span class="star">*</span>
																</span></span>
															</button>
															<div class="list hidden">
																<ul>
																	<li>
																		<button type="button" class="button" data-value="1">
																			<span>일상회화 가능</span>
																		</button>
																	</li>
																	<li>
																		<button type="button" class="button" data-value="2">
																			<span>비즈니스 회화가능</span>
																		</button>
																	</li>
																	<li>
																		<button type="button" class="button" data-value="3">
																			<span>원어민 수준</span>
																		</button>
																	</li>
																</ul>
															</div>
															<input type="hidden" name="Language[c508].Lang1_Stat"
																id="Language_Lang1_Stat_c508" value="" />
														</div>
													</span>
												</div>
												<button type="button" class="button buttonDeleteField">
													<span>삭제</span>
												</button>
											</div>
										</div>
										<button type="button" class="button buttonAddField">
											<span>어학 추가</span>
										</button>
									</div>
								</div>

								<script type="text/template" id="tplLanguageItem">
              <div class="container container<%=no%>">
                  <input type="hidden" name="Language.Index" value="<%=cid%>">
                  <input type="hidden" name="Language[<%=cid%>].Index_Name" value="<%=cid%>">

                  <div class="row">
                      <div class="dropdown dropdown-category is-label">
                          <div class="label hidden" aria-hidden="true"><span><span>구분 <span class="star">*</span></span></span></div>
                          <button type="button" class="button buttonChoose"><span><span>구분 <span class="star">*</span></span></span></button>
                          <div class="list hidden">
                              <ul>
                                  <li><button type="button" class="button" data-value="1"><span>회화능력</span></button></li>
                                  <li><button type="button" class="button" data-value="2"><span>공인시험</span></button></li>
                              </ul>
                          </div>
                          <input type="hidden" id="Language_Eval_Category_<%=cid%>" value="<%=data.Eval_Category%>" name="Language[<%=cid%>].Eval_Category" />
                      </div>

                      <div class="dropdown dropdown-language-name is-label devLanguageDropdown">
                          <div class="label hidden" aria-hidden="true"><span><span>외국어명 <span class="star">*</span></span></span></div>
                          <button type="button" class="button buttonChoose"><span><span>외국어명 <span class="star">*</span></span></span></button>
                          <div class="validation hidden" aria-hidden="true"></div>
                          <div class="list hidden">
                              <ul>
                                      <li><button type="button" class="button" data-value="16"><span>영어</span></button></li>
                                      <li><button type="button" class="button" data-value="20"><span>일본어</span></button></li>
                                      <li><button type="button" class="button" data-value="21"><span>중국어</span></button></li>
                                      <li><button type="button" class="button" data-value="4"><span>독일어</span></button></li>
                                      <li><button type="button" class="button" data-value="27"><span>프랑스어</span></button></li>
                                      <li><button type="button" class="button" data-value="13"><span>스페인어</span></button></li>
                                      <li><button type="button" class="button" data-value="5"><span>러시아어</span></button></li>
                                      <li><button type="button" class="button" data-value="19"><span>이탈리아어</span></button></li>
                                      <li><button type="button" class="button" data-value="15"><span>아랍어</span></button></li>
                                      <li><button type="button" class="button" data-value="23"><span>태국어</span></button></li>
                                      <li><button type="button" class="button" data-value="7"><span>마인어</span></button></li>
                                      <li><button type="button" class="button" data-value="1"><span>그리스어</span></button></li>
                                      <li><button type="button" class="button" data-value="25"><span>포르투갈어</span></button></li>
                                      <li><button type="button" class="button" data-value="10"><span>베트남어</span></button></li>
                                      <li><button type="button" class="button" data-value="2"><span>네덜란드어</span></button></li>
                                      <li><button type="button" class="button" data-value="30"><span>힌디어</span></button></li>
                                      <li><button type="button" class="button" data-value="3"><span>노르웨이어</span></button></li>
                                      <li><button type="button" class="button" data-value="17"><span>유고어</span></button></li>
                                      <li><button type="button" class="button" data-value="29"><span>히브리어</span></button></li>
                                      <li><button type="button" class="button" data-value="18"><span>이란(페르시아어)</span></button></li>
                                      <li><button type="button" class="button" data-value="24"><span>터키어</span></button></li>
                                      <li><button type="button" class="button" data-value="22"><span>체코어</span></button></li>
                                      <li><button type="button" class="button" data-value="6"><span>루마니아어</span></button></li>
                                      <li><button type="button" class="button" data-value="8"><span>몽골어</span></button></li>
                                      <li><button type="button" class="button" data-value="12"><span>스웨덴어</span></button></li>
                                      <li><button type="button" class="button" data-value="28"><span>헝가리어</span></button></li>
                                      <li><button type="button" class="button" data-value="26"><span>폴란드어</span></button></li>
                                      <li><button type="button" class="button" data-value="9"><span>미얀마어</span></button></li>
                                      <li><button type="button" class="button" data-value="14"><span>슬로바키아어</span></button></li>
                                      <li><button type="button" class="button" data-value="11"><span>세르비아어</span></button></li>
                                      <li><button type="button" class="button" data-value="32"><span>한국어</span></button></li>
                                      <li><button type="button" class="button" data-value="31"><span>직접입력</span></button></li>
                              </ul>
                          </div>
                          <input type="hidden" name="Language[<%=cid%>].Lang1_Name" value="<%=data.Lang1_Name%>" id="Language_Lang1_Name_<%=cid%>">
                      </div>
                      <div class="input input-language-name is-label devLanguageInput" style="display:none;">
                          <label for="Language_Lang_Etc_<%=cid%>">외국어명 <span class="star">*</span></label>
                          <input type="text" name="Language[<%=cid%>].Lang_Etc" id="Language_Lang_Etc_<%=cid%>" maxlength="25" value="<%-data.Lang_Etc%>" />
                          <input type="hidden" name="Language[<%=cid%>].Lang1_Name" value="<%=data.Lang1_Name%>" id="Language_Lang1_Name_<%=cid%>">
                      </div>
                      <span class="devExamArea" style="display:none;">
                          <div class="dropdown dropdown-language-category is-label devExamDropdown">
                              <div class="label hidden" aria-hidden="true"><span><span>공인시험 <span class="star">*</span></span></span></div>
                              <button type="button" class="button buttonChoose"><span><span>공인시험 <span class="star">*</span></span></span></button>
                              <div class="list hidden is-scroll">
                                  <ul></ul>
                              </div>
                              <input type="hidden" name="Language[<%=cid%>].Test1_Name" id="Language_Test1_Name_<%=cid%>" value="<%=data.Test1_Name%>">
                          </div>
                          <div class="input input-language is-label devExamInput">
                              <label for="Language_Test_Etc_<%=cid%>">공인시험 <span class="star">*</span></label>
                              <input type="text" name="Language[<%=cid%>].Test_Etc" id="Language_Test_Etc_<%=cid%>" value="<%-data.Test_Etc%>" maxlength="50" />
                          </div>

                          <!--점수/급수 input-->
                          <div class="input input-grade is-label devExamGradeInput">
                              <label for="Language_Test1_Point_I_<%=cid%>">급수/점수 <span class="star">*</span></label>
                              <input type="text" name="Language[<%=cid%>].Test1_Point" id="Language_Test1_Point_I_<%=cid%>" maxlength="3" value="<%-data.Test1_Point%>" data-format-type="score" />
                          </div>
                          <!-- 점수/급수 dropdown-->
                          <div class="dropdown dropdown-language-grade is-label devExamGradeDropdown">
                              <div class="label hidden" aria-hidden="true"><span><span>급수 <span class="star">*</span></span></span></div>
                              <button type="button" class="button buttonChoose"><span><span>급수 <span class="star">*</span></span></span></button>
                              <div class="list hidden">
                                  <ul></ul>
                              </div>
                              <input type="hidden" name="Language[<%=cid%>].Test1_Point" id="Language_Test1_Point_D_<%=cid%>" value="<%=data.Test1_Point%>" />
                          </div>
                          <!--점수/급수 카테고리 dropdown-->
                          <div class="dropdown dropdown-grade-category devExamGradeCategoryDropdown" style="display:none;">
                              <div class="label hidden" aria-hidden="true"><span><span>선택 <span class="star">*</span></span></span></div>
                              <button type="button" class="button buttonChoose"><span><span>선택 <span class="star">*</span></span></span></button>
                              <div class="list hidden">
                                  <ul>
                                      <li><button type="button" class="button" data-value="1"><span>점</span></button></li>
                                      <li><button type="button" class="button" data-value="2"><span>급</span></button></li>
                                      <li><button type="button" class="button" data-value="3"><span>취득</span></button></li>
                                  </ul>
                              </div>
                              <input type="hidden" name="Language[<%=cid%>].Point_Grade_Type_Code" id="Language_Point_Grade_Type_Code_D_<%=cid%>" value="<%=data.Point_Grade_Type_Code%>" />
                          </div>
                          <!--취득년월-->
                          <div class="input input-passdate is-label">
                              <label for="Language_Test_YYMM_<%=cid%>">취득년월</label>
                              <input type="text" name="Language[<%=cid%>].Test_YYMM" id="Language_Test_YYMM_<%=cid%>" placeholder="2016.03" data-format-type="month" value="<%=data.Test_YYMM%>">
                              <div class="validation hidden" aria-hidden="true"></div>
                          </div>
                      </span>

                      <span class="devConversationArea">
                          <div class="dropdown dropdown-language-grade is-label">
                              <div class="label hidden" aria-hidden="true"><span><span>회화능력 <span class="star">*</span></span></span></div>
                              <button type="button" class="button buttonChoose"><span><span>회화능력 <span class="star">*</span></span></span></button>
                              <div class="list hidden">
                                  <ul>
                                      <li><button type="button" class="button" data-value="1"><span>일상회화 가능</span></button></li>
                                      <li><button type="button" class="button" data-value="2"><span>비즈니스 회화가능</span></button></li>
                                      <li><button type="button" class="button" data-value="3"><span>원어민 수준</span></button></li>
                                  </ul>
                              </div>
                              <input type="hidden" name="Language[<%=cid%>].Lang1_Stat" id="Language_Lang1_Stat_<%=cid%>" value="<%=data.Lang1_Stat%>" />
                          </div>
                      </span>
                  </div>
                  <button type="button" class="button buttonDeleteField"><span>삭제</span></button>
              </div>
            </script>
								<script type="text/javascript" src="./language.js">
	            </script>
								<div class="formWrap formWrapIntroduction" id="formIntroduction"
									style="">
									<div class="header">
										<h2 class="header">자기소개서</h2>
									</div>
									<div class="form formIntroduction">
										<div id="introduceContainers"></div>
										<button type="button" class="button buttonAddField">
											<span>추가</span>
										</button>
									</div>
								</div>
								<script type="text/template" id="tplIntroduceItem">
              <div class="row">
                  <div class="container">
                      <input type="hidden" name="ResumeProfile.Index" value="<%=cid%>">

                      <div class="input">
                          <label for="ResumeProfile_Header_<%=cid%>" class="skip">제목</label>
                          <input type="text" name="ResumeProfile[<%=cid%>].Header" id="ResumeProfile_Header_<%=cid%>" placeholder="항목 제목을 입력하세요." value='<%=Header%>' maxlength="50">
                          <div class="validation validation-title hidden">단락 제목을 입력해주세요</div>
                          <div class="autocomplete hidden" aria-hidden="true">
                              <div class="list">
                                  <ul>
                                      <li><button type="button" class="button"><span><em>한양</em>대학교 (서울)</span></button></li>
                                  </ul>
                              </div>
                          </div>
                      </div>
                      <label for="" class="skip">내용</label>
                      <div class="textarea textarea-introduction is-value">
                          <div class="backdrop">
                              <div class="highlights"></div>
                          </div>
                          <div class="clickable"></div>
                          <textarea name="ResumeProfile[<%=cid%>].Contents" id="ResumeProfile_Contents_<%=cid%>" cols="30" rows="10" placeholder="해당내용을 입력하세요." class="spellcheck"><%=Contents%></textarea>
                          <div class="validation validation-content hidden">자기소개서 내용을 입력해주세요</div>
                      </div>
                      <div class="counting"><em>0</em>자</div>
                      <button type="button" class="button buttonDelete">단락삭제</button>
                  </div>
              </div>
            </script>
								<script type="text/javascript" src="./introduction.js" />
								<input data-val="true" data-val-required="IsEditPage 필드가 필요합니다."
									id="IsEditPage" name="IsEditPage" type="hidden" value="False" />
								<input type="hidden" name="IsCompleteSave"
									id="hdnIsCompleteSave" /> <input data-val="true"
									data-val-number="LastEditDateTicks 필드는 숫자여야 합니다."
									data-val-required="LastEditDateTicks 필드가 필요합니다."
									id="LastEditDateTicks" name="LastEditDateTicks" type="hidden"
									value="638528527564300000" />
					</form>
					<input type="file" id="uploadPortfolioFile" name="File_Co_Name"
						style="display: none" />
				</div>
				<div id="healthLayer" style="display: none"></div>

				<script src="./resume_register_origin_files/ResumeReg"></script>

				<link rel="stylesheet" type="text/css"
					href="./resume_register_origin_files/popup.keep_login_session.css" />
				<div class="popup popup-keep-login-session hidden"
					aria-hidden="false">
					<div class="popup-box">
						<div class="popup-header">
							<h1 class="header">로그인 연장 안내</h1>
						</div>
						<div class="popup-body">
							<div class="description">
								회원님의 개인정보보호를 위해<br /> 잠시 후 자동으로 로그아웃 처리될 예정입니다.
							</div>
							<div class="countdown">
								<i class="icon icon-hourglass" aria-hidden="true"></i>자동 로그아웃까지
								<span class="time minutes">00</span>분 <span class="time seconds">00</span>초
								남았습니다.
							</div>
							<div class="is-keep-login-session">로그인 시간을 연장하시겠습니까?</div>
							<button type="button" class="button button-keep-login-session">
								로그인 연장하기</button>
						</div>
						<button type="button" class="button button-close-popup">닫기</button>
					</div>
				</div>
				<div class="popup popup-relogin popup-relogin-iframe hidden"
					aria-hidden="false">
					<div class="popup-box is-iframe">
						<iframe id="ifrmRelogin"
							src="./resume_register_origin_files/saved_resource.html"
							frameborder="0" class="iframe-login" scrolling="no" title="로그인"></iframe>
						<button type="button" class="button button-close-popup">닫기</button>
					</div>
				</div>
				<script src="./resume_register_origin_files/countdown.js"></script>
				<script src="./resume_register_origin_files/LoginWatcher.js"></script>
				<script type="text/javascript" src="./page_leave.js"></script>
				<script type="text/template" id="tplKeywordCheckBox">
      <li>
          <input type='checkbox' value='<%=Key_No%>' data-part_code="<%=Part_No%>" id='<%=Form%>_M_MainJob_<%=Key_No%>' data-text="<%=Keyword%>" data-lower-text="<%=KeywordLowerCase%>" />
          <label for='<%=Form%>_M_MainJob_<%=Key_No%>'><%=Keyword%></label>
      </li>
    </script>
				<script type="text/template" id="tplCommonDirectInput">
      <button type="button" class="button buttonDirect" data-json='<%=itemJson%>'><span><em><%=searchText%></em> 직접입력</span></button>
    </script>
				<script type="text/template" id="tplCommonNotFound">
      <div class="list">
          <p class="text notFound"><em>'<%=searchText%>'</em>을(를) 찾을 수 없습니다.</p>
      </div>
    </script>
				<script type="text/template" id="tplCommonSearch">
      <li>
          <button type='button' class='button' data-json='<%=itemJson%>'>
              <span><%=Highlight_Name%></span>
          </button>
      </li>
    </script>
				<script type="text/template" id="tplDepthCommonItem">
      <li><button type="button" class="button" data-value="<%=code%>" data-ctgr_value="<%=ctgr%>" data-name="<%=text%>"><span><%=text%></span></button></li>
    </script>
			<!-- golgolz end -->
			</section>
			<jsp:include page="../assets/layout/user/footer.jsp" />  
		</main>
	</div>
</body>
</html>