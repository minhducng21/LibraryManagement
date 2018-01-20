<!--#include file="connect.asp"-->
<%
id = request("id")
masach = request("ms")
sql = "update ChiTietMT set TT = 0 where ID = " & id
conn.execute (sql)

'rs.open "select * from Sach where MaSach = " & masach, conn
'sl = rs("SoLuong") + 1
'sql1 = "update Sach set SoLuong = " & sl & " where MaSach = " & masach
'conn.execute(sql1)

conn.close
response.redirect("rentbook_view.asp")
%>
