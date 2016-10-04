package com.hline;
import java.sql.*;
public class DBUtil1
{
private static Connection connection;
public static Connection getConnection()
{
try
{
Class.forName("com.mysql.jdbc.Driver");
System.out.println("Driver is Loaded");

connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/ATDB","root","root");
System.out.println("Connection is Established");
}
catch(Exception e)
{
System.out.println(e);
}
return connection;
}
public static Statement createStatement()
{
Statement statement=null;
try
{
if(connection==null||connection.isClosed())
{
connection=getConnection();
System.out.println("got the connection :"+connection);

statement=connection.createStatement();
return statement;
}
else
{
statement=connection.createStatement();
return statement;
}
}
catch(Exception e)
{
System.out.println(e);
}
return statement;
}
public static PreparedStatement createPreparedStatement(String query)
{
PreparedStatement preparedStatement=null;
try
{
if(connection==null||connection.isClosed())
{
connection=getConnection();
System.out.println("got the connection :"+connection);

preparedStatement=connection.prepareStatement(query);

return preparedStatement;
}
else
{
preparedStatement=connection.prepareStatement(query);
return preparedStatement;
}
}
catch(Exception e)
{
System.out.println(e);
}
return preparedStatement;
}
}

