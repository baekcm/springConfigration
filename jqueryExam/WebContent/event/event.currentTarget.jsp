<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>event.currentTarget === this</title>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<script type="text/javascript">
    	$(document).ready(function(){
    		$('a').click(function(e){
	     		console.log("e.target : " + e.target);
	     		console.log("e.currentTarget : " + e.currentTarget);
	     		console.log(this);//event.currentTarget === this
	     		e.preventDefault();
    		});
        });
    </script>
	
	<a href="/img/img1.jpg"><img src="/img/img1.jpg" alt="" /></a>
  	<div id="overlay">
   		<div id="overlay_img"></div>
  	</div>

</body>
</html>