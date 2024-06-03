<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
    <div class="formWrap formWrapCertificate" id="formLicense" style="">
  <div class="header devNaverElement">
    <h2 class="header">자격증</h2>
  </div>
  <div class="form formCertificate">
    <div id="license_containers">
      <div class="container container1" data-cid="c23">
        <input type="hidden" name="License.index" value="c23" />
        <input type="hidden" name="License[c23].Index_Name" value="c23" />
        <input
          type="hidden"
          name="License[c23].Naver_Lcns_Linked_Stat"
          data-type="Dp3_NaverStat"
          value=""
        />
        <div class="row">
          <div
            class="input input-certificate-name is-label"
            data-comp_type="jkAc"
          >
            <input
              type="hidden"
              name="License[c23].Lc_Name"
              id="License_Lc_Name"
              data-type="Lc_Name"
              value=""
            />
            <input
              type="hidden"
              name="License[c23].Lc_Code"
              data-type="Lc_Code"
              value=""
            />
            <label for="License_Search_c23"
              >자격증 명 <span class="star">*</span></label
            >

            <input
              type="text"
              id="License_Search_c23"
              data-type="Lc_Name"
              value=""
              data-comp_type="jkAcInput"
              maxlength="50"
            />
            <div
              class="autocomplete hidden"
              aria-hidden="true"
              data-comp_type="jkAcResultWrap"
            ></div>
            <div class="validation hidden" aria-hidden="true"></div>
            <i class="icon icon-search" aria-hidden="true"></i>
          </div>
          <div class="input input-certificate-agency is-label">
            <label for="License_Lc_Pub_c23">발행처</label>
            <input
              type="text"
              name="License[c23].Lc_Pub"
              id="License_Lc_Pub_c23"
              value=""
              data-type="Lc_Pub"
              maxlength="50"
            />
            <div class="validation hidden" aria-hidden="true"></div>
          </div>
          <div class="input input-certificate-term is-label">
            <label for="License_Lc_YYMM_c23">취득월</label>
            <input
              type="text"
              name="License[c23].Lc_YYMM"
              id="License_Lc_YYMM_c23"
              value=""
              data-format-type="month"
              placeholder="2017.10"
            />
            <div class="validation hidden" aria-hidden="true"></div>
          </div>
        </div>
        <button
          type="button"
          class="button buttonDeleteField dev-btn-del-license"
        >
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
</script>
<script type="text/javascript" src="./certification.js"></script>
    