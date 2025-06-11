<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/dbdStatus/resources/css/main.css">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
	integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
	crossorigin="anonymous"></script>
<title>${appName}</title>
</head>
<body>
	<h1>${appName}</h1>
	<div id="loginDialog">
		<div class="conf">
			<form action="/dbdStatus/login" name="loginform" method="post">
				<div class="dialogHeader">
					<span>ログイン</span>
				</div>
				<div class="dialogContents">
					<p>
						<label>ユーザーID</label><br> <input type="text" name="loginUserId"/>
					</p>
				</div>
				<div class="dialogFooter">
					<a href="javascript:loginOk();">OK</a> <a
						href="javascript:loginClose();">キャンセル</a>
				</div>
			</form>
		</div>
	</div>
	<div id="addUserDialog">
		<div class="conf">
			<form action="/dbdStatus/addUser" name="addUserform" method="post">
				<div class="dialogHeader">
					<span>登録</span>
				</div>
				<div class="dialogContents">
					<p>
						<label>ユーザーID</label><br> <input type="text" name="addUserId"/>
					</p>
					<p>
						<label>ユーザー名</label><br> <input type="text" name="addUserName"/>
					</p>
				</div>
				<div class="dialogFooter">
					<a href="javascript:addUserOk();">OK</a> <a
						href="javascript:addUserClose();">キャンセル</a>
				</div>
			</form>
		</div>
	</div>
	<div class="content">
		<div class="">
			<div class="btn_01">
				<a href="javascript:loginClick();" class="btn_04">ログイン</a>
			</div>
			<div class="btn_01">
				<p class="addText">初回利用の方はこちら</p>
				<a href="javascript:addUserClick();" class="btn_04">登録</a>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">

	function loginOk() {
		document.loginform.submit();
	}

	function loginClose() {
		$("#loginDialog").fadeOut();
	}

	function loginClick() {
		$("#loginDialog").fadeIn();
	}

	function addUserOk() {
		document.addUserform.submit();
	}

	function addUserClose() {
		$("#addUserDialog").fadeOut();
	}

	function addUserClick() {
		$("#addUserDialog").fadeIn();
	}
</script>
</html>