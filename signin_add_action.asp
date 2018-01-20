<!--#include file="connect.asp"-->
<%
    mathe = request("sltMaThe")
    matt = request("sltMaTT")
    tt = request("chkTinhTrang")
    if tt = false then tt = 0
    
    sql = "insert into MuonTra(MaThe, MaTT, SoTienPhat, TinhTrang) values (" & mathe & ", " & matt & ", 0,"& tt &")"
    conn.execute(sql)
    conn.close
    response.redirect("signin_view.asp")
%>
