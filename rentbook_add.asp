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
				<div id="ele">
                    <%
                    info = request("info")
                    if info = 0 then
                        maphieu = request("id")
                    else
                        masach = request("id")
                    end if
                    %>
                    <h3>Đăng ký mượn sách</h3>
                <form action="rentbook_add_action.asp?" method="POST">
                    <table align=center>
                        <tr>
                            <td>Mã Phiếu:</td>
                            <td>
                                <select name="sltMaPhieu">
                                    <%
                                        if maphieu = 0 then
                                            rs.open "select * from MuonTra where TinhTrang = 1", conn
                                            while not rs.eof
                                    %>
                                    <option value="<%=rs("MaPhieu")%>"> <%=rs("MaPhieu")%> </option>
                                    <%
                                        rs.movenext
                                        wend
                                        rs.close
                                        else
                                            rs.open "select * from MuonTra where MaPhieu = "& maphieu, conn
                                    %>
                                    <option value="<%=rs("MaPhieu")%>"> <%=rs("MaPhieu")%> </option>
                                    <%         
                                        rs.close
                                        end if
                                    %>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Mã sách:</td>
                            <td>
                                <select name="sltMaSach">
                                    <%
                                        if masach = 0 then
                                            rs.open "select * from Sach where TinhTrang = 1", conn
                                            while not rs.eof
                                    %>
                                    <option value="<%=rs("MaSach")%>"> <%=rs("TenSach")%> </option>
                                    <%
                                        rs.movenext
                                        wend
                                        rs.close                    
                                        else
                                            rs.open "select * from Sach where MaSach = " & masach, conn
                                        
                                    %>
                                    <option value="<%=rs("MaSach")%>"> <%=rs("TenSach")%> </option>
                                    <%
                                        rs.close
                                        end if
                                    %>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Ngày phải trả:</td>
                            <td><input type="date" name="dtNgayPhaiTra"></td>
                        </tr>                     
                        <tr>
                            <td>Tình trạng:</td>
                            <td><input type="checkbox" name="chkTinhTrang" value="1" checked></td>
                        </tr>
                        <tr>
                            <td>Ghi chú:</td>
                            <td><input type="text" name="txtGhiChu"></td>
                        </tr>
                        <tr>
                            <td colspan="2" align=center>
                                <input type="submit" value="Tạo mới">
                                <input type="reset" value="Hủy">
                            </td>
                        </tr>
                    </table>
                </form>
                </div>
			</div>
		</div>
	</div>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="scripts/script.js"></script>
</body>
</html>