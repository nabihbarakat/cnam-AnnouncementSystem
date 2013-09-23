

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Service
 */
@WebServlet("/Service")
public class Service extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Service() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    
		 String studentId= request.getParameter("studentid");
		 String msg = request.getParameter("msg");
		
		 
		String action = request.getParameter("action");
		switch (action) {
		case "sms":
	
			 String mobileNbr= StudentData.GetPhoneById(studentId);
			 
			 SMSSender smsSender = new SMSSender();
			 smsSender.SendSMS(mobileNbr, msg);
			 
			 
			break;
		case "email":
			

			 String email= StudentData.GetMailById(studentId);
			 SendEmail emailSender = new SendEmail();
			 
			 emailSender.sendEmail(email, msg);
		case "mobilenotification":
		
			 
			break;

		default:
			break;
		}	 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
