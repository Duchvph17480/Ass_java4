<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
  <c:if test="${empty ds}">
            <p class="alert alert-warning">Không có dữ liệu</p>
        </c:if>
<a class="btn btn-success" href = "/ASS_PH17480/users/create">Them moi </a>
        <c:if test="${!empty ds}">
            <table class="table table-success table-striped">
                <thead>
                    <th>Họ tên</th>
                    <th>Địa chỉ</th>
                    <th>SĐT</th>
                    <th>Email</th>
                    <th>Thao Tac</th>
                    <th></th>
                </thead>
                <tbody>
                    <c:forEach items="${ ds }" var="obj">
                        <tr>
                            <td>${obj.hoTen }</td>
                            <td>${obj.diaChi }</td>
                            <td>${obj.sdt }</td>
                            <td>${obj.email }</td>
                            <td>
                            	<a class="btn btn-info" href="/ASS_PH17480/users/edit?id=${obj.id}">Cap nhap</a>
                            </td>
                            <td>
                            	<a class="btn btn-danger" href="/ASS_PH17480/users/delete?id=${obj.id}">Xoa</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>