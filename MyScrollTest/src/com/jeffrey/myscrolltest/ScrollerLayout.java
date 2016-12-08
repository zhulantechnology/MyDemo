package com.jeffrey.myscrolltest;

import android.content.Context;
import android.support.v4.view.ViewConfigurationCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.Scroller;

public class ScrollerLayout extends ViewGroup {
	
	private Scroller mScroller;
	private int mTouchSlop;
    private int leftBorder;
    private int rightBorder;
    
    private float mXDown;
    private float mXLastMove;
    private float mXMove;
   // private float rightBorder;
  //  private float rightBorder;
    
    
	public ScrollerLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
		mScroller = new Scroller(context);
		ViewConfiguration configuration = ViewConfiguration.get(context);
		mTouchSlop = ViewConfigurationCompat.getScaledPagingTouchSlop(configuration);
	}

	
	@Override
	protected void onLayout(boolean changed, int l, int t, int r, int b) {
		if (changed) {
			int childCount = getChildCount();
			for (int i = 0; i < childCount; i++) {
				View childView = getChildAt(i);
				// ΪSrollLayout�е�ÿһ���ӿؼ���ˮƽ�����Ͻ��в���
				childView.layout(i*childView.getMeasuredWidth(), 0, 
						(i+1)*childView.getMeasuredWidth(), childView.getMeasuredHeight());
			}
			// ��ʼ�����ұ߽�ֵ
			leftBorder = getChildAt(0).getLeft();
			rightBorder = getChildAt(getChildCount() - 1).getRight();
		}

	}


	@Override
	public boolean onInterceptTouchEvent(MotionEvent ev) {
		switch (ev.getAction()) {
		case MotionEvent.ACTION_DOWN:
			mXDown = ev.getRawX();
			mXLastMove = mXDown;
			break;
		case MotionEvent.ACTION_MOVE:
			mXMove = ev.getRawX();
			// ����ָ�϶�ֵ����TouchSlopʱ����ΪӦ�ý��й����������ӿؼ����¼�
			float diff = Math.abs(mXMove - mXDown);
			mXLastMove = mXMove;
			if (diff > mTouchSlop) {
				return true;
			}
			break;
		default:
			break;
		}
		return super.onInterceptTouchEvent(ev);
	}


	@Override
	public boolean onTouchEvent(MotionEvent event) {
		switch (event.getAction()) {
		case MotionEvent.ACTION_MOVE:
			mXMove = event.getRawX();
			int scrolledX = (int) (mXLastMove - mXMove);
			// getScrollX(), �ǻ���View�����λ��
			if (getScrollX() + scrolledX < leftBorder) {
				scrollTo(leftBorder, 0);
				return true;
			} else if (getScrollX() + getWidth() + scrolledX > rightBorder) {
				scrollTo(rightBorder - getWidth(), 0);
				return true;
			}
			scrollBy(scrolledX, 0);
			mXLastMove = mXMove;
			break;
		case MotionEvent.ACTION_UP:
			// ����ָ̧��ʱ�����ݵ�ǰ�Ĺ���ֵ���ж�Ӧ�ù������ĸ��ӿؼ��Ľ���
			int targetIndex = (getScrollX() + getWidth()/2) / getWidth();
			int dx = targetIndex * getWidth() - getScrollX();
			/*
			 * Start scrolling by providing a starting point and the distance to travel. 
			 * The scroll will use the default value of 250 milliseconds for the duration.
			 */
			//step2. ����startScroll()��������ʼ���������ݲ�ˢ�½���
			mScroller.startScroll(getScrollX(), 0, dx, 0);
			invalidate();
			break;

		default:
			break;
		}
		return super.onTouchEvent(event);
	}

	/*
	 * ������д����������϶����ǿ��Եģ������ֺ��ܹ�������ȷ��ҳ��
	 * 
	 */
	@Override
	public void computeScroll() {
		//step3. ��дcomputeScroll�������������ڲ����ƽ���������߼�
		if (mScroller.computeScrollOffset()) {
			scrollTo(mScroller.getCurrX(), mScroller.getCurrY());
			invalidate();
		}
	}


	@Override
	protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
		super.onMeasure(widthMeasureSpec, heightMeasureSpec);
		
		int childCount = getChildCount();
		for (int i = 0; i < childCount; i++) {
			View childView = getChildAt(i);
			// ΪScrollerLayout�е�ÿһ���ӿؼ�������С
			measureChild(childView, widthMeasureSpec, heightMeasureSpec);
		}
	}
	
	

}
