<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>

<style>
body  {
  background-image: url("https://images.unsplash.com/photo-1472289065668-ce650ac443d2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80");
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
			<div class="col-md-6 offset-md-3">
				<h2 class="text-center mb-3">Change Product details</h2>

				<form action="${pageContext.request.contextPath }/handle-product" method="post">
					<input type="hidden" value="${product.id }" name="id"/>
					<!--Product Name input -->
					<div class="form-group">
						<label for="form-group">Product Name</label> <input type="text"
							class="form-control" id="name" name="name"
							placeholder="Enter updated product name here">
					</div>

					<!-- Description input -->
					<div class="form-group">
						<label for="description">Product Description</label>
						<textarea class="form-control" id="description" name="description"
							rows="5" placeholder="Enter updated product description here"></textarea>
					</div>

					<!-- Price input -->
					<div class="form-group">
						<label for="price">Product Price</label> <input type="text"
							class="form-control" id="price" name="price"
							placeholder="Enter updated product price here"
							>
					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-warning">Update</button>
					</div>

				</form>

			</div>
		</div>
	</div>



</body>
</html>