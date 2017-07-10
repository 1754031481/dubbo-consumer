package com.jk.model;

import java.io.Serializable;
import java.util.Date;

public class FinanceGoods implements Serializable{
	
    private static final long serialVersionUID = 7164077917986742585L;
    
	private Integer goodsid;
    private String goodsnum;
    private String goodsname;
    private Integer goodsfinance;
    private Double goodsmoney;
    private Integer goodsnumber;
    private Integer goodsbishu;
    private Integer goodskucun;
    private String goodsstate;
    private String createpeople;
    private Date createtime;
    private String goodsleibie;
    private String paymethod;
    private Integer marketmoney;
    private Integer xgsl;
    private String goodsphoto;
    private String goodsdetails;
    private Date updatetime;
    private String typesj;
    private String appphoto;
    private Date startDate;
    private Date endDate;
	public Integer getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(Integer goodsid) {
		this.goodsid = goodsid;
	}
	public String getGoodsnum() {
		return goodsnum;
	}
	public void setGoodsnum(String goodsnum) {
		this.goodsnum = goodsnum;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	public Integer getGoodsfinance() {
		return goodsfinance;
	}
	public void setGoodsfinance(Integer goodsfinance) {
		this.goodsfinance = goodsfinance;
	}
	public Double getGoodsmoney() {
		return goodsmoney;
	}
	public void setGoodsmoney(Double goodsmoney) {
		this.goodsmoney = goodsmoney;
	}
	public Integer getGoodsnumber() {
		return goodsnumber;
	}
	public void setGoodsnumber(Integer goodsnumber) {
		this.goodsnumber = goodsnumber;
	}
	public Integer getGoodsbishu() {
		return goodsbishu;
	}
	public void setGoodsbishu(Integer goodsbishu) {
		this.goodsbishu = goodsbishu;
	}
	public Integer getGoodskucun() {
		return goodskucun;
	}
	public void setGoodskucun(Integer goodskucun) {
		this.goodskucun = goodskucun;
	}
	public String getGoodsstate() {
		return goodsstate;
	}
	public void setGoodsstate(String goodsstate) {
		this.goodsstate = goodsstate;
	}
	public String getCreatepeople() {
		return createpeople;
	}
	public void setCreatepeople(String createpeople) {
		this.createpeople = createpeople;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public String getGoodsleibie() {
		return goodsleibie;
	}
	public void setGoodsleibie(String goodsleibie) {
		this.goodsleibie = goodsleibie;
	}
	public String getPaymethod() {
		return paymethod;
	}
	public void setPaymethod(String paymethod) {
		this.paymethod = paymethod;
	}
	public Integer getMarketmoney() {
		return marketmoney;
	}
	public void setMarketmoney(Integer marketmoney) {
		this.marketmoney = marketmoney;
	}
	public Integer getXgsl() {
		return xgsl;
	}
	public void setXgsl(Integer xgsl) {
		this.xgsl = xgsl;
	}
	public String getGoodsphoto() {
		return goodsphoto;
	}
	public void setGoodsphoto(String goodsphoto) {
		this.goodsphoto = goodsphoto;
	}
	public String getGoodsdetails() {
		return goodsdetails;
	}
	public void setGoodsdetails(String goodsdetails) {
		this.goodsdetails = goodsdetails;
	}
	public Date getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	public String getTypesj() {
		return typesj;
	}
	public void setTypesj(String typesj) {
		this.typesj = typesj;
	}
	public String getAppphoto() {
		return appphoto;
	}
	public void setAppphoto(String appphoto) {
		this.appphoto = appphoto;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	@Override
	public String toString() {
		return "FinanceGoods [goodsid=" + goodsid + ", goodsnum=" + goodsnum + ", goodsname=" + goodsname
				+ ", goodsfinance=" + goodsfinance + ", goodsmoney=" + goodsmoney + ", goodsnumber=" + goodsnumber
				+ ", goodsbishu=" + goodsbishu + ", goodskucun=" + goodskucun + ", goodsstate=" + goodsstate
				+ ", createpeople=" + createpeople + ", createtime=" + createtime + ", goodsleibie=" + goodsleibie
				+ ", paymethod=" + paymethod + ", marketmoney=" + marketmoney + ", xgsl=" + xgsl + ", goodsphoto="
				+ goodsphoto + ", goodsdetails=" + goodsdetails + ", updatetime=" + updatetime + ", typesj=" + typesj
				+ ", appphoto=" + appphoto + ", startDate=" + startDate + ", endDate=" + endDate + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((goodsid == null) ? 0 : goodsid.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		FinanceGoods other = (FinanceGoods) obj;
		if (goodsid == null) {
			if (other.goodsid != null)
				return false;
		} else if (!goodsid.equals(other.goodsid))
			return false;
		return true;
	}
	
    
}