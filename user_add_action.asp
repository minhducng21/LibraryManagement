<!--#include file="connect.asp"-->
<%
    hoten = request("txtHoTen")
    ngaysinh = request("txtNgaySinh")
    lql = request("txtLQL")
    cmnd = request("txtCMND")
    ngaycap = request("txtNgayCap")
    tt = request("chkTinhTrang")
    if tt = false then tt = 0

    sql = "insert into DocGia(HoTen, NgaySinh, LopQuanLy, CMND, NgayCap, TinhTrang) values ('"& hoten &"', '"& ngaysinh &"', '"& lql &"', "& cmnd &", '" & date() & "', "& tt &")"
    conn.execute (sql)
    conn.close
    response.redirect "./user_view.asp"
%>