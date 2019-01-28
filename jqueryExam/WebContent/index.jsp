<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>

	<input type="text" name="kName" id="name" style="ime-mode:active;">
	
	<c:set var = "string1" value = "This is first String."/>
    <c:set var = "string2" value = "${fn:split(string1, ' ')}" />
    
    <!-- array요소들을 separator를 구분자로 하여 연결해서 반환 -->
    <c:set var = "string3" value = "${fn:join(string2, '-')}" />
    
    <c:set var = "string4" value = "This <abc>is second String.</abc>"/>
    
    <p>Final String : ${string3}</p>
    
    <p>Index (1) : ${fn:indexOf(string1, "first")}</p>
    <p>Index (2) : ${fn:indexOf(string4, "second")}</p>
    
    <c:set var = "theString" value = "I am a test String"/>
	
	<!-- 
	fn:contains(string, sbustring)
	string이 substring을 포함하면 return true 반환

	fn:containsIgnoreCase(string, sbustring)
	대소문자 관계없이 string이 substring을 포함하면 return true 반환
	-->
	
	<c:if test = "${fn:contains(theString, 'test')}">
		<p>Found test string<p>
	</c:if>
	
	<c:if test = "${fn:contains(theString, 'TEST')}">
		<p>Found TEST string<p>
	</c:if>
	
   	<c:if test = "${fn:containsIgnoreCase(theString, 'test')}">
      	<p>Found test string<p>
   	</c:if>

   	<c:if test = "${fn:containsIgnoreCase(theString, 'TEST')}">
      	<p>Found TEST string<p>
   	</c:if>
    

	<script type="text/javascript">
	
		//--- /\s[^(ㄱ-힣a-zA-Z0-9)]/g
		//--- /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi
		function allCheck() {
			
			var pattern = /[|*#]/gi;
			
			if (pattern.test(document.getElementById('name').value)) { 
				return true; 
			}
			
			document.getElementById('name').value = ''; 
			document.getElementById('name').focus();
			return false;
		}
		
		function inputCheck() {
			
			if(allCheck())
				alert('성공');
			else {
				alert('실패');
				return;				
			}
			
		}
		
	</script>
	
	<button name="btn1" onclick="inputCheck();">[확인]</button>
	
</body>
</html>