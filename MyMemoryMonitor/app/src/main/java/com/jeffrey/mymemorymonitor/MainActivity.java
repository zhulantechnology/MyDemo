package com.jeffrey.mymemorymonitor;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // 这句会引起内存泄露，因为userManager对象持有了对这个Activity的引用
        UserManager userManager = UserManager.getInstance(this);
    }
}
