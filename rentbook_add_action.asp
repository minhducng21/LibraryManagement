<!--#include file="connect.asp"-->
<%
maphieu = request("sltMaPhieu")
masach = request("sltMaSach")
tt = request("chkTinhTrang")
ghichu = request("txtGhiChu")
npt = request("dtNgayPhaiTra")
if tt = false then tt = 0

sql = "insert into ChiTietMT(MaPhieu, MaSach, NgayMuon, NgayPhaiTra, TinhTrang, GhiChu, TT) values ("& maphieu &", "& masach &", '"& date() &"', '"& npt &"', "& tt &", '"& ghichu &"', 1)"
conn.execute(sql)

conn.close
response.redirect "rentbook_view.asp"
%>