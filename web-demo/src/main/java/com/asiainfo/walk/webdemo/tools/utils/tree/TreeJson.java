package com.asiainfo.walk.webdemo.tools.utils.tree;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.alibaba.fastjson.JSONObject;

public class TreeJson implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String id ; 
    private String pid ; 
    private String text ; 
    private String iconCls ;
    private String state ; 
    private String checked ; 
    private JSONObject attributes = new JSONObject() ; 
    private List<TreeJson> children = new ArrayList<TreeJson>() ;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getIconCls() {
		return iconCls;
	}
	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getChecked() {
		return checked;
	}
	public void setChecked(String checked) {
		this.checked = checked;
	}
	public JSONObject getAttributes() {
		return attributes;
	}
	public void setAttributes(JSONObject attributes) {
		this.attributes = attributes;
	}
	public List<TreeJson> getChildren() {
		return children;
	}
	public void setChildren(List<TreeJson> children) {
		this.children = children;
	}
    
    
}
