<!--#include file="connect.asp"-->
<%
session.codepage=65001
hoten = Request.Form("txtHoTen")
diachi = Request.Form("txtDiaChi")
sdt = Request.Form("txtSDT")
cmnd = Request.Form("txtCMND")
tendn = Request.Form("sltTenDN")

sql = "insert into ThuThu(TenTT, DiaChi, SDT, CMND, TenDN) values (N'" & hoten & "', N'" & diachi & "', " & sdt & ", " & cmnd & ", '" & tendn & "' )"

conn.execute (sql)
conn.close
response.redirect "manager_view.asp"
%>