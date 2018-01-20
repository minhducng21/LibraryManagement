<!--#include file="connect.asp"-->
<%
maphieu = request("id")
sql = "update MuonTra set TinhTrang = 0 where MaPhieu = " & maphieu
conn.execute (sql)
response.redirect("signin_view.asp")
conn.close
%>
