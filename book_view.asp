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
                rs.open "select * from Sach where TenSach LIKE '%" & search & "%' ", conn
                'if not rs.eof then
                %>

                <h3 align=center>Danh sách</h3>
                <center><a href="./book_add.asp">Thêm sách</a></center>
                <form  name="f">
                    <center><input type="text" name="txtSearch" value="<%=search%>">
                    <input type="submit" value="Tìm kiếm">
                </form>
                <table border=1 align=center>
                    <tr>
                        <th>Mã sách</th>
                        <th>Tên sách</th>
                        <th>Tác giả</th>
                        <th>Giá</th>
                        <th>Số lượng</th>
                        <th>Mã loại</th>
                        <th>Mã nhà xuất bản</th>
                    </tr>
                <%
                    while not rs.eof
                    if rs("TinhTrang") = 1 then
                %>
                    <tr>
                        <td><%=rs("MaSach")%></td>
                        <td><a href="rentbook_add.asp?id=<%=rs("MaSach")%>&info=1"><%=rs("TenSach")%></a></td>
                        <td><%=rs("TacGia")%></td>
                        <td><%=rs("Gia")%></td>
                        <td><%=rs("SoLuong")%></td>
                        <td><%=rs("MaLoai")%></td>
                        <td><%=rs("MaNXB")%></td>
                        <td><a href="book_edit.asp?id=<%=rs("MaSach")%>">Sửa</a></td>
                        <td><a href="book_delete.asp?id=<%=rs("MaSach")%>"  Onclick="return  confirm('Bạn có chắc muốn xóa hay không?')">Xóa</a></td>
                    </tr>
                    
                <%
                    end if
                    rs.movenext
                    wend
                    rs.close
                    conn.close
                %>
                    
                </table>
                <%
                    'else
                    '    response.write("Khong co du lieu")
                    'end if
                %>
			</div>
		</div>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="scripts/script.js"></script>
</body>
</html>