package com.kilha.www.vo;
import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * �������μ������̺� �� Ŭ����.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Process implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** ���μ��� �ڵ�. */
	private String processCode;

	/** �Է³�¥. */
	private Date processInsertDate;

	/** ��ȿ�Ⱓ. */
	private Date processTerm;

	/** ��ǰ ������. */
	private Date processEndDate;

	/** ���Ῡ��. */
	private Integer processState;

	/** �������̺�. */
	private Shop shop;

	/** �������̺�. */
	private Staff staff;

	/** â�� ���̺�. */
	private Warehouse warehouse;

	/** ��ǰ������̺� ���. */
	private Set<Supply> supplySet;

	/**
	 * ������.
	 */
	public Process() {
		this.supplySet = new HashSet<Supply>();
	}

	/**
	 * ���μ��� �ڵ��� �����մϴ�..
	 * 
	 * @param processCode
	 *            ���μ��� �ڵ�
	 */
	public void setProcessCode(String processCode) {
		this.processCode = processCode;
	}

	/**
	 * ���μ��� �ڵ��� �����ɴϴ�..
	 * 
	 * @return ���μ��� �ڵ�
	 */
	public String getProcessCode() {
		return this.processCode;
	}

	/**
	 * �Է³�¥�� �����մϴ�..
	 * 
	 * @param processInsertDate
	 *            �Է³�¥
	 */
	public void setProcessInsertDate(Date processInsertDate) {
		this.processInsertDate = processInsertDate;
	}

	/**
	 * �Է³�¥�� �����ɴϴ�..
	 * 
	 * @return �Է³�¥
	 */
	public Date getProcessInsertDate() {
		return this.processInsertDate;
	}

	/**
	 * ��ȿ�Ⱓ�� �����մϴ�..
	 * 
	 * @param processTerm
	 *            ��ȿ�Ⱓ
	 */
	public void setProcessTerm(Date processTerm) {
		this.processTerm = processTerm;
	}

	/**
	 * ��ȿ�Ⱓ�� �����ɴϴ�..
	 * 
	 * @return ��ȿ�Ⱓ
	 */
	public Date getProcessTerm() {
		return this.processTerm;
	}

	/**
	 * ��ǰ �������� �����մϴ�..
	 * 
	 * @param processEndDate
	 *            ��ǰ ������
	 */
	public void setProcessEndDate(Date processEndDate) {
		this.processEndDate = processEndDate;
	}

	/**
	 * ��ǰ �������� �����ɴϴ�..
	 * 
	 * @return ��ǰ ������
	 */
	public Date getProcessEndDate() {
		return this.processEndDate;
	}

	/**
	 * ���Ῡ���� �����մϴ�..
	 * 
	 * @param processState
	 *            ���Ῡ��
	 */
	public void setProcessState(Integer processState) {
		this.processState = processState;
	}

	/**
	 * ���Ῡ���� �����ɴϴ�..
	 * 
	 * @return ���Ῡ��
	 */
	public Integer getProcessState() {
		return this.processState;
	}

	/**
	 * �������̺��� �����մϴ�..
	 * 
	 * @param shop
	 *            �������̺�
	 */
	public void setShop(Shop shop) {
		this.shop = shop;
	}

	/**
	 * �������̺��� �����ɴϴ�..
	 * 
	 * @return �������̺�
	 */
	public Shop getShop() {
		return this.shop;
	}

	/**
	 * �������̺��� �����մϴ�..
	 * 
	 * @param staff
	 *            �������̺�
	 */
	public void setStaff(Staff staff) {
		this.staff = staff;
	}

	/**
	 * �������̺��� �����ɴϴ�..
	 * 
	 * @return �������̺�
	 */
	public Staff getStaff() {
		return this.staff;
	}

	/**
	 * â�� ���̺��� �����մϴ�..
	 * 
	 * @param warehouse
	 *            â�� ���̺�
	 */
	public void setWarehouse(Warehouse warehouse) {
		this.warehouse = warehouse;
	}

	/**
	 * â�� ���̺��� �����ɴϴ�..
	 * 
	 * @return â�� ���̺�
	 */
	public Warehouse getWarehouse() {
		return this.warehouse;
	}

	/**
	 * ��ǰ������̺� ����� �����մϴ�..
	 * 
	 * @param supplySet
	 *            ��ǰ������̺� ���
	 */
	public void setSupplySet(Set<Supply> supplySet) {
		this.supplySet = supplySet;
	}

	/**
	 * ��ǰ������̺��� �߰��մϴ�..
	 * 
	 * @param supply
	 *            ��ǰ������̺�
	 */
	public void addSupply(Supply supply) {
		this.supplySet.add(supply);
	}

	/**
	 * ��ǰ������̺� ����� �����ɴϴ�..
	 * 
	 * @return ��ǰ������̺� ���
	 */
	public Set<Supply> getSupplySet() {
		return this.supplySet;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((processCode == null) ? 0 : processCode.hashCode());
		return result;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		Process other = (Process) obj;
		if (processCode == null) {
			if (other.processCode != null) {
				return false;
			}
		} else if (!processCode.equals(other.processCode)) {
			return false;
		}
		return true;
	}

}