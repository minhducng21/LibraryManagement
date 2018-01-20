
<!--#include file="connect.asp"-->
<%
session.codepage=65001
tenSach = Request.Form("txtTenSach")
tacGia = Request.Form("txtTacGia")
gia = Request.Form("txtGia")
soLuong = Request.Form("txtSoLuong")
maLoai = Request.Form("sltMaLoai")
maNXB = Request.Form("sltMaNXB")
tt= request("chkTinhTrang")
if tt = false then tt = 0

sql = "insert into Sach(TenSach, TacGia, Gia, SoLuong, MaLoai, MaNXB, TinhTrang) values (N'" & tenSach & "', N'" & tacGia & "', " & gia & ", " & soLuong & ", " & maLoai & ", " & maNXB & ", "& tt &")"

conn.execute (sql)
conn.close
response.redirect "book_view.asp"

%>