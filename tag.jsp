<%@ taglib prefix="ukr" uri="/taglib/tags.tld" %>
<ukr:SimpleTag />

<%!String name="Kutu"; %>
<ukr:hello name="<%=name%>"/>
<br>
Factorial table<br>

<ukr:FactTable start="2" end="7">
      ${count}! = ${fact}<br>
    </ukr:FactTable>


<%

for(int i = 3; i < 6; i++) {
%>
<%=i%>!=<ukr:fact no="<%=i%>" /><br>
<%
}
%>

<%
String user = request.getParameter("user");
session.setAttribute("user", user);


String user1 = (String)session.getAttribute("user");

double startTime = Double.parseDouble((String)session.getAttribute("user"));
out.println(startTime);
double currentTime = System.currentTimeMillis();
if(currentTime - startTime > 600000) {	//duration is 10 minutes
	//the time is over
%>
<%--
	<jsp:forward page="exam1.jsp" />
--%>
<%
}
%>