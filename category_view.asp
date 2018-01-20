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
                rs.open "select * from TheLoai where TenLoai LIKE '%" & search & "%' ", conn
                %>

                <h3 align="center">Loại sách</h3>
                <center><a href="category_add.asp">Thêm loại sách</a></center>
                <form  name="f">
                    <center><input type="text" name="txtSearch" value="<%=search%>">
                    <input type="submit" value="Tìm kiếm">
                </form>
                <table align="center" border=1>
                    <tr>
                        <th>Mã loại</th>
                        <th>Tên loại</th>
                    </tr>
                    <%
                        while not rs.eof
                        if rs("TinhTrang") = 1 then
                    %>
                    <tr>
                        <td><%=rs("MaLoai")%></td>
                        <td><%=rs("TenLoai")%></td>
                        <td><a href="category_edit.asp?id=<%=rs("MaLoai")%>">Sửa</a></td>
                        <td><a href="category_delete.asp?id=<%=rs("MaLoai")%>"  Onclick="return  confirm('Bạn có chắc muốn xóa hay không?')">Xóa</a></td>
                    </tr>
                    <%
                        end if
                        rs.movenext
                        wend
                        rs.close
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