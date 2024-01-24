<%@ page import = "java.sql.*" %>
 <%
 try{
 Class.forName("com.mysql.jdbc.Driver");
 //test = db name
 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/velocity","root","Rashad@123456");
 }
 catch(Exception e){
	 e.printStackTrace();
 }
 %>