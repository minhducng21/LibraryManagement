<!--#include file="./connect.asp"-->
<%
maLoai = request("id")
tenloai = request("txtTenLoai")
tt = request("chkTinhTrang")
if tt = false then tt = 0
sql = "update TheLoai set TenLoai = '" & tenloai & "', TinhTrang = "& tt &" where MaLoai = " & maLoai
conn.execute (sql)
conn.close
response.redirect "category_view.asp"
%>