package com.login.dao;


import java.math.BigInteger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao 
{
	
	String sqllogin ="select * from userinfoo where uname=? and pass=?";
	String sqlloginadmin ="select * from admin1 where uname=? and pass=?";
	String sql ="select * from userinfoo where email_id=?";
	String sqlevent = "select * from temp1 where date=?,Organizer=?,Event=?,Contact=?";
	String sqlcheckevent = "select * from RequestEvent where date=?";
	String sqlcheckstore = "select * from temp1 where name_of_brand=?";
	String url="jdbc:mysql://127.0.0.1:3306/mall_management";
    String username="mansi";
	String password="Mompapa";
   public boolean checklogin(String uname,String pass) 
   {
	  
		   try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sqllogin);
			
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs =st.executeQuery();
			if(rs.next())
			{
				return true;
			}
		} catch (Exception e)
		   {
			
			e.printStackTrace();
		}
	   
	   return false;
   }
   
   public boolean checkloginadmin(String uname,String pass) 
   {
	  
		   try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sqlloginadmin);
			
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs =st.executeQuery();
			if(rs.next())
			{
				return true;
			}
		} catch (Exception e)
		   {
			
			e.printStackTrace();
		}
	   
	   return false;
   }
/*   
   public boolean check(String fname,String lname,String email_id,String uname,String pass) 
   {
	  
		   try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sql);
			
			st.setString(1, fname);
			st.setString(2, lname);
			st.setString(3, email_id);
			st.setString(4, uname);
			st.setString(5, pass);
			ResultSet rs =st.executeQuery();
			if(rs.next())
			{
				return true;
			}
		} catch (Exception e)
		   {
			
			e.printStackTrace();
		}
	   
	   return false;
   }
   
 */  
   public boolean checkEmail(String email_id) 
   {
	  
		   try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sql);
		
			st.setString(1, email_id);
		
			ResultSet rs =st.executeQuery();
			if(rs.next())
			{
				return true;
			}
		} catch (Exception e)
		   {
			
			e.printStackTrace();
		}
	   
	   return false;
   }
   
   
  public  void insert(String fname,String lname,String email_id,String uname, String pass)
  {
	  try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn =DriverManager.getConnection(url,username,password);
			PreparedStatement stt=conn.prepareStatement("insert into userinfoo"+" values(?,?,?,?, ?)");
			
			stt.setString(1, fname);
			stt.setString(2, lname);
			stt.setString(3, email_id);
			stt.setString(4, uname);
			stt.setString(5, pass);
			stt.execute();
			
			
		} catch (Exception e)
		   {
			
			e.printStackTrace();
		}
	  

  }



/*public boolean checkEvent(String Date) 
{
	  
		   try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sqlcheckevent);
			
			st.setString(1, Date);
			ResultSet rs =st.executeQuery();
			if(rs.next())
			{
				return true;
			}
		} catch (Exception e)
		   {
			
			e.printStackTrace();
		}
	   
	   return false;
  }
*/
  
/*public boolean checkEVENT(String startDate,String Organizer,String Event,BigInteger bi)
{
	  
		   try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sqlevent);
			
			//st.setDate(1, Date);
			//st.setString(2, pass);
			st.setString(2, Organizer);
			st.setString(3, Event);
			//st.setInt(4, Contact);
			st.setString(4, bi.toString());
			
			st.setString(1, startDate);
			ResultSet rs =st.executeQuery();
			if(rs.next())
			{
				return true;
			}
		} catch (Exception e)
		   {
			
			e.printStackTrace();
		}
	   
	   return false;
  }
*/
public  int insertEvent(String startDate,String Organizer,String Event,BigInteger bi,String email_id)
{ int status=0;
	  try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn =DriverManager.getConnection(url,username,password);
			PreparedStatement stt=conn.prepareStatement("insert into RequestEvent(date,Organizer,Event,Contact,email_id)"+" values(?,?,?,?,?)");
			
		
			stt.setString(1, startDate);	
			stt.setString(2, Organizer);
			stt.setString(3, Event);
			stt.setString(4, bi.toString());
			stt.setString(5, email_id);
		    status=stt.executeUpdate();
				
			
		} catch (Exception e)
		   {
			
			e.printStackTrace();
		}
	  return status;

}

public boolean checkStore(String name_of_brand) 
{
	  
		   try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sqlcheckstore);
			
			st.setString(1, name_of_brand);
			ResultSet rs =st.executeQuery();
			if(rs.next())
			{
				return true;
			}
		} catch (Exception e)
		   {
			
			e.printStackTrace();
		}
	   
	   return false;
  }
