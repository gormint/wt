<%@page import="java.util.*, java.sql.*"%>
<html>
<body>
<script language="JavaScript">

  function getInfo(country) {
   try {
	xmlhttp = new XMLHttpRequest();
      }catch(e1) {
	try {
	  xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");	
	}catch(e2) {
	  try {
	    xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
  	  }catch(e3) {
	      alert('AJAX not supported');
	      return false;
  	  }
	}
      }
      xmlhttp.onreadystatechange = processResponse;
      url = 'getInfo.jsp?country='+country;
      xmlhttp.open("GET",url,true);
      xmlhttp.send(null);
    }

    function processResponse() {
	if(xmlhttp.readyState == 4 && xmlhttp.status == 200) {
	  try {
     	    xmlDoc=new ActiveXObject("Microsoft.XMLDOM");
	    xmlDoc.loadXML(xmlhttp.responseText);
	    x = xmlDoc.getElementsByTagName("info")[0];
	    
	    msg='<table border="1" cellpadding="0" cellspacing="0">';
	
	    for(var i=0;i<x.childNodes.length;i++)
          msg+='<tr><td>'+x.childNodes[i].nodeName+'</td><td>'+x.childNodes[i].childNodes[0].nodeValue+'</td></tr>';
        
          msg+='</table>';
          document.getElementById('result').innerHTML = msg;
	  }catch(e) {alert(e);}
     }
    }
</script>
<%
	response.setHeader("Pragma", "no-cache");
      response.setHeader("Cache-Control", "no-cache");
      response.setDateHeader("Expires", -1);
	try {
            Class.forName("org.gjt.mm.mysql.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://thinkpad:3306/test", "root", "nbuser");
      	Statement stmt = conn.createStatement();

		String query = "SELECT * from user";
		ResultSet rs = stmt.executeQuery("select * from info");
		out.println("<select onChange=\"getInfo(this.value)\">");
		while(rs.next()) {
              String country = rs.getString("country");
		  out.println("<option value=\""+country+"\">"+country+"</option>");
	      }
		out.println("</select><br>");
	}catch(Exception e) {e.printStackTrace();}

%><br>
<div id='result'></div> 
</body>
</html>