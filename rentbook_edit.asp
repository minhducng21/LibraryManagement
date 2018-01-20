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
                        id = request("id")
                        idsach = request("masach")
                        rs.open "select * from ChiTietMT where ID = " & id, conn
                    %>
                    <h3>Đăng ký mượn sách</h3>
                <form action="rentbook_edit_action.asp?id=<%=rs("ID")%>&ms1=<%=idsach%>" method="POST">
                    <table align=center>
                        <tr>
                            <td>Mã Phiếu:</td>
                            <td>
                                <select name="sltMaPhieu">
                                    
                                    <option  value="<%=rs("MaPhieu")%>"> <%=rs("MaPhieu")%> </option>
                                    
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Mã sách:</td>
                            <td>
                                <select name="sltMaSach">
                                    <%
                                        rs1.open "select * from Sach where TinhTrang = 1", conn
                                        while not rs1.eof
                                    %>
                                    <option <% if( rs1("MaSach") = rs("MaSach")) then response.write("selected")%> value="<%=rs1("MaSach")%>"> <%=rs1("TenSach")%> </option>
                                    <%
                                        rs1.movenext
                                        wend
                                        rs1.close
                                    %>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Ngày mượn:</td>
                            <td><input type="date" name="dtNgayMuon" value="<%=rs("NgayMuon")%>"></td>
                        </tr>
                        <tr>
                            <td>Ngày phải trả:</td>
                            <td><input type="date" name="dtNgayPhaiTra" value="<%=rs("NgayPhaiTra")%>"></td>
                        </tr>     
                        <tr>
                            <td>Tình trạng:</td>
                            <td><input type="checkbox" name="chkTinhTrang" value="1" <%if(rs("TinhTrang") = 1) then response.write("checked")%> > </td>
                        </tr>
                        <tr>
                            <td>Ghi chú:</td>
                            <td><input type="text" name="txtGhiChu" value="<%=rs("GhiChu")%>"></td>
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