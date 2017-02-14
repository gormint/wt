<!--original.jsp-->
<jsp:useBean id="fact" scope="request" class="bean.Factorial" />
<%fact.setValue(5);%>
<jsp:forward page="new.jsp" />
