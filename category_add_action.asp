<!--#include file="connect.asp"-->
<%
    tenloai = request("txtTenLoai")
    tt = request("chkTinhTrang")
    if tt = false then tt = 0
    sql = "insert into TheLoai (TenLoai, TinhTrang) values ('"& tenloai &"', "& tt &")"
    conn.execute (sql)
    conn.close
    response.redirect "category_view.asp"
%>