<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	.block {
     	background-color: blue;
     	width: 150px;
     	height: 70px;
     	margin: 10px;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<button id="go">&raquo; Run</button>
	<div class="block"></div>

	<!-- 하나의 완성된 자바스크립트 파일을 동적 로드/실행 -->
	<script type="text/javascript">
	
	var url = "https://code.jquery.com/color/jquery.color.js";
	
	$.getScript( url, function() {
	  	$( "#go" ).click(function() {
	    	$( ".block" )
	      	.animate({
	        	backgroundColor: "rgb(255, 180, 180)"
	      	}, 1000 )
	      	.delay( 500 )
	      	.animate({
	        	backgroundColor: "olive"
	      	}, 1000 )
	      	.delay( 500 )
	      	.animate({
	        	backgroundColor: "#00f"
	      	}, 1000 );
	  	});
	});
	</script>
	
	<br><br>
	
	<input type="button" id="btn" value="표그리기" />
	<div id="ctlGrid"></div>
	
	<script type="text/javascript">
        $(document).ready(function () { 
            $("#btn").click(function () {
                // 아래 코드가 실행되는 시점에 js 파일의 기능 실행됨
                $.getScript('getScript.js');
            });
        });
    </script>

</body>
</html>