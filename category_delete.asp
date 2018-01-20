<!--#include file="connect.asp"-->
<%
maloai = Request("id")
sql = "update TheLoai set TinhTrang = 0 where MaLoai = " & maloai
conn.execute (sql)
response.redirect("category_view.asp")
conn.close
%>
