

import java.io.IOException;
//import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class mymethods
 */
@WebServlet("/mymethods")
public class mymethods extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mymethods() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        response.setContentType("text/html");
        //PrintWriter printWriter  = response.getWriter();
        StudentData.GetStudents();
    	
        //System.out.print("<h1>Hello World abc 2 !</h1>");
        
        //SendSMS newsms= new SendSMS();
        //SendEmail emailer = new SendEmail();
        //the domains of these email addresses should be valid,
        //or the example will fail:
        //String msg = "hello from here";	 
  	  //String subject = "subject yup";
        //emailer.sendEmail(subject,msg);
	
        
        //SMSSender       smssender = new SMSSender();
       
        //try{
        	
        
        //smssender.SendSMS("9613144127", "bade ella enne 3m eb3atlak risele ta jarib eza meshe el 7al");
        //}
        //catch(Exception ex)
        //{
        	
        
        //}
        
       
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
