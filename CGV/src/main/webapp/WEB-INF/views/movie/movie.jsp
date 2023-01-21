<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/movie.css">
</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
//     	movieSeachAjax();
    });
    
    function movieSeachAjax(){
    	
    	var params = '';
 	   $.ajax({
            type : "POST",            // HTTP method type(GET, POST) 형식이다.
            url : "/cgv/movie/movieList.do",      // 컨트롤러에서 대기중인 URL 주소이다.
            data : params,            // Json 형식의 데이터이다.
            success : function(data){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
                // 응답코드 > 0000
                console.log(data);
            },
            error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
                console.log(XMLHttpRequest);
                console.log(textStatus);
                console.log(errorThrown);
         	   alert("통신 실패.")
            }
        });
    }
</script>	
</div>
<div id="contaniner">
	
	<div class="tit-heading-wrap">
            <h3>무비차트</h3>
           
            <div class="submenu">
                <ul>
                    <li class="on"><a href="/movies/" title="선택">무비차트</a></li>
                    <li><a href="/movies/pre-movies.aspx">상영예정작</a></li>
                    <!--<li><a href="/movies/?lt=3">CGV아트하우스</a></li>//-->
                </ul>
            </div>
        </div>
		<div class="sect-sorting">
             <div class="nowshow">
                        <input type="checkbox" id="chk_nowshow">
            
                <label for="chk_nowshow">현재 상영작만 보기</label>                
            </div>
            <label for="order_type" class="hidden">정렬</label>
            <select id="order_type" name="order-type">
				<option title="현재 선택됨" selected="" value="1">예매율순</option>
                <option value="2">평점순</option>
                <option value="3">관람객순</option>
            </select>
            <button type="button" class="round gray"><span>GO</span></button>
        </div>
        
	<ol>
                <li>
                    <div class="box-image">
                    	<strong class="rank">No.1</strong>
                    	<a href="/movies/detail-view/?midx=86072">
                            <span class="thumb-image">
								<img src="${pageContext.request.contextPath}/resources/images/86072_320.jpg" alt="아바타-물의 길 포스터" onerror="errorImage(this)">
                            	<i class="ico-grade 12">12</i>
                            </span>
                        </a>
                    </div>
					<div class="box-contents">
                        <a href="/movies/detail-view/?midx=86072">
                            <strong class="title">아바타-물의 길</strong>
                        </a>
                        <div class="score">
                            <strong class="percent">예매율<span>23.7%</span></strong>
                            <!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 (적용 범위1~ 3위)-->
                            <div class="egg-gage small">
                                            <span class="egg great"></span>
                                            <span class="percent">96%</span>
                                        </div>
                        </div>
                        <span class="txt-info">
                            <strong>
                                2022.12.14 
                                <span>개봉</span>
                            </strong>
                        </span>
                        <span class="like"> 
                            <a class="link-reservation" href="/ticket/?MOVIE_CD=20031534&amp;MOVIE_CD_GROUP=20030160">예매</a>
                        </span>
                    </div>
                </li>
				<li>
                    <div class="box-image">
                    	<strong class="rank">No.1</strong>
                    	<a href="/movies/detail-view/?midx=86072">
                            <span class="thumb-image">
								<img src="${pageContext.request.contextPath}/resources/images/86072_320.jpg" alt="아바타-물의 길 포스터" onerror="errorImage(this)">
                            	<i class="ico-grade 12">12</i>
                            </span>
                        </a>
                    </div>
					<div class="box-contents">
                        <a href="/movies/detail-view/?midx=86072">
                            <strong class="title">아바타-물의 길</strong>
                        </a>
                        <div class="score">
                            <strong class="percent">예매율<span>23.7%</span></strong>
                            <!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 (적용 범위1~ 3위)-->
                            <div class="egg-gage small">
                                            <span class="egg great"></span>
                                            <span class="percent">96%</span>
                                        </div>
                        </div>
                        <span class="txt-info">
                            <strong>
                                2022.12.14 
                                <span>개봉</span>
                            </strong>
                        </span>
                        <span class="like"> 
                            <a class="link-reservation" href="/ticket/?MOVIE_CD=20031534&amp;MOVIE_CD_GROUP=20030160">예매</a>
                        </span>
                    </div>
                </li>
<li>
                    <div class="box-image">
                    	<strong class="rank">No.1</strong>
                    	<a href="/movies/detail-view/?midx=86072">
                            <span class="thumb-image">
								<img src="${pageContext.request.contextPath}/resources/images/86072_320.jpg" alt="아바타-물의 길 포스터" onerror="errorImage(this)">
                            	<i class="ico-grade 12">12</i>
                            </span>
                        </a>
                    </div>
					<div class="box-contents">
                        <a href="/movies/detail-view/?midx=86072">
                            <strong class="title">아바타-물의 길</strong>
                        </a>
                        <div class="score">
                            <strong class="percent">예매율<span>23.7%</span></strong>
                            <!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 (적용 범위1~ 3위)-->
                            <div class="egg-gage small">
                                            <span class="egg great"></span>
                                            <span class="percent">96%</span>
                                        </div>
                        </div>
                        <span class="txt-info">
                            <strong>
                                2022.12.14 
                                <span>개봉</span>
                            </strong>
                        </span>
                        <span class="like"> 
                            <a class="link-reservation" href="/ticket/?MOVIE_CD=20031534&amp;MOVIE_CD_GROUP=20030160">예매</a>
                        </span>
                    </div>
                </li>
<li>
                    <div class="box-image">
                    	<strong class="rank">No.1</strong>
                    	<a href="/movies/detail-view/?midx=86072">
                            <span class="thumb-image">
								<img src="${pageContext.request.contextPath}/resources/images/86072_320.jpg" alt="아바타-물의 길 포스터" onerror="errorImage(this)">
                            	<i class="ico-grade 12">12</i>
                            </span>
                        </a>
                    </div>
					<div class="box-contents">
                        <a href="/movies/detail-view/?midx=86072">
                            <strong class="title">아바타-물의 길</strong>
                        </a>
                        <div class="score">
                            <strong class="percent">예매율<span>23.7%</span></strong>
                            <!-- 2020.05.07 개봉전 프리에그 노출, 개봉후 골든에그지수 노출변경 (적용 범위1~ 3위)-->
                            <div class="egg-gage small">
                                            <span class="egg great"></span>
                                            <span class="percent">96%</span>
                                        </div>
                        </div>
                        <span class="txt-info">
                            <strong>
                                2022.12.14 
                                <span>개봉</span>
                            </strong>
                        </span>
                        <span class="like"> 
                            <a class="link-reservation" href="/ticket/?MOVIE_CD=20031534&amp;MOVIE_CD_GROUP=20030160">예매</a>
                        </span>
                    </div>
                </li>
            </ol>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>
