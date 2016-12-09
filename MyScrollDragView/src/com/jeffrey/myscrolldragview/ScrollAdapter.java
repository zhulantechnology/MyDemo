package com.jeffrey.myscrolldragview;

import java.util.List;

import android.R.integer;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;

import com.jeffrey.myscrolldragview.ScrollLayout.SAdapter;

public class ScrollAdapter implements SAdapter{
	
	private Context mContext;
	private LayoutInflater mInflater;
	private List<MoveItem> mList;
	
	public ScrollAdapter(Context context, List<MoveItem> list) {
		this.mContext = context;
		this.mInflater = LayoutInflater.from(context);
		this.mList = mList;
		
	}

	@Override
	public int getCount() {
		return mList.size();
	}

	@Override
	public View getView(int position) {
		View view = null;
		if (position < mList.size()) {
			MoveItem moveItem = mList.get(position);
			view = mInflater.inflate(R.layout.item, null);
			ImageView iv = (ImageView) view.findViewById(R.id.content_iv);
			StateListDrawable states = new StateListDrawable();
			int imgUrlNormal = moveItem.getImg_normal();
			int imgUrlPressed = moveItem.getImg_pressed();
			
			Drawable pressed = null;
			Drawable normal = null;
		}
		return null;
	}
	private OnDataChangeListener dataChangeListener =null;
	public interface OnDataChangeListener {
		void ondataChange();
	}
	
	public void setOnDataChangeListener(OnDataChangeListener dataChangeListener) {
		this.dataChangeListener = dataChangeListener;
	}

}





































