package com.jeffrey.myscrolldragview;


import com.jeffrey.myscrolldragview.ScrollAdapter.OnDataChangeListener;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

public class ScrollLayout extends ViewGroup implements OnDataChangeListener{

	//ÈÝÆ÷µÄAdapter
		private ScrollAdapter mAdapter;
		
	public ScrollLayout(Context context) {
		super(context);
		init(context);
	}
	
	private void init(Context context) {
		
	}
	
	public void setSaAdapter(ScrollAdapter saAdapter) {
		this.mAdapter = saAdapter;
		this.mAdapter.setOnDataChangeListener(this);
	}

	@Override
	protected void onLayout(boolean changed, int l, int t, int r, int b) {
		// TODO Auto-generated method stub

	}
	
	public interface SAdapter {
		int getCount();
		View getView(int position);
	}

	@Override
	public void ondataChange() {
		// TODO Auto-generated method stub
		
	}

}
