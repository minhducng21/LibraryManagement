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
						<li><a id="load-rentbook"  href="rentbook_view.asp">Mượn sách</a></li>
                        <li><a  href="signin_view.asp">DS phiếu mượn </a></li>
						<li><a id="load-pub" href="publication_view.asp">Nhà xuất bản</a></li>
						<li><a id="load-cate" href="category_view.asp">Thể loại</a></li>
						<li><a id="load-book" href="book_view.asp">Sách</a></li>
						<li><a id="load-data" href="user_view.asp">Độc giả</a></li>
						<li><a id="load-data" href="logout.asp">Đăng xuất</a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-9">
                <h3>tạo tài khoản</h3>
                <form action="taikhoan_action.asp" method="post">
                    <table align=center>
                        <tr>
                            <td>Tên đăng nhập:</td>
                            <td><input type="text" name="txtUser"></td>
                        </tr>
                        <tr>
                            <td>Mật khẩu:</td>
                            <td><input type="password" name="txtPass"></td>
                        </tr>
                        <tr>
                            <td>Quyền:</td>
                            <td>
                                <select name="sltQuyen">
                                    <option value="admin">Admin</option>
                                    <option value="tt">Nhân viên</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Tạo mới"></td>
                            <td><input type="reset" value="Hủy"></td>
                        </tr>
                    </table>
                </form>
			</div>
		</div>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="scripts/script.js"></script>
</body>
</html>