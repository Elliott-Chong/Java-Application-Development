<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.tailwindcss.com"></script>
<!--
Author: Elliott Chong Zhi Sheng
Class: DIT/2B/21
Student Id: 22115545
-->

<link href="https://cdn.jsdelivr.net/npm/daisyui@2.51.6/dist/full.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
	<div class='absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2'>
		<form method="post" action='verifyUser.jsp' class="flex flex-col gap-4">
			<div>
				<label for='loginid'>Login ID</label> <input id='loginid' class="input input-bordered w-full max-w-xs"
					type="text" name="loginid">
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