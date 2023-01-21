<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>

<style>

ul.tabs{
    margin: 0px;
    padding: 0px;
    list-style: none;
}

ul.tabs li{
  display: inline-block;
    background: #898989;
    color: white;
    padding: 10px 15px;
    cursor: pointer;
}

ul.tabs li.current{
    background: #e0e0e0;
    color: #222;
}

.tab-content{
  display: none;
    background: #e0e0e0;
    padding: 12px;
}

.tab-content.current{
    display: inherit;
}

</style>

<title>공지사항</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.utils.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.validate.js"></script>

<script>

$("#write").click(function() {
	// goWrite();
});


// 공지사항 글쓰기 화면으로 이동
function goWrite() {
	var params = '';
	
    $.ajax(
        {
            type:"POST",
            url:"/cgv/board/noticeWrite.do",
            data: params,
            success: 
                function(data) {
                    console.log(data);
                },
            error: alert("작성내역을 다시 확인하시기 바랍니다.")
        }   
    )
};

// 탭 목록 조회
function retrieveTabList() {
	// params를 선언해서 나중에 파라미터 값을 사용하기 위해 생성
	var params = $("#tapContents").serialize();
	
	$.ajax({
		type:"POST",
        url:"/cgv/board/noticeTabList.do",
        data: params,
        success: 
            function(data) {
                console.log(data);
            },
        error: console.log("실패")
	});
	
}


$(document).ready(function(){
    
    $('ul.tabs li').click(function(){
    	
    	retrieveTabList();
    	
    	// 클릭효과 설정
        var tab_id = $(this).attr('data-tab');

        $('ul.tabs li').removeClass('current');
        $('.tab-content').removeClass('current');

        $(this).addClass('current');
        $("#"+tab_id).addClass('current');
    })
    
    /* $('tabs').click(function() {
    	
    	retrieveTabList();
    	
    }); */

});

</script>



<body>
<form id="tapContents">
    <input name="userId" id="userId" value="${session.userId}"/>
    <input name="">
</form>

<div id="contents">

<div id="notice_top">
    <h2>공지/뉴스</h2>
    <h3>CGV의 주요한 이슈 및 여러가지 소식들을 확인하실 수 있습니다.</h3>
</div>

<div id="search_area">
    <select id="" name="">
        <option value="0">제목</option>
        <option value="1">내용</option>
    </select>
    <input type="text" id="" placeholder="검색어를 입력해 주세요" style="width:185px;">
    <button id="search" name="search">검색하기</button>
</div>

<div class="tabs_container">
<!-- 탭 메뉴 상단 시작 -->
    <ul class="tabs">
    <!-- data-tab = id > 동일 기능 -->
        <li class="tab-link current" data-tab="01">전체</li>
        <li class="tab-link" data-tab="02">시스템점검</li>
        <li class="tab-link" data-tab="03">극장</li>
        <li class="tab-link" data-tab="04">기타</li>
    </ul>
<!-- 탭 메뉴 상단 끝 -->
<!-- 탭 메뉴 내용 시작 -->
    <div id="01" class="tab-content current">
    <h1>전체</h1>
    <table id="table">
        <tr>
            <td>번호</td>
            <td>제목</td>
            <td id="redId">등록일</td>
            <td id="showCount">조회수</td>
        </tr>
        <tr id="aaa">
        <!-- foreach 쓰려면 데이터를 Map으로 받아와야 함 -->
            <c:forEach var="name" items="${tabList}">
                <td>번호 : ${status.count}</td>
                <td><c:out value="${tabList.boardTitle}" /></td>
            </c:forEach>
            
            <td></td>
            <td id="boardTitle"></td>
            <td id="redId"></td>
            <td id="showCount"></td>
        </tr>
    </table>
    </div>
    
    <div id="02" class="tab-content">
        <h1>시스템점검</h1>
        <table id="table">
        <tr>
            <td>번호</td>
            <td id="title_name">제목</td>
            <td>등록일</td>
            <td>조회수</td>
        </tr>
        <tr>
        
        </tr>
    </table>
    </div>
    
    <div id="03" class="tab-content">
        <h1>극장</h1>
        <table id="table">
        <tr>
            <td>번호</td>
            <td id="title_name">제목</td>
            <td>등록일</td>
            <td>조회수</td>
        </tr>
        <tr>
        
        </tr>
    </table>
    </div>
    
    <div id="04" class="tab-content">
        <h1>기타</h1>
        <table id="table">
        <tr>
            <td>번호</td>
            <td id="title_name">제목</td>
            <td>등록일</td>
            <td>조회수</td>
        </tr>
        <tr>
        
        </tr>
    </table>
    </div>
<!-- 탭 메뉴 내용 끝 -->
</div>

<!-- <div id="result">
총
<span id="num">건</span>
이 검색되었습니다.
</div> -->

<div>
    <!-- <button id="write" onclick="goWrite();">글쓰기</button> -->
    <button id="write" onclick="location.href='noticeWrite.do'">글쓰기</button>
</div>

<div id="tab_contents">

<!-- 데이터 길이가 길어 화면에서 겹쳐질 떄에는 특정 길이 이상의 데이터가 나오면 ... 으로 중략되도록 개발자가 수정해야 함 -->
    

</div>

</div>


</body>

</html>