package com.mii.model;

public class Payment {
	private String bankname;
	private String banktxnid;
	private String currency;
	private String gatewayname;
	private String merchantid;
	private String orderid;
	private String paymentmode;
	private String responsecode;
	private String responsemsg;
	private String status;
	private double txnamount;
	private String txndatetime;
	private String txnid;
	public String getBankname() {
		return bankname;
	}
	public void setBankname(String bankname) {
		this.bankname = bankname;
	}
	public String getBanktxnid() {
		return banktxnid;
	}
	public void setBanktxnid(String banktxnid) {
		this.banktxnid = banktxnid;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public String getGatewayname() {
		return gatewayname;
	}
	public void setGatewayname(String gatewayname) {
		this.gatewayname = gatewayname;
	}
	public String getMerchantid() {
		return merchantid;
	}
	public void setMerchantid(String merchantid) {
		this.merchantid = merchantid;
	}
	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public String getPaymentmode() {
		return paymentmode;
	}
	public void setPaymentmode(String paymentmode) {
		this.paymentmode = paymentmode;
	}
	public String getResponsecode() {
		return responsecode;
	}
	public void setResponsecode(String responsecode) {
		this.responsecode = responsecode;
	}
	public String getResponsemsg() {
		return responsemsg;
	}
	public void setResponsemsg(String responsemsg) {
		this.responsemsg = responsemsg;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public double getTxnamount() {
		return txnamount;
	}
	public void setTxnamount(double txnamount) {
		this.txnamount = txnamount;
	}
	public String getTxndatetime() {
		return txndatetime;
	}
	public void setTxndatetime(String txndatetime) {
		this.txndatetime = txndatetime;
	}
	public String getTxnid() {
		return txnid;
	}
	public void setTxnid(String txnid) {
		this.txnid = txnid;
	}
}