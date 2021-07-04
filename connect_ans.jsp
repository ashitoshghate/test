<%@page import="java.sql.*" %>

<%
    String ans1=request.getParameter("ans1");
     String ans2=request.getParameter("ans2");
      String ans3=request.getParameter("ans3");
       String ans4=request.getParameter("ans4");
        String ans5=request.getParameter("ans5");
         String ans6=request.getParameter("ans6");
          String ans7=request.getParameter("ans7");
           String ans8=request.getParameter("ans8");
            String ans9=request.getParameter("ans9");
             String ans10=request.getParameter("ans10");

  

try {	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/regis","root","root");
	PreparedStatement ps=conn.prepareStatement("insert into user(ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10)values(?,?,?,?,?,?,?,?,?,?);");
			ps.setString(1,ans1);
			ps.setString(2,ans2);
			ps.setString(3,ans3);
			ps.setString(4,ans4);
			ps.setString(5,ans5);
			ps.setString(6,ans6);
			ps.setString(7,ans7);
			ps.setString(8,ans8);
			ps.setString(9,ans9);
			ps.setString(10,ans10);
	

		
	int x=ps.executeUpdate();
	if(x>0) {
			System.out.println("your ans submitted succefully");
				
		
		
					
			}else {
			out.println("Registration Unsucceful");
			}

				}catch(Exception e1) {
					out.println(e1);
				}
			

 %>