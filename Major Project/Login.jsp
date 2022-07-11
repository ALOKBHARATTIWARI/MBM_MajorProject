<%-- 
    Document   : Login
    Created on : 27-Nov-2020, 09:39:07
    Author     : Dipra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page contentType="text/html" import="java.sql.*"%>

<html><body>

       <h1>Registration  Page</h1>

   <%

       String uname=request.getParameter("txtName");

       String pass = request.getParameter("txtPass");

     

       try{

   Class.forName("com.mysql.jdbc.Driver");

   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/logindb","root","");

   PreparedStatement stmt = con.prepareStatement("select pass1 from user where uname=?");

   stmt.setString(1, uname); 

   ResultSet rs = stmt.executeQuery();

   if(rs.next()){

       if(pass.equals(rs.getString(1)))

       {

           out.println("<h1>~~~ LOGIN SUCCESSFULLL ~~~ </h1>");

       }

       }

   else{

   out.println("<h1>User Name not exist !!!!!</h1>");

   %>

   <jsp:include page="Register.html" ></jsp:include>

       <%

   }

       }catch(Exception e){out.println(e);}

  %>

   </body>

</html>
