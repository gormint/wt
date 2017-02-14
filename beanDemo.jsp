<!--
<%@ page import="bean.*" %>
<jsp:useBean id="myBean" scope="session" class="bean.MyBean" />
<jsp:setProperty name="myBean" property="value" value="ukr" />
<jsp:getProperty name="myBean" property="value" />
-->

<table border="1">
<caption>Factorial table</caption>
<tr><th width="50">n</th><th width="100">n!</th></tr>
<jsp:useBean id="fact" scope="page" class="bean.Factorial" />
<%
for(int i=2;i<6;i++) {
%>
<jsp:setProperty name="fact" property="value" value="<%=i%>" />
<tr><td><%=i%></td><td><jsp:getProperty name="fact" property="value" /></td></tr>

<%

}
%>
</table>
<jsp:useBean id="fact1" scope="page" class="bean.Factorial" />
<%fact1.setValue(6);%>
<%=fact1.getValue()%>

<%bean.Factorial fact2 = new bean.Factorial();%>
<%fact2.setValue(6);%>
<%=fact2.getValue()%>
