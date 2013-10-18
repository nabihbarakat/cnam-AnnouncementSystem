package AnnoucementSystem;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.net.ssl.HttpsURLConnection;

public class NotificationSender {

private final String USER_AGENT = "Mozilla/5.0";
	 
	
	
	// HTTP GET request
		public void SendNotification(String to,String msg)  {
	 
			try
			{
				
				   String key = "AIzaSyBiL08a02JPposBpk9PIogEmCXZ79KEskY";
				    
					String url = "https://android.googleapis.com/gcm/send" ;
			 
					URL obj = new URL(url);
					HttpsURLConnection con = (HttpsURLConnection) obj.openConnection();
			 
					// optional default is GET
					con.setRequestMethod("Post");
					con.setRequestProperty("Content-Type", "application/json");
					con.setRequestProperty("Authorization", "key=" + key);
					con.connect();
					
				    String data=	"{'registration_ids' : ['" + to + "'], 'data' : { 'message' : '" + msg + "' },}";

					byte[] outputBytes = data.getBytes("UTF-8");
					OutputStream os = con.getOutputStream();
					os.write(outputBytes);

					os.close();
					
					//add request header				
					int responseCode = con.getResponseCode();
								 
					BufferedReader in = new BufferedReader(
					        new InputStreamReader(con.getInputStream()));
					String inputLine;
					StringBuffer response = new StringBuffer();
			 
					while ((inputLine = in.readLine()) != null) {
						response.append(inputLine);
					}
					in.close();
			 
					//print result
					System.out.println(response.toString());
			}
			catch(Exception ex)
			{}
	 
		}
	 
}
