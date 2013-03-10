/**
 * ClassName  SellBackAssessDto
 *
 * History
 * Create User: jiangmingxing
 * Create Date: 2010-6-2
 * Update User:
 * Update Date:
 */
package cn.com.thtf.egov.cms.dto;

import java.math.BigDecimal;

/**
 * 
 * @author jiangmingxing
 */

public class SellBackAssessDto {

	private String customerName; // 客户名称

	private Integer customerId;// 客户编号

	private Integer customerLinkmanId;// 客户联系人编号

	private String name; // 联系人

	private String province; // 省份

	private String tel; // 电话

	private String city; // 城市

	private String fax; // 传真

	private String remitBankName; // 汇款银行名称

	private String remitBankAccount; // 汇款银行帐号

	private Integer backWay; // 退款方式
 

	private String text; // 特殊说明

	private String sellMajIdea; // 销售总监评审意见

	private String sellMajText; // 销售总监补充说明

	private String sellMajId;// 销售总监登录名

	private String sellMajName; // 销售总监用户名

	private String sellMajDate; // 销售总监评审日期

	private String opeMajIdea; // 运营总监评审意见

	private String opeMajText; // 运营总监补充说明

	private String opeMajId;// 运营总监登录名

	private String opeMajName; // 运营总监用户名

	private String opeMajDate; // 运营总监评审日期

	private String id; // 退款申请单号

	private String returnId; // 回款流水号

	private Integer productTypeId;// 产品分类编号

	private String productTypeName;// 产品分类名称

	private String number;// 凭证号

	private BigDecimal money;// 退款金额

	private Integer status;// 退款状态

	private String date;// 申请日期

	private String userId;// 申请人登录名

	private String userName;// 申请人用户名

	private String backDate;// 退款日期

	private String confirmId;// 确认人登录名

	private String confirmName;// 确认人用户名
	
	private String roleId;     //权限

	/**
	 * @return the roleId
	 */
	public String getRoleId() {
		return roleId;
	}

	/**
	 * @param roleId the roleId to set
	 */
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	/**
	 * @return the customerName
	 */
	public String getCustomerName() {
		return customerName;
	}

	/**
	 * @param customerName
	 *            the customerName to set
	 */
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the province
	 */
	public String getProvince() {
		return province;
	}

	/**
	 * @param province
	 *            the province to set
	 */
	public void setProvince(String province) {
		this.province = province;
	}

	/**
	 * @return the tel
	 */
	public String getTel() {
		return tel;
	}

