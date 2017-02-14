<%@page import="java.util.*, org.apache.xalan.xslt.*, javax.xml.transform.*, javax.xml.transform.stream.*"%>

<html>
   <body>

<table>
<tr>
<td><a href="xslt.jsp?option=title">Title</a></td>
<td><a href="xslt.jsp?option=artist">Artist</a></td>
<td><a href="xslt.jsp?option=country">Country</a></td>
<td><a href="xslt.jsp?option=company">Company</a></td>
<td><a href="xslt.jsp?option=price">Price</a></td>
<td><a href="xslt.jsp?option=year">Year</a></td>

</tr>
</table>
Sort By<select onChange="go(this.value)">
<option value="title">Title</option>
<option value="artist">Artist</option>
<option value="country">Country</option>
<option value="company">Company</option>
<option value="price">Price</option>
<option value="year">Year</option>

</select>
<script language="JavaScript">
  function go(option) {
    location.href="xslt.jsp?option="+option;
  }
</script>
<%    
    String option=null;
    option = request.getParameter("option");	
    if(option==null) option = "title";
    String appPath = application.getRealPath("/");  
    TransformerFactory factory = TransformerFactory.newInstance();
    Transformer transformer = factory.newTransformer(new StreamSource(appPath+"sort/cdcatalog_by_"+option+".xsl"));
    transformer.transform(new StreamSource(appPath+"sort/cdcatalog.xml"), new StreamResult(out));
    out.println(appPath+"sort/");

%>
   </body>
</html>