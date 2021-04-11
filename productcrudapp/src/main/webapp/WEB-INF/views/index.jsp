<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>

<style>
body  {
  background-image: url("https://images.unsplash.com/photo-1508172819040-536e3f54970f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80");
  background-color: #cccccc;
  height: 500px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
</style>

<body>
	<div class="container mt-5">

		<div class="row">

			<div class="col-md-12">

				<h1 class="text-center">Welcome to Product App</h1>

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${products }" var="p">
							<tr>
								<th scope="row">TECHMS${p.id }</th>
								<td>${p.name }</td>
								<td>${p.description }</td>
								<td>&#x20B9; ${p.price }</td>
								<td>
								<a href="delete/${p.id }"><i class="fas fa-trash text-danger" style="font-size: 25px;"></i></a>
								<a href="update/${p.id }"><i class="fas fa-edit" style="font-size: 25px;"></i></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div class="container text-center">
					<a href="add_product" class="btn btn-outline-success">Add
						Product</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
