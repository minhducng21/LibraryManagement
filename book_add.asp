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
                        <li><a  href="signin_view.asp">DS phiếu mượn </a></li>
                        <li><a  href="rentbook_view.asp">Mượn sách</a></li>
                        <li><a id="load-pub" href="publication_view.asp">Nhà xuất bản</a></li>
                        <li><a id="load-cate" href="category_view.asp">Thể loại</a></li>
                        <li><a id="load-book" href="book_view.asp">Sách</a></li>
                        <li><a id="load-data" href="user_view.asp">Độc giả</a></li>
                        <li><a id="load-data" href="logout.asp">Đăng xuất</a></li>
                    </ul>
				</div>
			</div>
			<div class="col-lg-9">
				<h3>Thêm mới sách</h3>
                <form action="book_add_action.asp" method="POST">
                    <table align="center" cellspacing=10px> 
                        <tr>
                            <td>Tên sách:</td>
                            <td><input type="text" name="txtTenSach"></td>
                        </tr>
                        <tr>
                            <td>Tác giả:</td>
                            <td><input type="text" name="txtTacGia"></td>
                        </tr>
                        <tr>
                            <td>Giá:</td>
                            <td><input type="text" name="txtGia"></td>
                        </tr>
                        <tr>
                            <td>Số Lượng:</td>
                            <td><input type="text" name="txtSoLuong"></td>
                        </tr>
                        <tr>
                            <td>Mã loại:</td>
                            <td>
                                <select name="sltMaLoai">
                                    <%
                                        rs.open "select * from TheLoai where TinhTrang = 1", conn
                                        while not rs.eof
                                    %>
                                    <option value="<%=rs("MaLoai")%>"><%=rs("TenLoai")%></option>
                                    <%
                                        rs.movenext
                                        wend
                                        rs.close
                                    %>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Mã NXB:</td>
                            <td>
                                <select name="sltMaNXB">
                                    <%
                                        rs.open "select * from NXB where TinhTrang = 1", conn
                                        while not rs.eof
                                    %>
                                    <option value="<%=rs("MaNXB")%>"> <%=rs("TenNXB")%> </option>
                                    <%
                                        rs.movenext
                                        wend
                                        conn.close
                                    %>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Tình trang:</td>
                            <td><input type="checkbox" value="1" checked name="chkTinhTrang"></td>
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