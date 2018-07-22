package com.jeffrey.myjson;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class MainActivity extends AppCompatActivity {
    // 本地服务器地址
    //public static String DATA_URL = "http://10.0.2.2:8080/WEB12/live.json";
    //public static String DATA_URL = "http://10.0.2.2:8080/WEB12/home_data.json";
  //  public static String DATA_URL = "http://10.0.2.2:8080/WEB12/test.json";

    public static String DATA_URL = "http://10.0.2.2:8080/WEB12/home_data_test.json";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        new Thread() {
            @Override
            public void run() {
                getJsonArray(DATA_URL);
            }
        }.start();
    }

    /**
     * 根据本地url地址得到json数据字符串
     * @param url
     * @return
     */
    public JSONArray getJsonArray(String url) {
        JSONArray jsonArray = null;
        HttpClient client = new DefaultHttpClient();
        StringBuilder builder = new StringBuilder();
        HttpGet get = new HttpGet(url);

        try {
            HttpResponse response = client.execute(get);
            BufferedReader reader = new BufferedReader(new InputStreamReader(response.getEntity().getContent()));
            String s = reader.readLine();
            for (; s != null; s = reader.readLine()) {
                builder.append(s);
            }
          //  Log.e("XXX", "wangjun------builder--:" + builder.toString());
            JSONObject jo = new JSONObject(builder.toString());
           /* JSONArray jor = jo.getJSONArray("result");
            JSONObject jol = (JSONObject) jor.get(0);
            jsonArray = jol.getJSONArray("list");*/

           JSONObject dataObject = jo.getJSONObject("data");
           JSONObject headObject = dataObject.getJSONObject("head");
            jsonArray = headObject.getJSONArray("ads");
            Log.e("XXX", "wangjun------jsonArray--:" + jsonArray);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jsonArray;
    }

}































