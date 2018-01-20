<!--#include file="connect.asp"-->
<%
    
    maSach = request("id")
    tenSach = Request.Form("txtSach")
    tacGia = Request.Form("txtTacGia")
    gia = Request.Form("txtGia")
    soLuong = Request.Form("txtSoLuong")
    maLoai = Request.Form("sltMaLoai")
    maNXB = Request.Form("sltMaNXB")
    tt = request("chkTinhTrang")
    if tt = false then tt = 0
    sql = "update Sach set TenSach = '" & tenSach & "', TacGia = '" & tacGia & "', Gia = " & gia & ", SoLuong = " & soLuong & ", MaLoai = " & maLoai & ", MaNXB = " & maNXB & ", TinhTrang  = "& tt &" where MaSach= " & maSach
    conn.execute (sql)
    conn.close
    response.redirect "book_view.asp"
%>