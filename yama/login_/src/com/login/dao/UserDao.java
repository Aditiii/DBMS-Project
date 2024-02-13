package com.login.dao;

 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



 
public class UserDao {  
  
public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mall_management");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
}  
public static int save(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into RequestEvent(date,Organizer,Event,Contact) values(?,?,?,?)");  
        ps.setString(1,u.getdate());  
        ps.setString(2,u.getOrganizer());  
        ps.setString(3,u.getEvent());  
        ps.setString(4,u.getContact());  
      //  ps.setString(5,u.getCountry());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  
public static int insert(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into finalevent id=? date=?,Organizer=?,Event=?,Contact=? ");  
        ps.setString(1,u.getid());  
        ps.setString(2,u.getdate());  
        ps.setString(3,u.getOrganizer());  
        ps.setString(4,u.getEvent());  
        ps.setString(5,u.getContact());  
         
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
} 

public static int delete(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from RegisterEvent where id=?");  
        ps.setInt(1,u.getid());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}  
public static List<User> getAllRecords(){  
    List<User> list=new ArrayList<User>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from RegisterEvent");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            User u=new User();  
            u.setId(rs.getInt("id"));  
            ps.setString(1,u.getdate());  
            ps.setString(2,u.getOrganizer());  
            ps.setString(3,u.getEvent());  
            ps.setString(4,u.getContact());;  
            list.add(u);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}  
public static User getRecordById(int id){  
    User u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from RegisterEvent where id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new User();  
            u.setId(rs.getInt("id"));  
            u.setdate(rs.getString("name"));  
            u.setOrganizer(rs.getString("password"));  
            u.setEvent(rs.getString("email"));  
            u.setContact(rs.getString("sex"));  
             
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
}  