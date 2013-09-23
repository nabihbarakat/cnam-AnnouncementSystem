
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;


public class SMSSender {

	private final String USER_AGENT = "Mozilla/5.0";
	 
	
	
	// HTTP GET request
		public void SendSMS(String to,String msg)  {
	 
			try
			{
					String url = "https://www.12voip.com/myaccount/sendsms.php?username=isaeonline&password=nabihbarakat&from=009613144127&to=" + to + "&text="+ msg.replace(" ", "%20") ;
			 
					URL obj = new URL(url);
					HttpURLConnection con = (HttpURLConnection) obj.openConnection();
			 
					// optional default is GET
					con.setRequestMethod("GET");
			 
					//add request header
					con.setRequestProperty("User-Agent", USER_AGENT);
			 
					int responseCode = con.getResponseCode();
					System.out.println("\nSending 'GET' request to URL : " + url);
					System.out.println("Response Code : " + responseCode);
			 
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
