<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="POST" action="/ASS_PH17480/cate/update?id=${cate.id}">
		<div>
			<label>Tên danh mục</label> <input type="text" name="ten" value="${cate.ten}" />
		</div>
		<div>
			<label>Người tạo</label>
			<select name="user_id">
				<c:forEach items="${ ds }" var="obj">
					<option value="${ obj.id }">
						${ obj.hoTen }
					</option>
				</c:forEach>
			</select>
		</div>
		<button>Sửa</button>
	</form>
</body>
</html>