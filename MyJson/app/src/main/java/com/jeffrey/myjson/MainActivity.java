package com.jeffrey.myjson;

import android.content.Context;
import android.content.res.AssetManager;
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
import java.io.IOException;
import java.io.InputStreamReader;

public class MainActivity extends AppCompatActivity {
    // 本地服务器地址
    public static String DATA_URL = "http://10.0.2.2:8080/MyWEB13/home_data_test.json";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        // 开启一个子线程读取json数据
        new Thread() {
            @Override
            public void run() {
                // 读取服务器端json文件
                // getJsonArray(DATA_URL);
                // 读取本地assets下json文件
                String str = getAssetsJson(MainActivity.this, "home_data_test.json");
                Log.e("XXX", "WANGJUN----------str---:" + str);
            }
        }.start();
    }

    // 获取本地assets文件夹下的json文件
    public static String getAssetsJson(Context context, String fileName) {
        StringBuilder stringBuilder = new StringBuilder();
        //获得assets资源管理器
        AssetManager assetManager = context.getAssets();
        //使用IO流读取json文件内容
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(
                    assetManager.open(fileName), "utf-8"));
            String line;
            while ((line = bufferedReader.readLine()) != null) {
                stringBuilder.append(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return stringBuilder.toString();
    }

    //根据本地url地址得到json数据字符串
    public JSONArray getJsonArray(String url) {
        JSONArray jsonArray = null;
        HttpClient client = new DefaultHttpClient();
        StringBuilder builder = new StringBuilder();
        HttpGet get = new HttpGet(url);

        try {
            HttpResponse response = client.execute(get);
            BufferedReader reader = new BufferedReader(
                    new InputStreamReader(response.getEntity().getContent()));
            String s = reader.readLine();
            for (; s != null; s = reader.readLine()) {
                builder.append(s);
            }

            Log.e("XXX", "wangjun------builder--:" + builder.toString());
            JSONObject jo = new JSONObject(builder.toString());  // 这个builer.toString需要满足json数据的key-value格式

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































