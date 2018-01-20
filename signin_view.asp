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
<%
    search = request("txtSearch")
    rs.open "select * from MuonTra where MaPhieu LIKE '%" & search & "%'", conn
%>
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
                        <li><a  href="rentbook_view.asp">Mượn sách</a></li>
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
                <h3 align=center>Danh sách phiếu mượn</h3>
                <center><a href="signin_add.asp">Thêm phiếu</a></center>
                <form  name="f">
                    <center><input type="text" name="txtSearch" value="<%=search%>">
                    <input type="submit" value="Tìm kiếm">
                </form>
                <table align=center border=1>
                    <tr>
                        <th>Mã phiếu</th>
                        <th>Mã thẻ</th>
                        <th>Mã thủ thư</th>
                        <th>Số tiền phạt</th>
                    </tr>
                    <%
                        while not rs.eof
                        if rs("TinhTrang") = 1 then
                    %>
                    <tr>
                        <td><a href="rentbook_add.asp?id=<%=rs("MaPhieu")%>&info=0"><%=rs("MaPhieu")%></a></td>
                        <td><%=rs("MaThe")%></td>
                        <td><%=rs("MaTT")%></td>
                        <td><%=rs("SoTienPhat")%></td>
                        <td><a href="signin_edit.asp?id=<%=rs("MaPhieu")%>">Sửa</a></td>
                        <td><a href="signin_delete.asp?id=<%=rs("MaPhieu")%>"  Onclick="return  confirm('Bạn có chắc muốn xóa hay không?')">Xóa</a></td>    
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