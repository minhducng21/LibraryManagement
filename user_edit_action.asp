<!--#include file="connect.asp"-->
<%
    mathe = request("id")
    hoten = request("txtHoten")
    ngaysinh = request("txtNgaySinh")
    lql = request("txtLQL")
    cmnd = request("txtCMND")
    ngaycap = request("txtNgayCap")
    tt = request("chkTinhTrang")
    if tt = false then tt = 0

    sql = "update DocGia set HoTen = '" & hoten & "', NgaySinh = '" & ngaysinh & "', LopQuanLy = '" & lql & "', CMND = " & cmnd & ", NgayCap = '" & ngaycap & "', TinhTrang = "& tt &" where MaThe = " & mathe
    conn.execute (sql)
    conn.close
    response.redirect "user_view.asp"
%>