<%@ page import="java.sql.*"%>

<%
String un = request.getParameter("un");
String email = request.getParameter("email");
String mob = request.getParameter("mob");
String com = request.getParameter("ta");

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/youtubeuserdata","root","4475");
	PreparedStatement ps = con.prepareStatement("insert into registers values(?,?,?,?)");
	ps.setString(1, un);
	ps.setString(2, email);
	ps.setString(3, mob);
	ps.setString(4, com);
	ps.executeUpdate();
	%>
	<h3>You have registered...</h3>
	<%
}catch(Exception e){System.out.println(e);}

%>