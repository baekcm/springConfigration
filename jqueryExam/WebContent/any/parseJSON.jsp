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
		json �����͸� ��ü�� ����� ���� ���� ����� ���� eval() �Լ��� ���������,
		���Ȼ��� ������ �����Ƿ� jQuery.parseJSON() �� ����ϴ� ���� �����Ѵ�. 
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