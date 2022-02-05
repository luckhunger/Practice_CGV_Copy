<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>

// var gridData;

var grid = new tui.Grid({
	  el: document.getElementById('grid'),
// 	  data: gridData,
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

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
	<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
	<script src="/resources/tui-grid.js"></script>
	<link rel="stylesheet" href="/resources/tui-grid.css" type="text/css /">
</head>
<body>


<div id="grid"></div>
</body>
</html>