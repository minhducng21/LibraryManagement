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
                <%
                maNXB = request("id")
                rs.open "select * from NXB where MaNXB =  " & maNXB, conn
                %>

                <h3>Thêm mới nhà xuất bản</h3>
                <form action="./publication_edit_action.asp?id=<%=rs("MaNXB")%>" method="post">
                    <table align=center>
                        <tr>
                            <td>Tên NXB:</td>
                            <td><input type="text" name="txtTenNXB" value="<%=rs("TenNXB")%>"></td>
                        </tr>
                        <tr>
                            <td>Địa chỉ:</td>
                            <td><input type="text" name="txtDiaChi" value="<%=rs("DiaChi")%>"></td>
                        </tr>
                        <tr>
                            <td>Fax:</td>
                            <td><input type="text" name="txtFax" value="<%=rs("Fax")%>"></td>
                        </tr>
                        <tr>
                            <td>Tình Trạng:</td>
                            <td><input type="checkbox" name="chkTinhTrang" value="1" <% if(rs("TinhTrang") = 1) then response.write("checked") %> ></td>
                        </tr>
                        <tr>
                            <td align="right" colspan = 2>
                                <input type="submit" value="Sửa">
                                <input type="reset" value="Hủy">
                            </td>
                        </tr>
                    </table>
			</div>
		</div>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>