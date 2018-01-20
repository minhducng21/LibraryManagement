<!--#include file="connect.asp"-->
<%
masachcu = request("ms1")
id = request("ID")
maphieu = request("sltMaPhieu")
masach = request("sltMaSach")
tt = request("chkTinhTrang")
ghichu = request("txtGhiChu")
nm = request("dtNgayMuon")
npt = request("dtNgayPhaiTra")
nt = request("dtNgayTra")
if tt = false then tt = 0

sql = "update ChiTietMT set MaPhieu = " & maphieu & ", MaSach = " & masach &", NgayMuon = '"& nm &"', NgayTra = '"& nt &"', NgayPhaiTra = '"& npt &"', TinhTrang = "& tt &", GhiChu = '" & ghichu & "' where ID = " & id
conn.execute(sql)



conn.close 
response.redirect "rentbook_view.asp"
%>