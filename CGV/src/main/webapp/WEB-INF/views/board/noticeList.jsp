<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>

<style>

#notice_top{



}

#search_area{



}


#table > td{
border-sapcing:20px;
vorder-collapse:separate;
}

#tab_wrap{
width:100%;
height:100%;
position:relative;
margin-top:15px;


}

#tab {
display:block;
margin:1px;
list-style:none;
overflow:hidden;
certical-align:baseline;
word-break:break-all;
margin-block-start: 1em;
margin-block-end: 1em;
margin-inline-start: 0px;
margin-inline-end: 0px;
padding-inline-start: 40px;
}

#tab > li{
float:left;
position:relative;
display:bolck;
text-align:center;
background-color:#white;
font-size:25px;
color:#fff;
margin: 20px 20px;
}

#result{
margin: 30px 0px 10px 0px;
}

#tab_contents{
width:100%;
height:100%;
font-size:30px;
margin: 50px;
text-align:center;
}




</style>

</head>

<script>

// 공지사항 글쓰기 화면으로 이동
function goWrite() {
    $.ajax(
    	{
    		type:"POST",
    		url:"/board/noticeWrite",
    		data: {},
    		dataType:"json",
    		success: 
    			function(data) {
    			    noticeWrite();
    			},
    		error: alert("작성내역을 다시 확인하시기 바랍니다.");
    	}	
    
    
    
    )
}


</script>

<body>









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

<div id="tab_wrap">
<!--     <div class="tab"> -->
        <ul id="tab">
            <li>
                <a href="#tab1" class="btn">전체</a>
                <div id="tab1" class="content"></div>
            </li>
            <li>
                <a href="#tab2" class="btn">시스템점검</a>
                <div id="tab2" class="content"></div>
            </li>
            <li>
                <a href="#tab3" class="btn">극장</a>
                <div id="tab3" class="content"></div>
            </li>
            <li>
                <a href="#tab4" class="btn">기타</a>
                <div id="tab4" class="content"></div>
            </li>
            
        </ul>
    
<!--     </div> -->
</div>

<div id="result">
총
<span id="num">건</span>
이 검색되었습니다.
</div>

<div>
    <button id="write" onclick="goWrite();">글쓰기</button>
</div>

<div id="tab_contents">

<!-- 데이터 길이가 길어 화면에서 겹쳐질 떄에는 특정 길이 이상의 데이터가 나오면 ... 으로 중략되도록 개발자가 수정해야 함 -->
    <table id="table">
        <tr>
            <td>번호</td>
            <td>등록</td>
            <td id="title_name">제목</td>
            <td>등록일</td>
            <td>조회수</td>
        </tr>
        <tr>
        
        </tr>
    </table>






</div>


<!-- <div id="contents" style="border:1px; color:black;"> -->
<!-- hello -->
<!-- </div> -->

</body>
</html>