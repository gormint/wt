<%! 
double PI = 22/7.0;
int add(int a, int b) {
	return a + b;
}
class AnInnerClass {
}

%>
<%
double temp = 0;
class TempClass {
}

out.println(add(2, 3));
%>

<!-- This page was generated at server on
<%= (new java.util.Date()) %>
-->

<%--This is a JSP comment--%>

<%
	//get all cookies
	Cookie[] cookies = request.getCookies();
	/*
	Following code checks whether the request contains
	a cookie having name "user"
	*/
	String user = null;
	for(int i = 0; i < cookies.length; i++)
		if(cookies[i].getName().equals("user"))
			user = (String)cookies[i].getValue();
	if(user != null) {
		//proceed
	}
%>

<% 
	java.util.Date dt = new java.util.Date(); 
	String dateStr = dt.toString();
	String time = "currentTime";
%>
<<%= time %> value="<%= dateStr %>" />


<%
	java.util.Date d = new java.util.Date();
	out.println("Date and time is : " + d);
%>

