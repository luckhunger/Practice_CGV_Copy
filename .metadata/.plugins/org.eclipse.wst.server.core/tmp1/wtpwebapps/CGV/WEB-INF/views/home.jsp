<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html>
<head>
	<title>Home</title>
	<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
    <script src="/resources/tui-grid.js"></script>
    <link rel="stylesheet" href="/resources/tui-grid.css" type="text/css /">
</head>

<script>

// var gridData;

var grid = new tui.Grid({
      el: document.getElementById('grid'),
//       data: gridData,
      scrollX: false,
      scrollY: false,
      columns: [
        {
          header: 'Name',
          name: 'name'
        },
        {
          header: 'Artist',
          name: 'artist'
        },
        {
          header: 'Type',
          name: 'type'
        },
        {
          header: 'Release',
          name: 'release'
        },
        {
          header: 'Genre',
          name: 'genre'
        }
      ]
    });

window.onload = function() {
    $.ajax({
        url : "ajax/toastList",
        method : "POST",
        success : function(result) {
            console.log(result);
            grid.resetData(result);
        }
    });
};


</script>

<body>
<h1>
	Hello world!  
</h1>

<div id="grid"></div>

<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
