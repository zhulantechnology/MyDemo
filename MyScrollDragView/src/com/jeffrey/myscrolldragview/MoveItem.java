package com.jeffrey.myscrolldragview;

import java.io.Serializable;

public class MoveItem implements Serializable {

	private static final long serialVersionUID = 5146721736112044302L;

	private int _id;
	// id
	private int mid;
	// ����ģʽ�µ�item��Drawable Id
	private int img_normal;
	// ����ģʽ�µ�item��Drawable Id
	private int img_pressed;
	// item�������ֶ�
	private int orderId;

	public int get_id() {
		return _id;
	}

	public void set_id(int _id) {
		this._id = _id;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public int getImg_normal() {
		return img_normal;
	}

	public void setImg_normal(int img_normal) {
		this.img_normal = img_normal;
	}

	public int getImg_pressed() {
		return img_pressed;
	}

	public void setImg_pressed(int img_pressed) {
		this.img_pressed = img_pressed;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

}
