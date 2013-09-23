import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.mysql.jdbc.PreparedStatement;

public class StudentData {

	public String Id = "";
	public String Name = "";
	public  String Mobile="";
	public String Mail ="";
	
	
	
   static String dbURL = "jdbc:mysql://localhost:3306/cnam";
   static String username ="root";
   static String password = "root";
	
	 public static void GetStudents() {
		 
		 	ArrayList<StudentData> list= new ArrayList<StudentData>();
	        Connection dbCon = null;
	        Statement stmt = null;
	        ResultSet rs = null;
	       
	        String query ="select Id,Name,Email,Mobile from student";
	       
	        
	        try {
	   
	        	 DriverManager.registerDriver(new com.mysql.jdbc.Driver());
	            dbCon = DriverManager.getConnection(dbURL, username, password);
	            stmt = dbCon.prepareStatement(query);
	            //stmt.setString(1, name);
	            rs = stmt.executeQuery(query);
	   
	            while(rs.next()){
	            	StudentData student = new StudentData();
	            	student.Id = rs.getString(1);
	            	student.Name =rs.getString(2);
	            	student.Mobile=rs.getString(3);
	            	student.Mail=rs.getString(4);
	             int count = rs.getInt(1);
	             System.out.print("count of stock : " + count);
	            }
	           
	        } catch (SQLException ex) {
	        	System.out.print("Error on SudentData.GetStudents :" + ex.getMessage());
	   
	           //    Logger.getLogger(CollectionTest.class.getName()).log(Level.SEVERE, null, ex);
	        }
	       
	       
	    }  
	 public static String GetMailById(String Id) {
		 
		 
		
		 
	        Connection dbCon = null;
	        java.sql.PreparedStatement stmt = null;
	        ResultSet rs = null;
	       
	        String query ="select Email from student where Id=?";
	       
	        
	        try {
	   
	        	 DriverManager.registerDriver(new com.mysql.jdbc.Driver());
	            dbCon = DriverManager.getConnection(dbURL, username, password);
	            stmt = dbCon.prepareStatement(query);
	            stmt.setString(1, Id.toString());
	            rs = stmt.executeQuery(query);
	   
	           
	            while(rs.next()){
	            	
	             String mail = rs.getString(1);
	             return mail;
	            }
	           
	        } catch (SQLException ex) {
	        	System.out.print("Error on SudentData.GetStudents :" + ex.getMessage());
	   
	           //    Logger.getLogger(CollectionTest.class.getName()).log(Level.SEVERE, null, ex);
	        }
	       return "";
	       
	    }
	 public static String GetPhoneById(String Id) {
		 
	        Connection dbCon = null;
	        java.sql.PreparedStatement stmt = null;
	        ResultSet rs = null;
	       
	        String query ="select Mobile from student where Id=?";
	       
	        
	        try {
	   
	        	 DriverManager.registerDriver(new com.mysql.jdbc.Driver());
	            dbCon = DriverManager.getConnection(dbURL, username, password);
	            stmt = dbCon.prepareStatement(query);
	            stmt.setString(1, Id.toString());
	            rs = stmt.executeQuery(query);
	   
	           
	            while(rs.next()){
	             String mail = rs.getString(1);
	             return mail;
	            }
	           
	        } catch (SQLException ex) {
	        	System.out.print("Error on SudentData.GetStudents :" + ex.getMessage());
	   
	           //    Logger.getLogger(CollectionTest.class.getName()).log(Level.SEVERE, null, ex);
	        }
	       return "";
	       
	    }  
}


}


