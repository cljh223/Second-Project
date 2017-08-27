package com.kilha.www.vo;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * ���� ���� ���̺� �� Ŭ����.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class State implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** �����ڵ�. */
	private Integer stateCode;

	/** ���¸�. */
	private String stateName;

	/** �������̺� ���. */
	private Set<Shop> shopSet;

	/**
	 * ������.
	 */
	public State() {
		this.shopSet = new HashSet<Shop>();
	}

	/**
	 * �����ڵ��� �����մϴ�..
	 * 
	 * @param stateCode
	 *            �����ڵ�
	 */
	public void setStateCode(Integer stateCode) {
		this.stateCode = stateCode;
	}

	/**
	 * �����ڵ��� �����ɴϴ�..
	 * 
	 * @return �����ڵ�
	 */
	public Integer getStateCode() {
		return this.stateCode;
	}

	/**
	 * ���¸��� �����մϴ�..
	 * 
	 * @param stateName
	 *            ���¸�
	 */
	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	/**
	 * ���¸��� �����ɴϴ�..
	 * 
	 * @return ���¸�
	 */
	public String getStateName() {
		return this.stateName;
	}

	/**
	 * �������̺� ����� �����մϴ�..
	 * 
	 * @param shopSet
	 *            �������̺� ���
	 */
	public void setShopSet(Set<Shop> shopSet) {
		this.shopSet = shopSet;
	}

	/**
	 * �������̺��� �߰��մϴ�..
	 * 
	 * @param shop
	 *            �������̺�
	 */
	public void addShop(Shop shop) {
		this.shopSet.add(shop);
	}

	/**
	 * �������̺� ����� �����ɴϴ�..
	 * 
	 * @return �������̺� ���
	 */
	public Set<Shop> getShopSet() {
		return this.shopSet;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((stateCode == null) ? 0 : stateCode.hashCode());
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
		State other = (State) obj;
		if (stateCode == null) {
			if (other.stateCode != null) {
				return false;
			}
		} else if (!stateCode.equals(other.stateCode)) {
			return false;
		}
		return true;
	}

}