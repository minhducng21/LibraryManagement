<!--#include file="connect.asp"-->
<%
    ten = request("txtTenNXB")
    diachi = request("txtDiaChi")
    fax = request("txtFax")
    tt = request("chkTinhTrang")
    if tt =false then tt = 0
    sql = "insert into NXB(TenNXB, DiaChi, Fax, TinhTrang) values ('" & ten & "', '" & diachi & "'," & fax & ", "& tt &")"

    conn.execute (sql)
    conn.close
    response.redirect "publication_view.asp"
%>