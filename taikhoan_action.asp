<!--#include file="connect.asp"-->
<%
    tendn = request("txtUser")
    mk = request("txtPass")
    quyen = request("sltQuyen")
    sql = "insert into DangNhap(TenDN, MatKhau, Quyen) values ('"& tendn &"', '" & mk &"', '" & quyen & "')"
    conn.execute(sql)
    response.redirect("manager_view.asp")
    conn.close
%>