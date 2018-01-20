<!--#include file="connect.asp"-->

<%
    matt = request("id")
    hoten = Request("txtHoTen")
    diachi = Request("txtDiaChi")
    sdt = Request("txtSDT")
    cmnd = Request("txtCMND")
    tendn = Request("sltTenDN")
    sql = "update ThuThu set TenTT = '" & hoten & "', DiaChi = '" & diachi & "', SDT = " & sdt & ", CMND = " & cmnd & ", TenDN = '" & tendn & "' where MaTT = " & matt
    conn.execute (sql)
    conn.close
    response.redirect("manager_view.asp")
%>