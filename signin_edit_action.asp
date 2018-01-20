<!--#include file="connect.asp"-->
<%
    maphieu = request("id")
    mathe = request("sltMaThe")
    matt = request("sltMaTT")
    tienphat = request("txtTienPhat")
    tt = request("chkTinhTrang")
    if tt = false then tt = 0
    sql = "update MuonTra set MaThe = " & mathe &", MaTT = " & matt & ", SoTienPhat = " & tienphat & ", TinhTrang = "& tt &" where MaPhieu = " & maphieu
    conn.execute (sql)
    conn.close
    response.redirect("signin_view.asp")
%>

'sql = "update NXB set TenNXB = '" & ten & "', DiaChi = '" & diachi &"', Fax = " & fax & " where MaNXB =  " & maNXB

conn.execute (sql)