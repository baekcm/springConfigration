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

	<!-- �ϳ��� �ϼ��� �ڹٽ�ũ��Ʈ ������ ���� �ε�/���� -->
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
	
	<input type="button" id="btn" value="ǥ�׸���" />
	<div id="ctlGrid"></div>
	
	<script type="text/javascript">
        $(document).ready(function () { 
            $("#btn").click(function () {
                // �Ʒ� �ڵ尡 ����Ǵ� ������ js ������ ��� �����
                $.getScript('getScript.js');
            });
        });
    </script>

</body>
</html>