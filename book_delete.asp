<!--#include file="connect.asp"-->
<%
masach = request("id")
sql = "update Sach set TinhTrang = 0 where MaSach = " & masach
conn.execute (sql)
response.redirect("book_view.asp")
conn.close
%>
