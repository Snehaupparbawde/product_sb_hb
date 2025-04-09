<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product Management Home</title>


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

p {
	font-size: 1.2em;
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

/* Responsive Styles */
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
	.container h2 {
		font-size: 1.5em;
	}
	.container p {
		font-size: 1em;
	}
}

@media ( max-width : 480px) {
	body {
		font-size: 14px;
	}
	header {
		padding: 5px 0;
	}
	nav {
		padding: 5px;
	}
	.container {
		padding: 15px;
	}
	.nav-list a {
		font-size: 14px;
	}
	header .logo {
		font-size: 1.2em;
	}
	h2 {
		font-size: 1.2em;
	}
	p {
		font-size: 0.9em;
	}
}
</style>
</head>
<body>

	<jsp:include page="header.jsp" />

	<div class="container">
		<h2>Welcome to the Product Management Home Page</h2>
		<p>Manage your products with ease and explore our features!</p>
	</div>

	<jsp:include page="footer.jsp" />

</body>
</html>
