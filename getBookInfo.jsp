<%@page import="java.sql.*"%>
<%
      String driver = "org.gjt.mm.mysql.Driver";
      String url = "jdbc:mysql://thinkpad:3306/test";
      String user = "root";
      String password = "nbuser";
      Class.forName(driver);
      Connection con = DriverManager.getConnection(url,user,password);
      Statement stmt = con.createStatement();
      String title = request.getParameter("title");	
      ResultSet rs = stmt.executeQuery("select * from books where title='" + title + "'");
	out.println("<?xml version=\"1.0\"?>");
//	out.println("<books>");
//      while(rs.next()) {
	rs.next();
		out.println("<book>");
		out.println("<title>"+rs.getString("title")+"</title>");
		out.println("<author>"+rs.getString("author")+"</author>");
		out.println("<publisher>"+rs.getString("publisher")+"</publisher>");
		out.println("<price>"+rs.getString("price")+"</price>");
		out.println("</book>");
	//}
//	out.println("</books>");
%>