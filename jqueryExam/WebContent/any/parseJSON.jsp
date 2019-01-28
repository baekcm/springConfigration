<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div id="content"></div>
    <p></p>
    <input type="button" name="btn" value="click"/>

	<!-- 
		json 데이터를 객체로 만드는 가장 쉬운 방법은 보통 eval() 함수를 사용하지만,
		보안상의 문제가 있으므로 jQuery.parseJSON() 을 사용하는 것을 권장한다. 
	-->
	<script type="text/javascript">
	$(document).ready(function(){
	    $('input').click(function(){
	        $.ajax({
	            type:"GET",
	            url:"jsp/jQuery/data.html",
	            success:function(json){
	                //alert(json);
	                var tranMsg = jQuery.parseJSON(json);
	                alert(tranMsg.msg + "\r\n" + tranMsg.data);
	            }
	        })
	    });
	});
	</script>
	
</body>
</html>