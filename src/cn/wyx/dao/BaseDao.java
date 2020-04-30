package cn.wyx.dao;

import java.util.List;

public interface BaseDao<T, Q>
{
	/**
	 * 保存
	 * @param t
	 */
	public void save(T t);

	/**
	 * 更新
	 * @param t
	 */
	public void update(T t);

	/**
	 * 根据ID拿到对象
	 * @param id
	 * @return
	 */
	public T getObj(Integer id);

	/**
	 * 根据ID删除
	 * @param id
	 */
	public void delete(Integer id);

	/**
	 * 根据对象删除
	 * @param t
	 */
	public void delete(T t);
	
	/**
	 * 条件查询
	 * @param q
	 * @param exclude
	 * @return
	 */
	public List<T> queryObjByCondition(final Q q, final List<String> exclude);
	
	/**
	 * 无条件查询全部
	 * @return
	 */
	public List<T> list();
	
	/**
	 * 条件查询符合数量
	 * @param q
	 * @param exclude
	 * @return
	 */
	public Long queryObjByConditionCount(final Q q, final List<String> exclude);

}
