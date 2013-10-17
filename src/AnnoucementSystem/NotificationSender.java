package AnnoucementSystem;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.net.ssl.HttpsURLConnection;

public class NotificationSender {

private final String USER_AGENT = "Mozilla/5.0";
	 
	
	
	// HTTP GET request
		public void SendNotification(String to,String msg)  {
	 
			try
			{
				
			
				    
					String url = "https://android.googleapis.com/gcm/send" ;
			 
					URL obj = new URL(url);
					HttpsURLConnection con = (HttpsURLConnection) obj.openConnection();
			 
					// optional default is GET
					con.setRequestMethod("Post");
					con.setRequestProperty("Content-Type", "application/json");
					con.setRequestProperty("Authorization", "key=" + "AIzaSyBiL08a02JPposBpk9PIogEmCXZ79KEskY");
					System.out.println(con.toString());
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
