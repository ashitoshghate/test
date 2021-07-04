<%@page language="java" %>
<%@page import="java.sql.*" %>

<%
    String Username=request.getParameter("user");
    String Password=request.getParameter("pass");
  

try {	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/regis","root","root");
	PreparedStatement ps=conn.prepareStatement("insert into user(user_id,password)values(?,?);");
	ps.setString(1,Username);
	ps.setString(2,Password);
		
	int x=ps.executeUpdate();
	if(x>0) {
			out.println("Registration is Succeful...");
				
		

					
			}else {
				System.out.println("registration Unsuccefull");
			
			}

				}catch(Exception e) {
					System.out.println(e);
				}
			

 %>