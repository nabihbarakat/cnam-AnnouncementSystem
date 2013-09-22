import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class StudentData {
	
	
	 public static void GetStudents() {
		 
		 System.out.print("start");
	        String dbURL = "jdbc:mysql://localhost:3306/cnam";
	        String username ="root";
	        String password = "root";
	       
	        Connection dbCon = null;
	        Statement stmt = null;
	        ResultSet rs = null;
	       
	        String query ="select count(*) from student";
	        System.out.print("before try " );
	       
	        
	        try {
	        	System.out.print("insinde");
	   
	        	 DriverManager.registerDriver(new com.mysql.jdbc.Driver());
	        	//getting database connection to MySQL server
	            dbCon = DriverManager.getConnection(dbURL, username, password);
	            System.out.print("inside 3");
	            //getting PreparedStatment to execute query
	            stmt = dbCon.prepareStatement(query);
	         
	            //Resultset returned by query
	            rs = stmt.executeQuery(query);
	     
	            while(rs.next()){
	             int count = rs.getInt(1);
	             System.out.print("count of stock : " + count);
	            }
	           
	        } catch (SQLException ex) {
	        	System.out.print("sisi" + ex.getMessage());
	           //    Logger.getLogger(CollectionTest.class.getName()).log(Level.SEVERE, null, ex);
	        }
	       
	        System.out.print("after try");
	       
	    }  
}