	/**
	 * @param tel
	 *            the tel to set
	 */
	public void setTel(String tel) {
		this.tel = tel;
	}

	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}

	/**
	 * @param city
	 *            the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}

	/**
	 * @return the fax
	 */
	public String getFax() {
		return fax;
	}

	/**
	 * @param fax
	 *            the fax to set
	 */
	public void setFax(String fax) {
		this.fax = fax;
	}

	/**
	 * @return the remitBankName
	 */
	public String getRemitBankName() {
		return remitBankName;
	}

	/**
	 * @param remitBankName
	 *            the remitBankName to set
	 */
	public void setRemitBankName(String remitBankName) {
		this.remitBankName = remitBankName;
	}

	/**
	 * @return the remitBankAccount
	 */
	public String getRemitBankAccount() {
		return remitBankAccount;
	}

	/**
	 * @param remitBankAccount
	 *            the remitBankAccount to set
	 */
	public void setRemitBankAccount(String remitBankAccount) {
		this.remitBankAccount = remitBankAccount;
	}

	/**
	 * @return the backWay
	 */
	public Integer getBackWay() {
		return backWay;
	}

	/**
	 * @param backWay
	 *            the backWay to set
	 */
	public void setBackWay(Integer backWay) {
		this.backWay = backWay;
	}
 
	/**
	 * @return the text
	 */
	public String getText() {
		return text;
	}

	/**
	 * @param text
	 *            the text to set
	 */
	public void setText(String text) {
		this.text = text;
	}

	/**
	 * @return the sellMajIdea
	 */
	public String getSellMajIdea() {
		return sellMajIdea;
	}

	/**
	 * @param sellMajIdea
	 *            the sellMajIdea to set
	 */
	public void setSellMajIdea(String sellMajIdea) {
		this.sellMajIdea = sellMajIdea;
	}

	/**
	 * @return the sellMajText
	 */
	public String getSellMajText() {
		return sellMajText;
	}

	/**
	 * @param sellMajText
	 *            the sellMajText to set
	 */
	public void setSellMajText(String sellMajText) {
		this.sellMajText = sellMajText;
	}

	/**
	 * @return the sellMajName
	 */
	public String getSellMajName() {
		return sellMajName;
	}

	/**
	 * @param sellMajName
	 *            the sellMajName to set
	 */
	public void setSellMajName(String sellMajName) {
		this.sellMajName = sellMajName;
	}

	/**
	 * @return the sellMajDate
	 */
	public String getSellMajDate() {
		return sellMajDate;
	}

	/**
	 * @param sellMajDate
	 *            the sellMajDate to set
	 */
	public void setSellMajDate(String sellMajDate) {
		this.sellMajDate = sellMajDate;
	}

	/**
	 * @return the opeMajIdea
	 */
	public String getOpeMajIdea() {
		return opeMajIdea;
	}

	/**
	 * @param opeMajIdea
	 *            the opeMajIdea to set
	 */
	public void setOpeMajIdea(String opeMajIdea) {
		this.opeMajIdea = opeMajIdea;
	}

	/**
	 * @return the opeMajText
	 */
	public String getOpeMajText() {
		return opeMajText;
	}

	/**
	 * @param opeMajText
	 *            the opeMajText to set
	 */
	public void setOpeMajText(String opeMajText) {
		this.opeMajText = opeMajText;
	}

	/**
	 * @return the opeMajName
	 */
	public String getOpeMajName() {
		return opeMajName;
	}

	/**
	 * @param opeMajName
	 *            the opeMajName to set
	 */
	public void setOpeMajName(String opeMajName) {
		this.opeMajName = opeMajName;
	}

	/**
	 * @return the opeMajDate
	 */
	public String getOpeMajDate() {
		return opeMajDate;
	}

	/**
	 * @param opeMajDate
	 *            the opeMajDate to set
	 */
	public void setOpeMajDate(String opeMajDate) {
		this.opeMajDate = opeMajDate;
	}

	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return the returnId
	 */
	public String getReturnId() {
		return returnId;
	}

	/**
	 * @param returnId
	 *            the returnId to set
	 */
	public void setReturnId(String returnId) {
		this.returnId = returnId;
	}

	/**
	 * @return the productTypeId
	 */
	public Integer getProductTypeId() {
		return productTypeId;
	}

	/**
	 * @param productTypeId
	 *            the productTypeId to set
	 */
	public void setProductTypeId(Integer productTypeId) {
		this.productTypeId = productTypeId;
	}

	/**
	 * @return the productTypeName
	 */
	public String getProductTypeName() {
		return productTypeName;
	}

	/**
	 * @param productTypeName
	 *            the productTypeName to set
	 */
	public void setProductTypeName(String productTypeName) {
		this.productTypeName = productTypeName;
	}

	/**
	 * @return the customerId
	 */
	public Integer getCustomerId() {
		return customerId;
	}

	/**
	 * @param customerId
	 *            the customerId to set
	 */
	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	/**
	 * @return the customerLinkmanId
	 */
	public Integer getCustomerLinkmanId() {
		return customerLinkmanId;
	}

	/**
	 * @param customerLinkmanId
	 *            the customerLinkmanId to set
	 */
	public void setCustomerLinkmanId(Integer customerLinkmanId) {
		this.customerLinkmanId = customerLinkmanId;
	}

	/**
	 * @return the number
	 */
	public String getNumber() {
		return number;
	}

	/**
	 * @param number
	 *            the number to set
	 */
	public void setNumber(String number) {
		this.number = number;
	}

	/**
	 * @return the money
	 */
	public BigDecimal getMoney() {
		return money;
	}

	/**
	 * @param money
	 *            the money to set
	 */
	public void setMoney(BigDecimal money) {
		this.money = money;
	}

	/**
	 * @return the status
	 */
	public Integer getStatus() {
		return status;
	}

	/**
	 * @param status
	 *            the status to set
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}

	/**
	 * @return the date
	 */
	public String getDate() {
		return date;
	}

	/**
	 * @param date
	 *            the date to set
	 */
	public void setDate(String date) {
		this.date = date;
	}

	/**
	 * @return the userId
	 */
	public String getUserId() {
		return userId;
	}

	/**
	 * @param userId
	 *            the userId to set
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}

	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * @param userName
	 *            the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * @return the backDate
	 */
	public String getBackDate() {
		return backDate;
	}

	/**
	 * @param backDate
	 *            the backDate to set
	 */
	public void setBackDate(String backDate) {
		this.backDate = backDate;
	}

	/**
	 * @return the confirmId
	 */
	public String getConfirmId() {
		return confirmId;
	}

	/**
	 * @param confirmId
	 *            the confirmId to set
	 */
	public void setConfirmId(String confirmId) {
		this.confirmId = confirmId;
	}

	/**
	 * @return the confirmName
	 */
	public String getConfirmName() {
		return confirmName;
	}

	/**
	 * @param confirmName
	 *            the confirmName to set
	 */
	public void setConfirmName(String confirmName) {
		this.confirmName = confirmName;
	}

	/**
	 * @return the sellMajId
	 */
	public String getSellMajId() {
		return sellMajId;
	}

	/**
	 * @param sellMajId
	 *            the sellMajId to set
	 */
	public void setSellMajId(String sellMajId) {
		this.sellMajId = sellMajId;
	}

	/**
	 * @return the opeMajId
	 */
	public String getOpeMajId() {
		return opeMajId;
	}

	/**
	 * @param opeMajId
	 *            the opeMajId to set
	 */
	public void setOpeMajId(String opeMajId) {
		this.opeMajId = opeMajId;
	}

}
