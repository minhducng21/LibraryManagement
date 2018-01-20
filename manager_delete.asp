<!--#include file="connect.asp"-->

<%
    matt = request("id")
    sql = "delete from ThuThu where MaTT = " & MaTT
    conn.execute(sql)
    conn.close
    response.redirect("manager_view.asp")
%>