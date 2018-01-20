<!--#include file="connect.asp"-->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Default</title>
	<link rel="stylesheet" type="text/css" href="styles/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="styles/site.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<img class="banner" src="imgs/banner.jpg">
			</div>
		</div>
		<div class="row">
			<div class="col-lg-3">
				<div class="menu">
					<ul>
						<li><a href="">Trang chủ</a></li>
						<li><a id="load-rentbook"  href="#">Mượn sách</a></li>
						<li><a id="load-pub" href="#">Nhà xuất bản</a></li>
						<li><a id="load-cate" href="../views/category_view.asp">Thể loại</a></li>
						<li><a id="load-book" href="../views/book_view.asp">Sách</a></li>
						<li><a id="load-data" href="">Liên hệ</a></li>
						<li><a id="load-data" href="">Đăng xuất</a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-9">
				<div id="ele"></div>
			</div>
		</div>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="scripts/script.js"></script>
</body>
</html>