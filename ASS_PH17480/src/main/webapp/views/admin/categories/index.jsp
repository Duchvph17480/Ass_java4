<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:if test="${empty ds}">
	<p class="alert alert-warning">Không có dữ liệu</p>
</c:if>
<a class="btn btn-success" href="/ASS_PH17480/cate/create">Them moi
</a>
<c:if test="${!empty ds}">
	<table class="table table-success table-striped">
		<thead>
			<th>Tên Danh Mục</th>
			<th>Người Tạo</th>
			<th>Thao Tac</th>
		</thead>
		<tbody>
			<c:forEach items="${ ds }" var="obj">
				<tr>
					<td>${obj.ten }</td>
					<td>${obj.user.hoTen }</td>
					<td><a class="btn btn-danger"
						href="/ASS_PH17480/cate/delete?id=${obj.id}">Xóa</a></td>
					<td><a class="btn btn-danger"
						href="/ASS_PH17480/cate/edit?id=${obj.id}">Cập nhập</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</c:if>