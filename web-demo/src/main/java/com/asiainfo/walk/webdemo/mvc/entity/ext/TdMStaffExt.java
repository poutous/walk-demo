package com.asiainfo.walk.webdemo.mvc.entity.ext;

import org.walkframework.data.annotation.Column;

import com.asiainfo.walk.webdemo.mvc.entity.TdMStaff;


public class TdMStaffExt extends TdMStaff {
	private static final long serialVersionUID = 1L;
	
	@Column(name = "STAFF_PASSWD")
	private String staffPasswd;
	
	@Column(name = "RELA_STAFF_ID")
	private String relaStaffId;
	
	@Column(name = "POSITION_ID")
	private String positionId;
	
	@Column(name = "DEPART_CODE")
	private String departCode;
	
	@Column(name = "DEPART_NAME")
	private String departName;
	
	@Column(name = "DEPART_CLASS")
	private String departClass;
	
	@Column(name = "CUC_DEPART_CODE")
	private String cucDepartCode;
	
	@Column(name = "AREA_CODE")
	private String areaCode;
	
	@Column(name = "AREA_NAME")
	private String areaName;
	
	@Column(name = "CUC_AREA_CODE")
	private String cucAreaCode;
	
	@Column(name = "CITY_CODE")
	private String cityCode;
	
	@Column(name = "CITY_NAME")
	private String cityName;
	
	@Column(name = "CUC_CITY_CODE")
	private String cucCityCode;
	
	@Column(name = "EPARCHY_CODE")
	private String eparchyCode;
	
	@Column(name = "EPARCHY_NAME")
	private String eparchyName;
	
	@Column(name = "CUC_EPARCHY_CODE")
	private String cucEparchyCode;
	
	@Column(name = "PROVINCE_ID")
	private String provinceId;

	public String getStaffPasswd() {
		return staffPasswd;
	}

	public void setStaffPasswd(String staffPasswd) {
		this.staffPasswd = staffPasswd;
	}

	public String getDepartCode() {
		return departCode;
	}

	public void setDepartCode(String departCode) {
		this.departCode = departCode;
	}

	public String getDepartName() {
		return departName;
	}

	public void setDepartName(String departName) {
		this.departName = departName;
	}

	public String getCucDepartCode() {
		return cucDepartCode;
	}

	public void setCucDepartCode(String cucDepartCode) {
		this.cucDepartCode = cucDepartCode;
	}

	public String getAreaCode() {
		return areaCode;
	}

	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}

	public String getAreaName() {
		return areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}

	public String getCucAreaCode() {
		return cucAreaCode;
	}

	public void setCucAreaCode(String cucAreaCode) {
		this.cucAreaCode = cucAreaCode;
	}

	public String getCityCode() {
		return cityCode;
	}

	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getCucCityCode() {
		return cucCityCode;
	}

	public void setCucCityCode(String cucCityCode) {
		this.cucCityCode = cucCityCode;
	}

	public String getEparchyCode() {
		return eparchyCode;
	}

	public void setEparchyCode(String eparchyCode) {
		this.eparchyCode = eparchyCode;
	}

	public String getEparchyName() {
		return eparchyName;
	}

	public void setEparchyName(String eparchyName) {
		this.eparchyName = eparchyName;
	}

	public String getCucEparchyCode() {
		return cucEparchyCode;
	}

	public void setCucEparchyCode(String cucEparchyCode) {
		this.cucEparchyCode = cucEparchyCode;
	}

	public String getProvinceId() {
		return provinceId;
	}

	public void setProvinceId(String provinceId) {
		this.provinceId = provinceId;
	}

	public String getDepartClass() {
		return departClass;
	}

	public void setDepartClass(String departClass) {
		this.departClass = departClass;
	}

	public String getRelaStaffId() {
		return relaStaffId;
	}

	public void setRelaStaffId(String relaStaffId) {
		this.relaStaffId = relaStaffId;
	}

	public String getPositionId() {
		return positionId;
	}

	public void setPositionId(String positionId) {
		this.positionId = positionId;
	}
}
