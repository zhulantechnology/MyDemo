package com.jeffrey.myscrolldragview;

import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;

public class MainActivity extends Activity {

	private ScrollLayout mContainer;
	private List<MoveItem> mList;
	private final static int ITEM_SIZE = 10;
	private ScrollAdapter mItemsAdapter;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		initView();
	}

	private void initView() {
		mContainer = (ScrollLayout) findViewById(R.id.container);
		if (mList == null || mList.size() == 0) {
			mList = new ArrayList<MoveItem>();
			for (int i = 1; i < ITEM_SIZE + 1; i++) {
				MoveItem item = new MoveItem();
				item.setImg_pressed(getDrawableId("item" + i + "_down"));
				item.setImg_normal(getDrawableId("item" + i + "_normal"));
				item.setOrderId(i);
				item.setMid(i);
				mList.add(item);
			}
		}
		
		mItemsAdapter = new ScrollAdapter(MainActivity.this, mList);
		mContainer.setSaAdapter(mItemsAdapter);
		
	}
	
	private int getDrawableId(String name) {
		return getResources().getIdentifier(name, "drawable", "com.jeffrey.myscrolldragview");
	}
	
}






































