<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX</title>
<script type="text/javascript">
	var xmlhttp;
	function validate() {
		var userName = document.getElementById("userName").value;
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		//使用Get的请求方式
		xmlhttp.open("GET", "/AJAX/A1?userName=" + userName, true);
		xmlhttp.onreadystatechange = callback;
		xmlhttp.send();
	} 
	function callback(){
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			var message = xmlhttp.responseText;
			document.getElementById("message").innerHTML = message;
		}
	}
</script>
</head>
<body>
	<input type="text" id="userName" onblur="validate()"><span id="message"></span>
</body>
</html>