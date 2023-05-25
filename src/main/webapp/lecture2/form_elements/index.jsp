<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.myForm {
	
}
</style>
<body>
<div class='myForm'>

		<form action="uitextarea_action.jsp" name="form1" method="post">
			<input type="text" name="text1" size="32"><br>
			<textarea name="textarea1" cols="32" rows="5"></textarea>
			<br> <input type="submit" name="submit" value="Button1">
			<input type="submit" name="submit" value="Button2"> <input
				type="submit" name="submit" value="Button3"> <input
				type="Reset" value="Clear">
		</form>
	</div>
</body>
</html>