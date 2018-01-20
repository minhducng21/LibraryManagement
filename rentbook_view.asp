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
                rs.open "select * from ChiTietMT where MaPhieu LIKE '%" & search & "%' ", conn
                %>

                <h3 align=center>Mượn sách</h3>
                <center><a href="rentbook_add.asp">Mượn sách</a></center>
                <form name="f">
                    <center><input type="text" name="txtSearch" value="<%=search%>">
                    <input type="submit" value="Tìm kiếm">
                </form>
                <table align=center border="1">
                    <tr>
                        <th>Mã phiếu</th>
                        <th>Sách</th>
                        <th>Ngày mượn</th>
                        <th>Ngày phải trả</th>
                        <th>Ngày trả</th>
                        <th>Tình trạng</th>
                        <th>Ghi chú</th>
                    </tr>
                    <%
                        while not rs.eof
                        if rs("TT") = 1 then
                    %>
                    <tr>
                        <td><%=rs("MaPhieu")%></td>
                        <td>
                            <% 
                                rs1.open "select * from Sach", conn
                                while not rs1.eof
                            %>
                            <%if(rs1("MaSach")=rs("MaSach")) then response.write(rs1("TenSach"))%>
                            <%
                                rs1.movenext
                                wend
                                rs1.close
                            %>
                        </td>
                        <td><%=rs("NgayMuon")%></td>
                        <td><%=rs("NgayPhaiTra")%></td>
                        <td>
                            <input type="checkbox" <%if rs("TinhTrang") = 1 then response.write("checked")%> disabled>
                        </td>
                        <td><%=rs("GhiChu")%></td> 
                        <td><a href="rentbook_edit.asp?id=<%=rs("ID")%>&masach=<%=rs("MaSach")%>">Sửa</a></td>
                        <td><a href="rentbook_delete.asp?id=<%=rs("ID")%>" Onclick="return  confirm('Bạn có chắc muốn xóa hay không?')"   >Xóa</a></td>
                        <td><a href="returnbook.asp?id=<%=rs("ID")%>&masach=<%=rs("MaSach")%>">Trả sách</a></td>
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