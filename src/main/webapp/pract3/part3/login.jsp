<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.tailwindcss.com"></script>
<link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.6/dist/full.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.tailwindcss.com"></script>
<!--
Author: Elliott Chong Zhi Sheng
Class: DIT/2B/21
Student Id: 22115545
-->

<%
String errCode = request.getParameter("errCode");
if (errCode == null) {
	errCode = "";
}
if (errCode.equals("invalidLogin")) {
	errCode = "You have entered an invalid ID/Password";
}
%>
</head>
<body>
	<div class='absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2'>
	<h6 class='text-xl text-red-600'><%= errCode %></h6>
		<form method="post" action='verifyUser.jsp' class="flex flex-col gap-4">
			<div>
				<label for='loginid'>Login ID</label> <input id='loginid' class="input input-bordered w-full max-w-xs"
					type="text" name="loginid"/>
			</div>
			<div>
				<label for='password'>Password</label> <input type="password" class="input input-bordered w-full max-w-xs"
					id='password' name="password" type='password'/>
			</div>
			<button class='btn' type="submit" name="btnSubmit">Login</button>
			<button  class='btn' type="reset">Reset</button>

		</form>
	</div>
</body>
</html>