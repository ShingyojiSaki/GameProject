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
<title>${appName}-試合結果登録</title>
</head>
<body>
	<div class="header">
		<h1>${appName}-試合結果登録</h1>
		<h1 class="username">${userName}</h1>
		<form action="/dbdStatus/addList/top" name="addListTopform"
			method="post">
			<a href="javascript:returnTop();" class="">戻る</a>
		</form>
	</div>
	<div class="content">
		<div class="">
			<table>
				<tr>
					<th>陣営</th>
					<td>
						<select>
							<option value="killer">キラー</option>
							<option value="survivor">サバイバー</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>使用キラー</th>
					<td></td>
				</tr>
				<tr>
					<th>マップ</th>
					<td></td>
				</tr>
				<tr>
					<th>全滅</th>
					<td></td>
				</tr>
				<tr>
					<th>サクリファイス</th>
					<td></td>
				</tr>
				<tr>
					<th>通電</th>
					<td></td>
				</tr>
				<tr>
					<th>残発電機数</th>
					<td></td>
				</tr>
				<tr>
					<th>ハッチ脱出</th>
					<td></td>
				</tr>
				<tr>
					<th>メメント</th>
					<td></td>
				</tr>
				<tr>
					<th>パーク1</th>
					<td></td>
				</tr>
				<tr>
					<th>パーク2</th>
					<td></td>
				</tr>
				<tr>
					<th>パーク3</th>
					<td></td>
				</tr>
				<tr>
					<th>パーク4</th>
					<td></td>
				</tr>
				<tr>
					<th>アドオン1</th>
					<td></td>
				</tr>
				<tr>
					<th>アドオン2</th>
					<td></td>
				</tr>
			</table>
		</div>
	</div>
</body>
<script type="text/javascript">
	function returnTop() {
		document.addListTopform.submit();
	}
</script>
</html>