/*
public  void insertStore(String shop_no,String name_of_brand,String owner,BigInteger bi,String logo)
{
	  try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn =DriverManager.getConnection(url,username,password);
			PreparedStatement stt=conn.prepareStatement("update  newstore as name_of_brand=?,owner=?,contact=?,logo=?"+" where shop_no=?");
			
		
			stt.setString(5, shop_no);	
			stt.setString(1, name_of_brand);
			stt.setString(2, owner);
			stt.setString(3, bi.toString());
			stt.setString(4, logo);
			stt.execute();
			
			
			
	
			
		} catch (Exception e)
		   {
			
			e.printStackTrace();
		}
	  

}
*/
public  void insertStore(String shop_no,String name_of_brand,String owner,BigInteger bi,String logo)
{
	
	
	
	  try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn =DriverManager.getConnection(url,username,password);
			PreparedStatement stt=conn.prepareStatement("insert into newstore(shop_no,name_of_brand,owner,contact,logo)"+" values(?,?,?,?,?)");
			
		
			stt.setString(1, shop_no);	
			stt.setString(2, name_of_brand);
			stt.setString(3, owner);
			stt.setString(4, bi.toString());
			stt.setString(5, logo);
			stt.execute();
			
			
			
	
			
		} catch (Exception e)
		   {
			
			e.printStackTrace();
		}
	  

}

/*
public  void insertEvent(String startDate,String Organizer,String Event,BigInteger bi)
{
	  try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn =DriverManager.getConnection(url,username,password);
			PreparedStatement stt=conn.prepareStatement("insert into temp"+" values(?,?,?,?)");
			
			stt.setString(1, startDate);
			stt.setString(2, Organizer);
			stt.setString(3, Event);
			stt.setString(4, bi.toString());
	
			stt.execute();
			
			
		} catch (Exception e)
		   {
			
			e.printStackTrace();
		}
	  

}*/

public int deleteAdmin(String id)
{ int status=0;
	 try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn =DriverManager.getConnection(url,username,password);
			PreparedStatement stt=conn.prepareStatement("delete from RequestEvent where id='"+id+"'");
			System.out.println("In deleteadmin!");
			status=stt.executeUpdate();
			
			
		} catch (Exception e)
		   {
			
			e.printStackTrace();
		}
	
	return status;
}

public int deletestoreAdmin(String id)
{ int status=0;
	 try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn =DriverManager.getConnection(url,username,password);
			PreparedStatement stt=conn.prepareStatement("delete from store where shop_no='"+id+"'");
			System.out.println("In deleteadmin!");
			status=stt.executeUpdate();
			
			
		} catch (Exception e)
		   {
			
			e.printStackTrace();
		}
	
	return status;
}


public int insertintoevent(String Id,String date,String Organizer,String Event,String Contact,String email)
{
	int status=0;
	 try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn =DriverManager.getConnection(url,username,password);
			PreparedStatement stt=conn.prepareStatement("insert into finalevent"+"values(?,?,?,?,?,?)");
			System.out.println("In inserttoadmin!");
			stt.setString(1, Id);	
			stt.setString(2, date);	
			stt.setString(3, Organizer);
			stt.setString(4, Event);
			stt.setString(5, Contact);
			stt.setString(6, email);
		    status=stt.executeUpdate();
		   int i= deleteAdmin(Id);
		   if(i==0)
		   {System.out.println("Also deleted successfully!");}
	 } catch (Exception e)
	   {
		
		e.printStackTrace();
	}
   return status;
}

public int updateAdmin(String id)
{ int status=0;
	 try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn =DriverManager.getConnection(url,username,password);
		//	PreparedStatement stt=conn.prepareStatement("select * from RequestEvent where id='"+id+"'");
			PreparedStatement stt=conn.prepareStatement("insert into finalevent(id,date,Organizer,Event,Contact,email_id)select * from RequestEvent where id='"+id+"'");
			
			/*String Id =((ResultSet) stt).getString(1);
			String date =((ResultSet) stt).getString(2);
			String Organizer =((ResultSet) stt).getString(3);
			String Event =((ResultSet) stt).getString(4);
			String Contact =((ResultSet) stt).getString(5);
			String email =((ResultSet) stt).getString(6);
			*/
			status=stt.executeUpdate();
			
			int i= deleteAdmin(id);
			   if(i==0)
			   {System.out.println("Also deleted successfully!");}
			/*System.out.println("In updateadmin!");
			int i=insertintoevent(Id,date,Organizer,Event,Contact,email);
			 if(i==1)
			 {System.out.println("Inserted successfully!");}*/
				 
		} catch (Exception e)
		   {
			
			e.printStackTrace();
		}
	
	return status;
}


public int updatestoreAdmin(String id)
{ int status=0;
	 try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn =DriverManager.getConnection(url,username,password);
		//	PreparedStatement stt=conn.prepareStatement("select * from RequestEvent where id='"+id+"'");
			PreparedStatement stt=conn.prepareStatement("insert into finalstore(shop_no,name_of_brand,owner,contact,logo,email_id)select * from store where shop_no='"+id+"'");
			
			/*String Id =((ResultSet) stt).getString(1);
			String date =((ResultSet) stt).getString(2);
			String Organizer =((ResultSet) stt).getString(3);
			String Event =((ResultSet) stt).getString(4);
			String Contact =((ResultSet) stt).getString(5);
			String email =((ResultSet) stt).getString(6);
			*/
			status=stt.executeUpdate();
			
			int i= deletestoreAdmin(id);
			   if(i==0)
			   {System.out.println("Also deleted successfully!");}
			/*System.out.println("In updateadmin!");
			int i=insertintoevent(Id,date,Organizer,Event,Contact,email);
			 if(i==1)
			 {System.out.println("Inserted successfully!");}*/
				 
		} catch (Exception e)
		   {
			
			e.printStackTrace();
		}
	
	return status;
}

}