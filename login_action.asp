<!--#include file="connect.asp"-->
<%
    username = request("txtUser")
    password = request("txtPass")
    rs.open "select * from DangNhap where TenDN = '" & username & "' and MatKhau ='" & password & "'", conn
    
    if rs.eof = false then
    Session("username1") = username
    response.redirect("User_view.asp")
    else response.redirect("login.asp")
    end if
    rs.close
    conn.close
%>