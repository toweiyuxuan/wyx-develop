package cn.wyx.dao;

import java.util.List;

public interface BaseDao<T, Q>
{
	/**
	 * ����
	 * @param t
	 */
	public void save(T t);

	/**
	 * ����
	 * @param t
	 */
	public void update(T t);

	/**
	 * ����ID�õ�����
	 * @param id
	 * @return
	 */
	public T getObj(Integer id);

	/**
	 * ����IDɾ��
	 * @param id
	 */
	public void delete(Integer id);

	/**
	 * ���ݶ���ɾ��
	 * @param t
	 */
	public void delete(T t);
	
	/**
	 * ������ѯ
	 * @param q
	 * @param exclude
	 * @return
	 */
	public List<T> queryObjByCondition(final Q q, final List<String> exclude);
	
	/**
	 * ��������ѯȫ��
	 * @return
	 */
	public List<T> list();
	
	/**
	 * ������ѯ��������
	 * @param q
	 * @param exclude
	 * @return
	 */
	public Long queryObjByConditionCount(final Q q, final List<String> exclude);

}
