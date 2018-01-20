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
    matt = request("id")
    rs.open "select * from ThuThu where matt = " & MaTT, conn
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
                    <h3>Sửa thông tin thủ thư</h3>
                <form action="manager_edit_action.asp?id=<%=rs("MaTT")%>" method="POST">
                    <table>
                        <tr>
                            <td>Họ tên:</td>
                            <td><input type="text" name="txtHoTen" value="<%=rs("TenTT")%>"></td>
                        </tr>
                        <tr>
                            <td>Địa chỉ:</td>
                            <td><input type="text" name="txtDiaChi" value="<%=rs("DiaChi")%>"></td>
                        </tr>
                        <tr>
                            <td>Điện thoại:</td>
                            <td><input type="text" name="txtSDT" value="<%=rs("SDT")%>"></td>
                        </tr>
                        <tr>
                            <td>CMND:</td>
                            <td><input type="text" name="txtCMND" value="<%=rs("CMND")%>"></td>
                        </tr>
                        <tr>
                            <td>Tên đăng nhập:</td>
                            <td>
                                <select name="sltTenDN">
                                    <%
                                        rs1.open "select * from DangNhap", conn
                                        while not rs1.eof
                                    %>
                                    <option <% if (rs("TenDN")=rs1("TenDN")) then response.write("selected")%> value="<%=rs1("TenDN")%>"> <%=rs1("TenDN")%> </option>
                                    <%
                                        rs1.movenext
                                        wend
                                        rs1.close
                                        conn.close
                                    %>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" colspan = 2>
                                <input type="submit" value="Tạo mới">
                                <input type="reset" value="Hủy">
                            </td>
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