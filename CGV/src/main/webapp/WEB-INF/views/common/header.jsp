<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<head>
	<title>CGV copy</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0,
	minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!--boot-->
<!-- <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" media="screen"> -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.tmpl.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.validate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.paging.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-ui-1.10.4.custom.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.utils.js"></script>

<!-- <script type="text/javascript" src="../resources/js/swiper.min.js" ></script> -->

<script type="text/javascript">
//TopMenu 영역 LOG
    //빨강 CGV클릭
//     $('.header_content > .contents > h1 > a').on({
//         click: function (e) {
//             gaEventLog('PC_GNB', '홈', '');
//         }
//     });
//     //서비스 메뉴
//     $('.header_content > .contents > ul > li > a').on({
//         click: function (e) {
//             gaEventLog('PC_GNB', '서비스메뉴_'+this.text, '');
//         }
//     });

</script>
            <!-- 서비스 메뉴 -->
           
			<!-- 서브 메뉴 -->
			
<script type="text/javascript">
    $(document).ready(function () {
        $('.nav_menu > li > h2 > a').on({
            mouseenter: function (e) {
                var target = e.target;
                $(target).parents('.nav_menu').find('.nav_overMenu').slideDown(function () {
                    $('.nav').addClass('active');
                });
            },
            click: function (e) {
                var target = e.target;
                if (!$('.nav').hasClass('active')) {
                    $(this).trigger('mouseenter');
                } else {
                    $('.nav').trigger('mouseleave');
                }
            }
        });

        //------------------end----------------------- [@,.o]>

        $('.nav').on({
            mouseleave: function (e) {
                $(this).find('.nav_overMenu').slideUp(200, function () {
                    $('.nav').removeClass('active');
                });
            }
        });

        $('.totalSearch_wrap input[type=text]').on({
            focusin: function () {
                $('.totalSearch_wrap').addClass("active");
            }
        });

        $('.btn_totalSearchAutocomplete_close').on({
            click: function () {
                $('.totalSearch_wrap').removeClass("active");
            },
            focusout: function (e) {
                //     $('.totalSearch_wrap').removeClass("active");

            }
        });

        //통합검색 상단 검색 버튼
        $('#btn_header_search').on('click', function () {

           
            if ($('#header_ad_keyword').val() != "")
                goSearch($('#header_ad_keyword'));      //광고
            else
                goSearch($('#header_keyword'));

            
            return false;
        });

        //통합검색 검색어 입력창
        $('#header_keyword').keyup(function (e) {
            if (e.keyCode == 13) goSearch($('#header_keyword'));
        });

         //검색 입력창 클릭 시 광고값 reset
        $('#header_keyword').on('click', function () {
            $(this).attr('placeholder', '');
            $('#header_ad_keyword').val('');
        });

    });

    //통합검색
    function goSearch($objKeyword) {

        if ($objKeyword.val() == "") {
            alert("검색어를 입력해 주세요");
            $objKeyword.focus();
            return false;
        }

        //GA 검색로그
        gaEventLog('PC_GNB', '검색', $objKeyword.val());
        location = "/search/?query=" + escape($objKeyword.val());
    }

   

    //상단 키워드 광고 (S)
    function AdSearchExt(txt, SearchText) {
        $('#header_keyword').attr('placeholder', txt);
        $('#header_ad_keyword').val(SearchText);
    }

    function hdIcoSet(left, sh) { }
    //상단 키워드 광고 (E)

    //상단광고닫기
    function hideCgvTopAd() {
        $(".cgv-ad-wrap").hide();
        $('#wrap_main_notice').parent('div').css('top', 280);
    }

    //비즈스프링 클릭로그
    function setClickLog(title) {
        // eval("try{trk_clickTrace('EVT', '" + title + "')}catch(_e){}");
    }

</script>	

<style type="text/css">

/*top */
.skipnaiv+.layer-wrap {position:absolute; top:478px; left:auto; right:20px; width:280px; height:210px; background:white; z-index:100}
.skipnaiv+.layer-wrap .layer-contents {width:280px}

