<html>
   <body>
      <jsp:include page="/servlet/HelloWorld" flush="true" >
	   <jsp:param name="processor" value="Pentium III" /> 
	   <jsp:param name="speed" value="1.13 GHz" /> 
	   <jsp:param name="HDD" value="80 GB" /> 
	   <jsp:param name="RAM" value="512 MGB" /> 
	</jsp:include>
   </body>
</html>