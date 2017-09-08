package com.kilha.www.vo.sal;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * kpi���� �� Ŭ����.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Kpidivision implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** �����ڵ�. */
	private Integer kpidivisionCode;

	/** ���и�. */
	private String kpidivisionName;

	/** KPI���̺� ���. */
	private Set<Kpi> kpiSet;

	/**
	 * ������.
	 */
	public Kpidivision() {
		this.kpiSet = new HashSet<Kpi>();
	}

	/**
	 * �����ڵ��� �����մϴ�..
	 * 
	 * @param kpidivisionCode
	 *            �����ڵ�
	 */
	public void setKpidivisionCode(Integer kpidivisionCode) {
		this.kpidivisionCode = kpidivisionCode;
	}

	/**
	 * �����ڵ��� �����ɴϴ�..
	 * 
	 * @return �����ڵ�
	 */
	public Integer getKpidivisionCode() {
		return this.kpidivisionCode;
	}

	/**
	 * ���и��� �����մϴ�..
	 * 
	 * @param kpidivisionName
	 *            ���и�
	 */
	public void setKpidivisionName(String kpidivisionName) {
		this.kpidivisionName = kpidivisionName;
	}

	/**
	 * ���и��� �����ɴϴ�..
	 * 
	 * @return ���и�
	 */
	public String getKpidivisionName() {
		return this.kpidivisionName;
	}

	/**
	 * KPI���̺� ����� �����մϴ�..
	 * 
	 * @param kpiSet
	 *            KPI���̺� ���
	 */
	public void setKpiSet(Set<Kpi> kpiSet) {
		this.kpiSet = kpiSet;
	}

	/**
	 * KPI���̺� �߰��մϴ�..
	 * 
	 * @param kpi
	 *            KPI���̺�
	 */
	public void addKpi(Kpi kpi) {
		this.kpiSet.add(kpi);
	}

	/**
	 * KPI���̺� ����� �����ɴϴ�..
	 * 
	 * @return KPI���̺� ���
	 */
	public Set<Kpi> getKpiSet() {
		return this.kpiSet;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((kpidivisionCode == null) ? 0 : kpidivisionCode.hashCode());
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
		Kpidivision other = (Kpidivision) obj;
		if (kpidivisionCode == null) {
			if (other.kpidivisionCode != null) {
				return false;
			}
		} else if (!kpidivisionCode.equals(other.kpidivisionCode)) {
			return false;
		}
		return true;
	}

}
