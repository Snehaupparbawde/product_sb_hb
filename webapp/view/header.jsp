<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<header>
	<div class="logo">My Product Store</div>
</header>


<nav>
	<ul class="nav-list">
		<li><a href="/">Home</a></li>
		<li><a href="/add-product">Add Product</a></li>
		<li><a href="/update-product">Update Product</a></li>
		<li><a href="/delete-product">Delete Product</a></li>
		<li><a href="/view-product">View Product</a></li>
		<li><a href="/product-list">Product List</a></li>
	</ul>
</nav>


<style>
/* General Styles */
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

header {
	background-color: #333;
	color: white;
	text-align: center;
	padding: 10px 0;
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

@media ( max-width : 768px) {
	.nav-list {
		flex-direction: column;
		align-items: center;
	}
	.nav-list li {
		margin: 10px 0;
	}
	header .logo {
		font-size: 1.5em;
	}
	.nav-list a {
		font-size: 16px;
	}
}

@media ( max-width : 480px) {
	body {
		font-size: 14px;
	}
	header {
		padding: 5px 0;
	}
	nav { <header > <div class="logo">My Product Management</div> <nav> <ul
		class="nav-list"> <li><a href="/">Home</a></li> <li><a
		href="/open-login-page">Log In</a></li> <li><a
		href="/get-product">User Details</a></li> <li><a
		href="/get-product-list">User List</a></li> <li><a
		href="/add-product">Add Product</a></li> <li><a
		href="/update-product">Update Product</a></li> <li><a
		href="/delete-product">Delete Product</a></li> <li><a
		href="/product-list">Product List</a></li> </ul> </nav> </header>
		padding:5px;
		
	}
	.nav-list a {
		font-size: 14px;
	}
	header .logo {
		font-size: 1.2em;
	}
}
</style>
