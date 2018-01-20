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
			</div>
			<div class="col-lg-12">
                <div class="row">
                        <h3 align=center>Đăng nhập</h3>
                    <div class="col-lg-offset-5">
                       
                        <form action="login_action.asp" method="post" >
                            <table>
                                <tr>
                                    <td>Tài khoản:</td>
                                    <td><input type="text" name="txtUser"></td>
                                </tr>
                                <tr>
                                    <td>Mật khẩu:</td>
                                    <td><input type="password" name="txtPass"></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <input type="submit" value="Đăng nhập">
                                        <input type="reset" value="Hủy">
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
			</div>
		</div>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="scripts/script.js"></script>
</body>
</html>