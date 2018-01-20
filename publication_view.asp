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
                search = request("txtSearch")
                rs.open "select * from NXB where TenNXB LIKE '%" & search & "%' ", conn
                %>

                <h3 align="center">Nhà xuất bản</h3>
                <center><a href="./publication_add.asp">Thêm nhà xuất bản</a></center>
                <form  name="f">
                    <center><input type="text" name="txtSearch" value="<%=search%>">
                    <input type="submit" value="Tìm kiếm">
                </form>
                <table align="center" border=1>
                    <tr>
                        <th>Mã NXB</th>
                        <th>Tên NXB</th>
                        <th>Địa chỉ</th>
                        <th>Fax</th>
                    </tr>
                    <%
                        while not rs.eof
                        if (rs("TinhTrang") = 1) then
                    %>
                    <tr>
                        <td><%=rs("MaNXB")%></td>
                        <td><%=rs("TenNXB")%></td>
                        <td><%=rs("DiaChi")%></td>
                        <td><%=rs("Fax")%></td>
                        
                        <td><a href="publication_edit.asp?id=<%=rs("MaNXB")%>">Sửa</a></td>
                        <td><a href="publication_delete.asp?id=<%=rs("MaNXB")%>"  Onclick="return  confirm('Bạn có chắc muốn xóa hay không?')">Xóa</a></td>
                    </tr>
                    <%
                        end if
                        rs.movenext
                        wend
                        conn.close
                    %>
                </table>
			</div>
		</div>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="scripts/script.js"></script>
</body>
</html>