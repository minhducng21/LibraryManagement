<!--#include file="connect.asp"-->
<%
manxb = Request("id")
    sql = "update NXB set TinhTrang = 0 where MaNXB = " & manxb
    conn.execute (sql)
    response.redirect("publication_view.asp")
conn.close
%>
