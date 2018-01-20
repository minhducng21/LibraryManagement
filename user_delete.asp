<!--#include file="connect.asp"-->
<%
    mathe = request("id")
    sql = "update DocGia set TinhTrang = 0 where MaThe = " & mathe
    conn.execute(sql)
    conn.close
    response.redirect("user_view.asp")

%>