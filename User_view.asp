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
    dem = 1
    if Session("username1") = "admin" and dem = 1 then
    response.redirect("manager_view.asp")
    dem = 0
    end if
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
                rs.open "select * from DocGia where HoTen LIKE '%" & search & "%' ", conn
                'if Session("user1") = "admin" then
                %>

                <h3 align=center>Độc giả</h3>
                <center><a href="./user_add.asp">Thêm độc giả</a></center>
                <form  name="f">
                    <center><input type="text" name="txtSearch" value="<%=search%>">
                    <input type="submit" value="Tìm kiếm">
                </form>
                <table align=center border=1>
                    <tr>
                        <th>Mã thẻ</th>
                        <th>Họ tên</th>
                        <th>Ngày sinh</th>
                        <th>Lớp quản lý</th>
                        <th>CMND</th>
                        <th>Ngày cấp</th>
                    </tr>
                    <%
                        while not rs.eof
                        if rs("TinhTrang") = 1 then
                    %>
                    <tr>
                        <td><a href="signin_add.asp?id=<%=rs("MaThe")%>"><%=rs("MaThe")%></a></td>
                        <td><%=rs("HoTen")%></td>
                        <td><%=rs("NgaySinh")%></td>
                        <td><%=rs("LopQuanLy")%></td>
                        <td><%=rs("CMND")%></td>
                        <td><%=rs("NgayCap")%></td>
                        <td><a href="user_edit.asp?id=<%=rs("MaThe")%>">Sửa</a></td>
                        <td><a href="user_delete.asp?id=<%=rs("MaThe")%>"  Onclick="return  confirm('Bạn có chắc muốn xóa hay không?')">Xóa</a></td>
                    </tr>
                    <%
                        end if
                        rs.movenext
                        wend
                      ' else response.write("KHong co quyen")
                       ' end if
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