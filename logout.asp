<!--#include file="connect.asp"-->
<%
    session.abandon
    response.redirect("login.asp")
%>