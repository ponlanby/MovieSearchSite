/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package youtube;

/**
 *
 * @author xiaopangzi
 */
public class Youtube {
    
    private final String URLFormat = "http://gdata.youtube.com/feeds/api/videos/"
                + "-/trailer/movie"
                + "?q=%s"
                + "&alt=json-in-script"
                + "&callback=showMyVideos2"
                + "&max-results=8"
                + "&format=5";
    
    public String getURL(String keyWord)
    {
        String URL = null;
        try{
        keyWord = keyWord.replaceAll(" ", "%20").concat("%20trailer");
        URL = String.format(URLFormat, keyWord);
        //System.out.println(URL);
        }
        catch (Exception e){
        }
        return URL;
    }
}
