<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 style="text-align: center; color: red;">Quản lý Product</h1>
	<form action="/Assignment/Product/store" method="POST">
		<div class="form-group ms-4">
			<label>Tên sản phẩm </label> <input type="text" class="form-control"
				name="ten" />
		</div>
		<div class="form-group ms-4">
			<label>Thể loại</label> <select class="form-control"
				name="categoryId">
				<c:forEach items="${ ListTen }" var="obj">
					<option value="${obj.id }">${ obj.ten }</option>
				</c:forEach>
			</select>
		</div>
		<div class="form-group ms-4">
			<label>Đơn giá</label> <input type="text" class="form-control"
				name="donGia" />
		</div>
		<div class="form-group ms-4">
			<label>Kích thước</label> <input type="text" class="form-control"
				name="kichThuoc" />
		</div>
		<div class="form-group ms-4">
			<label>Màu sắc</label> <input type="text" class="form-control"
				name="mauSac" />
		</div>
		<div class="form-group ms-4">
			<label>Số lượng</label> <input type="text" class="form-control"
				name="soLuong" />
		</div>

		<div class="form-group ms-4">
			<label for="image">Image</label> <input type="file"
				class="form-control" name="img" />
		</div>

		<div class="form-group ms-4 pt-3">
			<button class="btn btn-success">Đăng ký</button>
			<button class="btn btn-primary" type="reset">Xóa Form</button>
		</div>
	</form>
</body>
</html>