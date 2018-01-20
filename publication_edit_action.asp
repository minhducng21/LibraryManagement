<!--#include file="connect.asp"-->
<%
    maNXB = request("id")
    ten = request("txtTenNXB")
    diachi = request("txtDiaChi")
    fax = request("txtFax")
    tt = request("chkTinhTrang")
    if tt = false then tt = 0

sql = "update NXB set TenNXB = '" & ten & "', DiaChi = '" & diachi &"', Fax = " & fax & ", TinhTrang = "& tt &" where MaNXB =  " & maNXB

conn.execute (sql)
conn.close
response.redirect "publication_view.asp"
%>