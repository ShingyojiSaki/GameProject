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
	<div class="header">
		<h1>${appName}</h1>
		<h1 class="username">${userName}</h1>
	</div>
	<div class="content">
		<div class="">
			<div class="btn_01">
				<form action="/dbdStatus/addList" name="addListform" method="post">
					<a href="javascript:addList();" class="btn_04">試合結果登録</a>
				</form>
			</div>
			<div class="btn_01">
				<a href="javascript:addUserClick();" class="btn_04">試合結果一覧</a>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	function addList() {
		document.addListform.submit();
	}
</script>
</html>