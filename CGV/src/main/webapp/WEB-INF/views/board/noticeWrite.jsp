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



<script type="text/javascript">

// document.getElementById('regDt').value= new Date().toISOString().slice(0, 10);

$(function() {
//    retrieve();
});

// 조회
function retrieve() {
	$.ajax(
	        {
	            // 토스트 타입
	            type:"POST",     
	            url:"/board/retrieveNotice.do",
	            data: form.searilze(),
//	          dataType: "text",
	            success:
	                function(data) {
	                    
	                }
	        }   
	    );
}

//게시판
//글쓰기 > 글을 등록 / 수정 / 삭제 + 댓글 / 덧글

// 글 등록
// $("#insert").click(function(e){
$(document).on("click", "#insert", function(){
	console.log("hello1");
	
	var formData = $("form[name=NoticeForm]").serialize() ;
	
	$.ajax({
            type:"POST",     
            url:"/insertNotice.do",
            data: formData,
            dataType: "json",
            success:
                function(data) {
                    if(data) {
                        alert("success!!");
                        retrieve();
                    }else {
                        alert("error!!");
                    }
                }
	        });
});





</script>

</head>



<body>

<div id="notice_top">
    <h3>공지/뉴스</h3>
    <h4>CGV의 주요한 이슈 및 여러가지 소식들을 관리하실 수 있습니다.</h4>
</div>


<div id="writeSearch">

	<form id="NoticeForm" method="post">
	    <input type="hidden" id="userId" name="userId">
	    <input type="hidden" id="boardPk" name="boardPk">
	    <input type="hidden" id="userPk" name="userPk">
	
	    <table>
	       <tr>
	           <td>
	               <button id="addFile">첨부파일 업로드</button>
	           </td>
	           <td>
	               
	           </td>
	       </tr>
	    
	    
	       <tr>
	           <th><label>게시판 종류</label></th>
	            <td>
	                <select id="typeCd">
	                   <option value=1 selected>전체</option>
	                   <option value=2>시스템점검</option>
	                   <option value=3>극장</option>
	                   <option value=4>기타</option>
	    <!--                type_cd 이용해서 게시판 선택하도록 작성 -->
	                </select>
	            </td>
	        </tr>
	    
	        <tr>
	           <th><label>팝업창 표시</label></th>
	           <td>
	               <input type="checkbox">
	           </td>
	        </tr>
	    
	        <tr>
	           <th><label>제목</label></th>
	            <td>
	               <input type="text" id="boardTitle" placeholder="제목을 입력하세요.">
	           </td>
	        </tr>
	        
	        <tr>
	            <th><label>작성자</label></th>
	            <td>
	                <input type="text" readonly>
	            </td>
	        </tr>
	        
	        <tr>
	           <th><label>작성일자</label></th>
	           <td>
	               <input type="date" id="redDt">
	           </td>
	        </tr>
	        
	        <tr>
	            <th><label>게시판 상세내용</label></th>
	            <td>
	                <textarea id="boardComment" name="boardComment" required></textarea>
	            </td>
	        </tr>
	        
	        
	        
	    </table>
	<button id="insert">저장하기</button>
	<!-- 목록화면으로 돌아가기 -->
	<button id="reset" onclick="location.href='noticeList.do'">돌아가기</button> 
	</form>

</div>

</body>
</html>