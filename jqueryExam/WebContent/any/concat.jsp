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

	<script type="text/javascript">
	var shiri = {name : '����', year : '1998'};
	var oldboy = {name : '�õ庸��', year : '2003'};
	var arr1 = [];
	var arr2 = new Array();
	arr1.push(shiri);
	arr2.push(oldboy);
	
	// concat �� �迭�� �����͸� ���ļ� ���ο� �迭�� �����. 
	console.log(arr1.concat(arr2));
	var arr3 = arr1.concat(arr2);
	$(arr3).each(function(index, element){
		alert('name : ' + element.name + ' / ' + 'year : ' + element.year);
	});
	</script>

</body>
</html>