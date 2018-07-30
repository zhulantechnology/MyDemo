package com.jeffrey.mymemorymonitor;

import android.content.Context;

/**
 * Created by Jun.wang on 2018/7/25.
 */

public class UserManager {
    private static UserManager instance;
    private Context context;

    private UserManager(Context context) {
        this.context = context;
    }

    // 单例模式
    public static UserManager getInstance(Context context) {
        if (instance == null) {
            if(context != null)
            instance = new UserManager(context.getApplicationContext());
        }

        return instance;
    }
}
