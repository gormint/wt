<!--new.jsp-->
<jsp:useBean id="fact" scope="request" class="bean.Factorial" />
<%=fact.getValue()%>
