<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View Product</title>

<!-- Internal CSS for responsive design -->
<style>
/* General Styles (same as in addProduct.jsp) */
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

header {
	background-color: #333;
	color: white;
	padding: 10px;
	text-align: center;
}

header .logo {
	font-size: 1.8em;
	font-weight: bold;
}

nav {
	background-color: #444;
	padding: 10px;
}

.nav-list {
	list-style-type: none;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
}

.nav-list li {
	margin: 0 15px;
}

.nav-list a {
	text-decoration: none;
	color: white;
	font-size: 18px;
	transition: color 0.3s;
}

.nav-list a:hover {
	color: #ff6347; /* Tomato color on hover */
	text-decoration: underline;
}

.container {
	padding: 20px;
	text-align: center;
}

h2 {
	font-size: 2em;
	margin-bottom: 10px;
}

.product-details {
	display: inline-block;
	padding: 20px;
	text-align: left;
}

.product-details p {
	font-size: 1.2em;
	margin: 10px 0;
}

footer {
	background-color: #333;
	color: white;
	text-align: center;
	padding: 10px 0;
	position: fixed;
	bottom: 0;
	width: 100%;
}

/* Responsive Styles (same as in addProduct.jsp) */
@media ( max-width : 768px) {
	.container h2 {
		font-size: 1.5em;
	}
	.container p {
		font-size: 1em;
	}
	.product-details p {
		font-size: 1.2em;
	}
}
</style>
</head>
<body>

	<!-- Including Header -->
	<jsp:include page="header.jsp" />

	<!-- View Product Details -->
	<div class="container">
		<h2>Product Details</h2>
		<div class="product-details">
			<p>
				<strong>Product Name:</strong> ${product.pname}
			</p>
			<p>
				<strong>Product Price:</strong> ${product.price}
			</p>
			<p>
				<strong>Product Description:</strong> ${product.description}
			</p>
		</div>
	</div>

	<!-- Including Footer -->
	<jsp:include page="footer.jsp" />

</body>
</html>
