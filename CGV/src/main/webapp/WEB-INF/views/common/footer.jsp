<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
	<title>CGV copy</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0,
	minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<style type="text/css">


ul {
list-style: none;
}


/* html,body, #contaniner, #footer{} */
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em,
font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody,
tfoot, thead, tr, th, td {font-family:'Noto Sans KR', 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif; font-size:100%; margin:0; padding:0; border:0; vertical-align:baseline; word-break:break-all;}
body {line-height:1; color:black; }
ol, ul {list-style:none;}
h1, h2, h3, h4, h5, h6{font-weight:500;}
table {width:100%; border-collapse:separate; border-spacing:0;}
caption, th, td {font-weight:300; line-height:1.5em; text-align:center; vertical-align:middle;}
blockquote:before, blockquote:after, q:before, q:after {content:'';}
blockquote, q {quotes:'' '';}
button,
input {overflow:visible;}
button::-moz-focus-inner {border:0; padding:0;}
input, select, img {vertical-align:middle;}
textarea {overflow:auto; overflow-x:hidden; vertical-align:top;}
em {font-style:normal;}
strong{font-weight:500;}
i{font-style:normal;}
html, body {height:100%;}
html {overflow-y:scroll;}

body, input, textarea, select, button, table
 {font-size:13px; line-height:1.2; color:#666; font-family:'Noto Sans KR', 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif; font-weight:400}
table thead th {font-weight:500;}
legend {font:0/0 a; position:absolute; right:-999em; top:-999em; zoom:1;}

/* a 태그 밑줄 제거*/
a {color:inherit; text-decoration:none;};

button, input {overflow:visible;}

/*테두리 제거*/
button::-moz-focus-inner {border:0; padding:0;}

button:focus,
[type='checkbox']:focus,
[type='radio']:focus,
[tabindex]:focus,
[href]:focus {outline:3px solid #ead3d7;}

button,
input[type='submit'],
input[type='reset'] { padding:0;border:0 none; background-color:transparent; vertical-align:middle;}
button,
input[type='submit'],
input[type='button'] {cursor:pointer; margin:0; padding:0;}
input[type='text'],input[type='password'] {display:inline-block; height:25px; line-height:22px; padding-left:10px; border:1px solid #b5b5b5;}

/* ===========================================
   Footer Area 
============================================ */
/* #footer{background:url(https://img.cgv.co.kr/r2014/images/common/bg/bg_footer_com.gif) repeat-x 0 100%;} */
#footer .sect-ad {width:auto; height:240px; text-align:center;}
#footer .sect-ad iframe {width:100%; height:240px;display:block;}
#footer .foot {padding:0 0 147px; width:100%; height:auto;}
.foot .sect-cinfo .address {padding:20px 0 0 108px; font-size:12px; color:#555555;}

/* S Footer */
footer{min-width:1040px; padding:0 0 14px; background-color:#f8f8f8}
footer .policy_list{display:flex; justify-content:space-between; max-width:980px; margin:0 auto; padding:23px 0; border-bottom:1px solid #ebebeb}
footer .policy_list li a{font-weight:500; font-size:13px; color:#666; line-height:1.462em}
footer .policy_list li a:hover{text-decoration:underline}
footer .policy_list li a strong{font-weight:700; color:#222; text-decoration:underline}
footer .company_info_wrap{display:flex; justify-content:space-between; align-items:flex-end; max-width:980px; margin:0 auto; padding:23px 0}
	.company_info{font-size:12px; color:#666; line-height:1.667em}
	.company_info address{font-style:normal}
	.company_info .company_info_list{display:flex}
	.company_info .company_info_list dt:after{content:':'; padding:0 4px}
	.company_info .company_info_list dt ~ dt:before{content:'·'; padding:0 8px 0 4px}
	.company_info .company_info_list dd a{text-decoration:underline}

	footer .familysite_wrap{position:relative; }
	footer .familysite_wrap label{position:absolute; left:0; top:0; width:calc(100% - 38px); height:100%; font-size:0; line-height:0}
	footer .familysite_wrap select{position:relative; height:34px; font-size:12px; color:#666; line-height:34px; border:none; background-color:transparent; border:1px solid #d8d8d8}
	footer .familysite_wrap select option.familysiteTitle{display:none}
	footer .familysite_wrap .btn_familysite{display:inline-flex; justify-content:center; align-items:center; width:36px; height:34px; margin-left:-1px; font-size:14px; color:#fff; line-height:1.429em; background-color:#9e9e9e; vertical-align:top}
/* E Footer */

</style>
</head>
<!-- S Footer -->
    <footer>
		<!-- footer_area (s) -->
		
<div id="BottomWrapper" class="sect-ad">
    <iframe src="https://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Bottom" width="100%" height="240" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Bottom" id="Bottom"></iframe>
</div>
<ul class="policy_list">
    <li><a href="http://corp.cgv.co.kr/company/" target="_blank">회사소개</a></li>
    <li><a href="http://corp.cgv.co.kr/company/ir/financial/financial_list.aspx" target="_blank">IR</a></li>
    <li><a href="http://corp.cgv.co.kr/company/recruit/step/default.aspx" target="_blank">채용정보</a></li>
    <li><a href="http://corp.cgv.co.kr/company/advertize/ad_Default.aspx" target="_blank">광고/제휴/출점문의</a></li>
    <li><a href="http://www.cgv.co.kr/rules/service.aspx">이용약관</a></li>
    <li><a href="http://www.cgv.co.kr/rules/organized.aspx">편성기준</a></li>
    <li><a href="http://www.cgv.co.kr/rules/privacy.aspx"><strong>개인정보처리방침</strong></a></li>
    <li><a href="http://www.cgv.co.kr/rules/disclaimer.aspx">법적고지</a></li>
    <li><a href="http://www.cgv.co.kr/rules/emreject.aspx">이메일주소무단수집거부</a></li>
    <li><a href="http://corp.cgv.co.kr/company/ethicalManagement/ceoMessage.aspx" target="_blank">윤리경영</a></li>
    <li><a href="/company/cyberAudit.aspx" class="empha-red">사이버감사실</a></li>
</ul>
<article class="company_info_wrap">
    <section class="company_info">
        <address>(04377)서울특별시 용산구 한강대로 23길 55, 아이파크몰 6층(한강로동)</address>
        <dl class="company_info_list">
            <dt>대표이사</dt>
            <dd>허민회</dd>
            <dt>사업자등록번호</dt>
            <dd>104-81-45690</dd>
            <dt>통신판매업신고번호</dt>
            <dd>2017-서울용산-0662 <a href="#none" onclick="goFtc()" class="btn_goFtc">사업자정보확인<a></a></a></dd>
        </dl>
        <dl class="company_info_list">
            <dt>호스팅사업자</dt>
            <dd>CJ올리브네트웍스</dd>
            <dt>개인정보보호 책임자</dt>
            <dd>심준범</dd>
            <dt>대표이메일</dt>
            <dd>cjcgvmaster@cj.net</dd>
            
        </dl>
        <p class="copyright">&copy; CJ CGV. All Rights Reserved</p>
    </section>
    <section class="familysite_wrap">
        <label for="familysite">CJ그룹 계열사 바로가기</label>
        <select id="familysite">
            <option value="" class="familysiteTitle">계열사 바로가기</option>
            <optgroup label="CJ그룹">
<option value="http://www.cj.net/">CJ주식회사</option>
</optgroup><optgroup label="식품 & 식품서비스">
<option value="https://www.cj.co.kr/kr/index">CJ제일제당</option>
<option value="https://www.cjfoodville.co.kr/main.asp">CJ푸드빌</option>
<option value="http://www.cjfreshway.com/index.jsp">CJ프레시웨이</option>
</optgroup><optgroup label="생명공학">
<option value="https://www.cj.co.kr/kr/about/business/bio">CJ제일제당 BIO사업부문</option>
<option value="https://www.cj.co.kr/kr/about/business/bio">CJ Feed&Card</option>
</optgroup><optgroup label="물류 & 신유통">
<option value="https://www.cjlogistics.com/ko/main">CJ대한통운</option>
<option value="http://www.cjenc.co.kr/kr/Default.asp">CJ대한통운 건설부문</option>
<option value="https://www.oliveyoung.co.kr/store/company/brandStory.do">CJ올리브영</option>
<option value="https://www.cjolivenetworks.co.kr:449/">CJ올리브네트웍스</option>
<option value="https://www.cjoshopping.com:9002/index.asp">CJ ENM 커머스부문</option>
</optgroup><optgroup label="엔터테인먼트 & 미디어">
<option value="http://www.cjem.net/main/?locale=ko">CJ ENM 엔터테인먼트부문</option>
<option value="http://corp.cgv.co.kr/">CJ CGV</option>
</optgroup>

        </select>
        <a href="#none" class="btn_familysite" onclick="goFamilySite()">GO</a>
    </section>
</article>
<script>
    //footer GA Analytics 영역 LOG
    $('.policy_list > li > a').on({
        click: function (e) {
            gaEventLog('PC_footer', this.text, '');
        }
    });
</script>
        <!-- footer_area (e) -->

        <div class="adFloat2" style="display:none">

            <iframe src='//ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Popicon' width='154' height='182' frameborder='0' scrolling='no' topmargin='0' leftmargin='0' marginwidth='0' marginheight='0' allowTransparency="true" id="ad_float1"></iframe>
        </div>
        <script type="text/javascript">            OpenAD();</script>
        <!-- //Float Ad -->
	</footer>
	<!-- E Footer -->