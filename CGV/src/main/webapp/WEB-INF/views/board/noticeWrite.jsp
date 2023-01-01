<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>


<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js-->
<!-- <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script> -->

<script>

/* $(document).ready(function() {
      $('#summernote').summernote();
}); */

//게시판
//글쓰기 > 글을 등록 / 수정 / 삭제 + 댓글 / 덧글

//1. 글을 등록하는 기능 생성
function insertNotice() {
    
    $.ajax(
        {
            // 토스트 타입
            type:"POST",     
            url:"/board/insertNotice.do",
            data: form.searilze(),
//          dataType: "text",
            success:
                function(data) {
                    
                }
        }   
    )
}




</script>

</head>



<body>

<div id="notice_top">
    <h3>공지/뉴스</h3>
    <h4>CGV의 주요한 이슈 및 여러가지 소식들을 관리하실 수 있습니다.</h4>
</div>


<div>

<div id="writeSearch">

<form id="NoticeForm" method="post">
    <input type="hidden" id="userId" name="" value="">


	<table>
	   <tr>
	       <td>
	           <button id="addFile">첨부파일 업로드</button>
	       </td>
	       <td>
	           
	       </td>
	   </tr>
	
	
	   <tr>
            <td>
                <select id="type">
                   <option value=1>전체</option>
                   <option value=2>시스템점검</option>
                   <option value=3>극장</option>
                   <option value=4>기타</option>
    <!--                type_cd 이용해서 게시판 선택하도록 작성 -->
                </select>
            </td>
        </tr>
	
	<tr>
	   <td>
	       팝업창 표시 여부 <input type="checkbox">
	   </td>
	</tr>
	
	    <tr>
	        <td>
	           <input type="text" placeholder="제목을 입력하세요.">
	       </td>
	    </tr>
	    
	    <tr>
	       <td>
	           <!-- <div id="summernote">

                </div> -->
	       </td>
	    </tr>
	    
	    <tr>
	        <td>작성자 : <input type="text" disabled></td>
	        <td>작성일자 : <input type="text"></td>
	    </tr>
	</table>

</form>
</div>




</div>





<div id="">

<button id="save">저장하기</button>
<!-- 목록화면으로 돌아가기 -->
<button id="reset" onclick="location.href='noticeList.do'">돌아가기</button> 

</div>
</body>
</html>