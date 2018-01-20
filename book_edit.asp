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
                maSach = request("id")
                rs.open "select * from Sach where MaSach = " & maSach, conn
                %>

                <h3>Sửa sách</h3>
                <form action="book_edit_action.asp?id=<%=rs("MaSach")%>" method="POST">
                    <table align="center" cellspacing=10px> 
                        <tr>
                            <td>Tên sách:</td>
                            <td>
                                <input type="text" name="txtSach" value="<%=rs("TenSach")%>">
                            </td>
                        </tr>
                        <tr>
                            <td>Tác giả:</td>
                            <td><input type="text" name="txtTacGia" value="<%=rs("TacGia")%>"></td>
                        </tr>
                        <tr>
                            <td>Giá:</td>
                            <td><input type="text" name="txtGia" value="<%=rs("Gia")%>"></td>
                        </tr>
                        <tr>
                            <td>Số Lượng:</td>
                            <td><input type="text" name="txtSoLuong" value="<%=rs("SoLuong")%>"></td>
                        </tr>
                        <tr>
                            <td>Mã loại:</td>
                            <td>
                                <select name="sltMaLoai">
                                    <%
                                        rs1.open "select * from TheLoai", conn
                                        while not rs1.eof
                                    %>
                                    <option <% if(rs("MaLoai") = rs1("MaLoai")) then response.write("selected")%> value="<%=rs1("MaLoai")%>" > <%=rs1("TenLoai")%></option>
                                    <%
                                        rs1.movenext
                                        wend
                                        rs1.close
                                    %>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Mã NXB:</td>
                            <td>
                                <select name="sltMaNXB">
                                    <%
                                        rs1.open "select * from NXB", conn
                                        while not rs1.eof
                                    %>
                                    <option <% if(rs("MaNXB") = rs1("MaNXB")) then response.write("selected")%> value="<%=rs1("MaNXB")%>" > <%=rs1("TenNXB")%> </option>
                                    <%
                                        rs1.movenext
                                        wend
                                    %>
                                </select>
                            </td>
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
                        <%
                            rs.close
                            conn.close
                        %>
                    </table>
                </form>
			</div>
		</div>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="scripts/script.js"></script>
</body>
</html>