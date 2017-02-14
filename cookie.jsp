<html>
	<head><title>Cookie demo</title></head>
   <body>
<%
 Cookie browserCookie=null;
 Cookie[]  cookies = request.getCookies();
 if(cookies != null) {
 for(int i=0;i<cookies.length;i++) {
   if(cookies[i].getName().equals("browser")) 
     browserCookie = cookies[i];
 }
}

String browser = request.getParameter("browser");
if(browser != null) {
  response.addCookie(new Cookie("browser", browser));
}
else {
if(browserCookie ==null) {
%>
<form  method="post">
<select name="browser">
  <option value="Internet Explorer">Internet Explorer</option>
  <option value="Fire Fox">Fire Fox</option>
</select>
<input type="submit" value="Done">
</form>
<%
}
else 
  out.println("Your are using "+browserCookie.getValue());
}

%>
   </body>
</html>