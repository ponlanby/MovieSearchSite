/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package sentiment;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import net.sf.json.JSONObject;

/**
 *
 * @author xiaopangzi
 */
public class SentimentAnalysis {
    private final String searchURLFormat
            = "https://app.viralheat.com/social/api/sentiment?"
            + "api_key=s6AWFKOEQ5XyO5OU66"
            + "&text=%s";
    
    public JSONObject getJSON(String keyword) throws IOException {
        keyword = keyword.replaceAll(" ", "%20");
        URL searchURL = new URL(String.format(searchURLFormat, keyword));
        //System.out.println(keyword);
        //System.out.println(searchURL);
        HttpURLConnection conn = (HttpURLConnection) searchURL.openConnection();  
          
        if(conn.getResponseCode() != 200) {  
            throw new IOException(conn.getResponseMessage());  
        }  
          
        BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));  
        StringBuilder sb = new StringBuilder();
        String line;
        while((line = rd.readLine()) != null) {  
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        JSONObject jo = JSONObject.fromString( sb.toString() );
        //System.out.println(jo);
        return jo;
    }
    
    /*public String getMood(String keyWord) throws IOException
    {
        JSONObject jo = new SentimentAnalysis().getJSON(keyWord);
        String Mood = jo.getString("mood");
        return Mood;
    }
    
    public String getProb(String keyWord) throws IOException
    {
        JSONObject jo = new SentimentAnalysis().getJSON(keyWord);
        String Prob = jo.getString("prob");
        return Prob;
    }*/
}