/* S Header */
	.header{position:relative; z-index:101}
	.header .contents{width:980px; margin:0 auto}
		.header_content{margin-bottom:50px; background-color:#fff; border-bottom:1px solid #eee}
		.header_content .contents{display:flex; justify-content:space-between; padding:30px 6px 25px 5px; background-color:#fff}
		.header_content .contents h1{display:inline-flex; align-items:flex-end; height:53px}
		.header_content .contents h1 a{display:block; float:left; height:100%}
		.header_content .contents h1 a img{display:block; width:auto; height:100%; object-fit:contain}
		.header_content .contents h1 span{font-weight:300; font-size:16px; color:#222; letter-spacing:0.313em; line-height:1.500em}
		.header_content .contents .memberInfo_wrap{display:flex; align-items:center}
		.header_content .contents .memberInfo_wrap li{margin-left:44px; margin-top:2px}
		.header_content .contents .memberInfo_wrap li:first-child{margin-left:0}
		.header_content .contents .memberInfo_wrap li a{display:block; position:relative; padding-bottom:19px}
		.header_content .contents .memberInfo_wrap li a img{width:36px; height:36px}
		.header_content .contents .memberInfo_wrap li a span{position:absolute; bottom:0; left:50%; font-size:13px; color:#666; line-height:1.462em; white-space:nowrap; transform:translate(-50%, 0)}
		.header_content .contents .memberInfo_wrap li.ad_partner{width:136px; height:39px; margin-top:5px}
		.header_content .contents .memberInfo_wrap li.ad_partner + li{margin-left:34px}
		.header_content .contents .memberInfo_wrap li.ad_partner a{width:100%; height:100%; padding-bottom:0}
		.header_content .contents .memberInfo_wrap li.ad_partner a img{width:100%; height:100%}

ul {
list-style: none;
}


/**nav*/
		.nav{position:absolute; left:0; top:113px; width:100%; padding:5px 0; background-color:#fff}
		.nav:after{content:''; display:block; position:absolute; left:0; top:49px; width:100%; height:1px; background-color:#fb4357}
		.nav:before{content:''; display:block; position:absolute; left:0; bottom:0; width:100%; height:1px; background-color:#a58e8e}
		.nav .contents{position:relative}
		.nav .contents h1{display:none}
			.nav_menu{display:inline-flex}
			.nav_menu > li{width:162px; padding:20px 0}
			.nav_menu > li:first-child{width:137px;}
			.nav_menu > li:first-child .nav_overMenu{padding-left:0}
			.nav_menu > li:first-child .nav_overMenu:before{content:none}
			.nav_menu > li:last-child{width:195px}
			.nav_menu > li:nth-child(2) > h2{left:80px}
			.nav_menu > li:nth-child(3) > h2{left:160px}
			.nav_menu > li:nth-child(4) > h2{left:240px}
			.nav_menu > li:nth-child(5) > h2{left:335px}
			.nav_menu > li:last-child > h2{left:430px}

			.nav_menu > li > h2{position:absolute; top:7px}
			.nav_menu > li > h2 > a{font-weight:500; font-size:16px; color:#222; line-height:1.500em}
			/* .nav_menu > li > h2 > a:hover{text-decoration:underline} */
			.nav_menu > li > h2 > a strong{font-weight:700; color:#fb4357}
				.nav_overMenu{display:none; position:relative; margin-bottom:8px; padding:25px 0 0 25px}
				.nav_overMenu:before{content:''; position:absolute; left:0; top:45px; display:block; width:1px; height:250px; background-color:#eee; opacity:0.8}
				.nav_overMenu h3{height:auto; margin:0; line-height:1em; text-align:left; background-image:none}
				.nav_overMenu a:hover{text-decoration:underline}
				.nav_overMenu dt{padding-top:18px}
				.nav_overMenu dt a{font-weight:700; font-size:14px; color:#222; line-height:1.429em}
				.nav_overMenu dt + dd{margin-top:8px}
				.nav_overMenu dd a{font-weight:400; font-size:14px; color:#666; line-height:2.143em}
				.nav_overMenu dd a.arrowR:after{content:''; display:inline-flex; align-self:center; width:5px; height:9px; margin-left:4px; background:transparent url('../resources/images/common/ico/arrowR_5x9.png') center/5px 9px scroll no-repeat}

			.totalSearch_wrap{display:inline-flex; position:absolute; right:0; top:7px; padding:0 36px 0 10px}
			.totalSearch_wrap:before{content:''; position:absolute; left:0; top:2px; width:1px; height:20px; background-color:#cacaca}
			.totalSearch_wrap:after{content:''; position:absolute; right:0; top:2px; width:1px; height:20px; background-color:#cacaca}
			.totalSearch_wrap label{display:block}
			.totalSearch_wrap label input[type="text"]{width:180px; height:auto; padding:0 0 0 7px; font-size:16px; color:#222; line-height:1.500em; border:none}
			.totalSearch_wrap .btn_totalSearch{display:block; position:absolute; right:10px; top:-1px; ; width:26px; height:26px; font-size:0; line-height:0; background:transparent url('../resources/images/common/ico/search.png') center center/26px scroll no-repeat}

			.totalSearch_wrap.active .totalSearchAutocomplete_wrap{display:block}

			

			.totalSearchAutocomplete_wrap{display:none; position:absolute; left:0; top:43px; width:100%; min-width:238px; background-color:#fff; border:1px solid #e1e1e1; border-radius:5px; box-shadow:0 2px 9px 0 rgba(0, 0, 0, 0.1)}
				.totalSearchAutocomplete_list{padding:16px 22px; border-bottom:1px solid #f4f4f4}
				.totalSearchAutocomplete_list dt{font-weight:500; font-size:16px; color:#222; line-height:1.500em}
				.totalSearchAutocomplete_list dt + dd{margin-top:5px}
				.totalSearchAutocomplete_list dd a{font-size:14px; color:#222; line-height:2.214em}
				.totalSearchAutocomplete_list dd a strong{font-weight:400; color:#fb4357}

				.btn_totalSearchAutocomplete_close{float:right; margin:4px 13px 9px; padding-right:15px; font-size:12px; color:#666; line-height:1.417em; background:transparent url('../resources/images/common/btn/autocompleteClose.png') right center/11px scroll no-repeat}

		.nav.active .nav_overMenu{display:block}

		.nav.fixed{position:fixed; top:0px; min-width:1040px; padding:10px 0}
		.nav.fixed:after{top:0; bottom:auto; height:60px; background-image:linear-gradient(to right, rgb(215, 67, 87), rgb(241,79,58) 59%, rgb(239, 100, 47)); z-index:1}
		.nav.fixed .contents{z-index:2}
		.nav.fixed .contents h1{display:block; position:absolute; left:0; top:1px; width:70px; height:32px; z-index:3}
		.nav.fixed .contents h1 a{display:block} 
		.nav.fixed .contents h1 a img{width:100%; height:100%}
		.nav.fixed .contents .nav_menu > li:first-child > h2{left:120px}
		.nav.fixed .contents .nav_menu > li:nth-child(2) > h2{left:200px}
		.nav.fixed .contents .nav_menu > li:nth-child(3) > h2{left:280px}
		.nav.fixed .contents .nav_menu > li:nth-child(4) > h2{left:360px}
		.nav.fixed .contents .nav_menu > li:nth-child(5) > h2{left:455px}
		.nav.fixed .contents .nav_menu > li:last-child > h2{left:550px}
		.nav.fixed .contents .nav_menu > li > h2 > a{color:#fff}
		.nav.fixed .contents .nav_menu > li > h2 > a strong{color:#fff}
		.nav.fixed .contents .totalSearch_wrap:before,
		.nav.fixed .contents .totalSearch_wrap:after{background-color:#000; opacity:0.2}
		.nav.fixed .contents .totalSearch_wrap label input[type="text"]{color:#fff; background-color:transparent}
		.nav.fixed .contents .totalSearch_wrap .btn_totalSearch{background:transparent url('../resources/images/common/ico/search_w.png') center center/26px scroll no-repeat}
		.nav.fixed .contents .totalSearchAutocomplete_wrap{position:absolute; left:0; top:49px}
		
/* Header AD Area */
#cgvwrap .cgv-ad-wrap {width:100%; height:80px; z-index:101} /* 20140620 position:absolute; top:0; left:0; Del */
#cgvwrap .cgv-ad-wrap .sect-head-ad {width:100%; height:80px; margin:0 auto; text-align:center;}
.sect_txt_banner {height:80px;background:#fefcef}
.sect_txt_banner iframe,.sect_txt_banner .inner {display:block;width:980px;height:80px;margin:0 auto}
iframe#TopBanner {margin: 0 auto;display:block}
.adreduce {position:relative;height:80px;margin:0 auto}
.adextend {position: absolute;left: 50%;top: 0px;z-index: 1000;margin: 0 auto;width: 980px;margin-left: -490px;}

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

</style>
</head>

<div id="cgvwrap">
    <div class="cgv-ad-wrap" id="cgv_main_ad">
        <div id="TopBarWrapper" class="sect-head-ad">
            <div class="top_extend_ad_wrap">
                <div class="adreduce" id="adReduce">                    
                    <iframe src="//ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@TopBar_EX" width="100%" height="80" title="" frameborder="0" scrolling="no" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" name="TopBanner" id="TopBanner"></iframe>
                </div> 
                <div class="adextend" id="adExtend"></div>
            </div><!-- //.top_extend_ad_wrap -->
        </div>    
    </div>    
	
      <!-- S Header
        Description
        - class 'nav' 에 class 'active' 추가시 서브메뉴노출
        - class 'nav' 에 class 'fixed' 추가시 상단고정되며 스타일 변경됨
     -->
	<div class="header">			
            <!-- 서비스 메뉴 --> 
            
<div class="header_content">
    <div class="contents">
        <h1 onclick=""><a href="/"><img src="https://img.cgv.co.kr/R2014/images/common/logo/logoRed.png" alt="CGV" /></a><span>CULTUREPLEX</span></h1>
        <ul class="memberInfo_wrap">
            <!-- Advertisement -->
            
			<div class="ad-partner">
                <a href="http://www.cgv.co.kr/culture-event/event/detailViewUnited.aspx?seq=31426&menu=006"  >
                    <img src="https://img.cgv.co.kr/WingBanner/2022/0303/16462658373950.png" alt="현대M포인트" />
                </a>					
			</div>
            
            <!-- /Advertisement -->

            
            <li><a href="/user/login/?returnURL=https%3a%2f%2fwww.cgv.co.kr%2fdefault.aspx"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginPassword.png" alt="로그인" /><span>로그인</span></a></li>
            <li><a href="/user/join/"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginJoin.png" alt="회원가입" /><span>회원가입</span></a></li>
            
            
            <li><a href="/user/mycgv/"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginMember.png" alt="MY CGV" /><span>MY CGV</span></a></li>
            <li><a href="/support/default.aspx"><img src="https://img.cgv.co.kr/R2014/images/common/ico/loginCustomer.png" alt="고객센터" /><span>고객센터</span></a></li>
        </ul>
    </div>
</div>


<div class="nav" style="left: 0px;">
    <div class="contents">
        <h1><a href="/" tabindex="-1"><img src="https://img.cgv.co.kr/R2014/images/common/logo/logoWhite.png" alt="CGV" /></a></h1>
        <ul class="nav_menu">
            <li>
                <h2><a href="/movies/?lt=1&ft=0">영화</a></h2>
                <dl class="nav_overMenu">
                    <dt><h2><a href="/movies/?lt=1&ft=0" tabindex="-1">영화</a></h2></dt>
                    <dd><h3><a href="/movies/?lt=1&ft=0">무비차트</a></h3></dd>
                    <dd><h3><a href="/arthouse/">아트하우스</a></h3></dd>
                    <dd><h3><a href="/culture-event/event/detailViewUnited.aspx?seq=30717">ICECON</a></h3></dd>
                </dl>
            </li>
            <li>
                <h2><a href="/theaters/">극장</a></h2>
                <dl class="nav_overMenu">
                    <dt><h2><a href="/theaters/" tabindex="-1">극장</a></h2></dt>
                    <dd><h3><a href="/theaters/">CGV 극장</a></h3></dd>
                    <dd><h3><a href="/theaters/special/">특별관</a></h3></dd>
                </dl>
            </li>
            <li>
                <h2><a href="/ticket/"><strong>예매</strong></a></h2>
                <dl class="nav_overMenu">
                    <dt><h2><a href="/ticket/" tabindex="-1">예매</a></h2></dt>
                    <dd><h3><a href="/ticket/">빠른예매</a></h3></dd>
                    <dd><h3><a href="/reserve/show-times/">상영스케줄</a></h3></dd>
                    <dd><h3><a href="/ticket/eng/newdefault.aspx">English Ticketing</a></h3></dd>
                    <dd><h3><a href="/reserve/show-times/eng/">English Schedule</a></h3></dd>
                </dl>
            </li>
            <li>
                <h2><a href="/culture-event/popcorn-store/">스토어</a></h2>
                <dl class="nav_overMenu">
                    <dt><h2><a href="/culture-event/popcorn-store/" tabindex="-1">스토어</a></h2></dt>
                    
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=2">영화관람권</a></h3></dd>
                        
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=3">기프트카드</a></h3></dd>
                        
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=4">콤보</a></h3></dd>
                        
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=5">팝콘</a></h3></dd>
                        
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=6">음료</a></h3></dd>
                        
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=7">스낵</a></h3></dd>
                        
                            <dd><h3><a href="/culture-event/popcorn-store/store-category.aspx?CategoryIdx=10">플레이존</a></h3></dd>
                        
                    <dd><h3><a href="https://brand.naver.com/cgv" class="arrowR" target="_blank">씨네샵</a></h3></dd>
                </dl>
            </li>
            <li>
                <h2 onclick="gaEventLog('PC_GNB','주메뉴_이벤트','')"><a href="/culture-event/event/defaultNew.aspx">이벤트</a></h2>
                <dl class="nav_overMenu">
                    <dt><h2><a href="/culture-event/event/defaultNew.aspx?mCode=001" tabindex="-1">이벤트</a></h2></dt>
                    <dd><h3><a href="/culture-event/event/defaultNew.aspx?mCode=001">SPECIAL</a></h3></dd>
                    <dd><h3><a href="/culture-event/event/defaultNew.aspx?mCode=004">영화/예매</a></h3></dd>
                    <dd><h3><a href="/culture-event/event/defaultNew.aspx?mCode=008">멤버십/CLUB</a></h3></dd>
                    <dd><h3><a href="/culture-event/event/defaultNew.aspx?mCode=005">CGV 극장별</a></h3></dd>
                    <dd><h3><a href="/culture-event/event/defaultNew.aspx?mCode=006">제휴할인</a></h3></dd>
                    <dd><h3><a href="/user/mycgv/event/result_list.aspx">당첨자 발표</a></h3></dd>
                    <dd><h3><a href="/culture-event/event/end-list.aspx">종료된 이벤트</a></h3></dd>
                </dl>
            </li>
            <li>
                <h2 onclick="gaEventLog('PC_GNB','주메뉴_해택','')"><a href="/discount/discountlist.aspx">혜택</a></h2>
                <dl class="nav_overMenu">
                    <dt><h2><a href="/discount/discountlist.aspx" tabindex="-1">혜택</a></h2></dt>
                    <dd><h3><a href="/discount/discountlist.aspx">CGV 할인정보</a></h3></dd>
                    <dd><h3><a href="https://www.cgv.co.kr/user/memberShip/ClubService.aspx">CLUB 서비스</a></h3></dd>
                    <dd><h3><a href="/user/vip-lounge/">VIP 라운지</a></h3></dd>
                </dl>
            </li>
        </ul>
        <div class="totalSearch_wrap">
            <label for="totalSearch">
                <input type="text" id="header_keyword" value="" />
                <input type="hidden" id="header_ad_keyword" name="header_ad_keyword" />
            </label>
            <button type="button" class="btn_totalSearch" id="btn_header_search">검색</button>
            <iframe src="//ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Search_txt" width="0" height="0" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" allowfullscreen="allowfullscreen" mozallowfullscreen="mozallowfullscreen" msallowfullscreen="msallowfullscreen" oallowfullscreen="oallowfullscreen" webkitallowfullscreen="webkitallowfullscreen"></iframe>
            <!--<div class="totalSearchAutocomplete_wrap">
                <dl class="totalSearchAutocomplete_list">
                    <dt>영화</dt>
                    <dd><a href="#none"><strong>전지</strong>적 작가시점</a></dd>
                    <dd><a href="#none">내언니 <strong>전지</strong>현과 나</a></dd>
                    <dd><a href="#none">수호<strong>전지</strong> 영웅본색</a></dd>
                </dl>
                <dl class="totalSearchAutocomplete_list">
                    <dt>인물</dt>
                    <dd><a href="#none"><strong>전지</strong>현</a></dd>
                    <dd><a href="#none"><strong>전지</strong>희</a></dd>
                    <dd><a href="#none">이<strong>전지</strong></a></dd>
                </dl>
                <a href="#none" class="btn_totalSearchAutocomplete_close">닫기</a>
            </div>//-->
        </div>
    </div>
</div>
