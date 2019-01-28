<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	p { 
  		background:yellow; 
  		font-weight:bold; 
  		cursor:pointer;
      	padding:5px; 
    }
  	
  	p.over { 
  		background: #ccc; 
  	}
  	
  	span { 
  		color:red; 
  	}
  	</style>
  
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<p>Click me!</p>
  	<span></span>

	<!-- jQuery 1.7 이상부터 live 는 사용되지 않고, on 으로 바뀌었다. -->
	<!-- $( document ).on( events, selector, data, handler ); -->
	<script type="text/javascript">
	//$("p").live("click", function(){
	$("p").on("click", function(){
	  	$(this).before("<p>Another paragraph!</p>");
	});
	</script>

</body>
</html>