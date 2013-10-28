package AnnoucementSystem;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class Security {
	
	   static String dbURL = Config.dbURL;// "jdbc:mysql://localhost:3306/cnam";
	   static String username = Config.username;//"root";
	   static String password = Config.password;// "root";
		
	   
	 public static Boolean CheckLogin(String loginName,String loginPass) {
		 
		 
		
		 
	        Connection dbCon = null;
	        java.sql.PreparedStatement stmt = null;
	        ResultSet rs = null;
	       
	        String query ="select count(*) from users where username=? and password=?";
	       
	        
	        try {
	       
	        	DriverManager.registerDriver(new com.mysql.jdbc.Driver());
	            dbCon = DriverManager.getConnection(dbURL, username, password);
	            stmt = dbCon.prepareStatement(query);
	            stmt.setString(1, loginName.toString());
	            stmt.setString(2, loginPass.toString());
	  
	            rs = stmt.executeQuery();
	            rs.next();
	           
	            if ( Integer.parseInt( rs.getString(1)) > 0)
	            	return true;
	            	else 
	            	return false;
	           
	           
	           
	        } catch (SQLException ex) {
	        	System.out.print("Error on security.Checklogin :" + ex.getMessage());
	   
	           //    Logger.getLogger(CollectionTest.class.getName()).log(Level.SEVERE, null, ex);
	        }
	       return false;
	       
	    }

}
