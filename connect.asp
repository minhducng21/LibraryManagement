<%
set conn = Server.CreateObject("ADODB.Connection")
set  rs = Server.CreateObject("ADODB.Recordset")
set  rs1 = Server.CreateObject("ADODB.Recordset")
conn.open "PROVIDER=SQLOLEDB;DATA SOURCE=MINHDUCNG;UID=sa;PWD=123456;DATABASE=DAQLTV"
%>