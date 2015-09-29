package google;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author xiaopangzi
 */
public class GoogleCSE {
      
    private final String searchURLFormat
            = "https://www.googleapis.com/customsearch/v1?"
            + "key=AIzaSyCiOpf6qA8fRv7KpIffoDJADXGUMY-CMGk"
            + "&cx=005341254298891628307:cj0pauh2qwk"
            + "&q=%s";
    
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
    
    public JSONObject getSearchInfo(String keyword) throws IOException{
        JSONObject jo = new GoogleCSE().getJSON(keyword);
        JSONObject jsObj = jo.getJSONObject("searchInformation");
        System.out.println(jsObj);
        return jsObj;
    }
    
    public JSONArray getItems(String keyword) throws IOException{
        JSONObject jo = new GoogleCSE().getJSON(keyword);
        JSONArray jsArr = jo.getJSONArray("items");
        System.out.println(jsArr);
        return jsArr;
    }
}
