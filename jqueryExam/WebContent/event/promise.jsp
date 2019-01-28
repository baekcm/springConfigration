<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	div {
	    height: 50px;
	    width: 50px;
	    float: left;
	    margin-right: 10px;
	    display: none;
	    background-color: #090;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<button>Go</button>
	<p>Ready...</p>
	<div></div>
	<div></div>
	<div></div>
	<div></div>
	
	<!-- jQuery 1.5 ���� ������������ ���Ե� ������� Ajax ���� �񵿱� �Լ��� �ڵ鸵�ϱ� ���� ����. -->
	<!-- ajax�� ���� ���� �����͸� �ҷ��� ��, �����͸� �� �ҷ����� �ʾ������� �ұ��ϰ� �� ���� ���� �����ع�����. -->
	<!-- �����͸� �� �ҷ����� �� ������ ������Ѿ� �ϴ� �׼��� �ִٸ�, primise�� �̿� -->
	<script type="text/javascript">
	$( "button" ).on( "click", function() {
	  	$( "p" ).append( "Started..." );
	
	  	$( "div" ).each(function( i ) {
	    	$( this ).fadeIn().fadeOut( 1000 * ( i + 1 ) );
	  	});
	
	  	$( "div" ).promise().done(function() {
	    	$( "p" ).append( " Finished! " );
	  	});
	});
	</script>

</body>
</html>