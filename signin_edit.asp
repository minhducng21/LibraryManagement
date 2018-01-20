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
    maphieu = request("id")
    rs1.open "select * from MuonTra where MaPhieu = " & maphieu, conn
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
                    <h3>Sửa phiếu đăng ký mượn sách</h3>
                    <form action="signin_edit_action.asp?id=<%=rs1("MaPhieu")%>" method="POST">
                        <table align=center >
                            <tr>
                                <td>Họ tên:</td>
                                <td>
                                    <select name="sltMaThe">
                                        <%
                                        rs.open "select * from DocGia where TinhTrang = 1", conn
                                        while not rs.eof
                                        %>
                                        <option <% if (rs("MaThe") = rs1("MaThe")) then response.write("selected") %>  value="<%=rs("MaThe")%>"> <%=rs("HoTen")%> </option>
                                        <%
                                            rs.movenext
                                            wend
                                            rs.close
                                        %>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Thủ thư:</td>
                                <td>
                                    <select name="sltMaTT">
                                        <%
                                        rs.open "select * from ThuThu", conn
                                        while not rs.eof
                                        %>
                                        <option <%if(rs("MaTT") = rs1("MaTT")) then response.write("selected")%> value="<%=rs("MaTT")%>"> <%=rs("TenTT")%> </option>
                                        <%
                                            rs.movenext
                                            wend
                                            rs.close
                                        %>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Số tiền phạt:</td>
                                <td><input type="text" name="txtTienPhat" value="<%=rs1("SoTienPhat")%>" ></td>
                            </tr>
                            <tr>
                                <td>Tình trạng:</td>
                                <td><input type="checkbox" name="chkTinhTrang" value="1" <%if rs1("TinhTrang") = 1  then response.write("checked")%> ></td>
                            </tr>
                            <tr>
                                <td colspan=2 align=right>
                                    <input type="submit" value="Tạo mới">
                                    <input type="reset" value="Hủy">
                                </td>
                            </tr>
                        </table>
                    </form>
                    <%
                        rs1.close
                        conn.close
                    %>
			</div>
		</div>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="scripts/script.js"></script>
</body>
</html>