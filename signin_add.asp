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
    mathe = request("id")
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
                    <h3>Đăng ký mượn sách</h3>
                    <form action="signin_add_action.asp" method="POST">
                        <table align=center >
                            <tr>
                                <td>Họ tên:</td>
                                <td>
                                    <select name="sltMaThe">
                                        <%
                                        if mathe = 0 then
                                        rs.open "select * from DocGia where TinhTrang = 1", conn
                                        while not rs.eof
                                        %>
                                        <option value="<%=rs("MaThe")%>"> <%=rs("HoTen")%> </option>
                                        <%
                                            rs.movenext
                                            wend
                                            rs.close
                                            else
                                            rs.open "select * from DocGia where MaThe = " & mathe, conn
                                        %>
                                        <option value="<%=rs("MaThe")%>"><%=rs("HoTen")%></option>
                                        <%
                                            rs.close
                                            end if
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
                                        <option value="<%=rs("MaTT")%>"> <%=rs("TenTT")%> </option>
                                        <%
                                            rs.movenext
                                            wend
                                            rs.close
                                            conn.close
                                        %>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Tình trạng:</td>
                                <td><input type="checkbox" name="chkTinhTrang" value="1" checked></td>
                            </tr>
                            <tr>
                                <td colspan=2 align=right>
                                    <input type="submit" value="Tạo mới">
                                    <input type="reset" value="Hủy">
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