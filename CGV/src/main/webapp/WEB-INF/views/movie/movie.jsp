<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
</head>
<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
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
    });
</script>	

<div id="contaniner">
	

</div>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>
