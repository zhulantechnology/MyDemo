package com.jeffrey.mytestsdk;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import com.youdu.okhttp.CommonOkHttpClient;


public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //CommonOkHttpClient.post()   //just test
    }
}
