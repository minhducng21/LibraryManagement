<!--#include file="connect.asp"-->
<%
    id = request("id")

    sql = "update ChiTietMT set NgayTra = '" & date() &"', TinhTrang = 0 where ID = " & id
    conn.execute sql
    conn.close
    response.redirect "rentbook_view.asp"
%>
