package com.jk.service;

import java.util.List;

import com.jk.model.FinanceGoods;

public interface FinanceService {
	/**
	 * <pre>findFinanceGoods(查询商品列表列表)   
	 */
	public List<FinanceGoods> findFinanceGoods(FinanceGoods financeGoods,Integer limit,Integer offset);
	/**
	 * <pre>countFinanceGoods(总条数)   
	 */
	public Long countFinanceGoods(FinanceGoods financeGoods);
	/**
	 * <pre>addOrFinance(添加)   
	 */
	public void addOrFinance(FinanceGoods financeGoods);
	
	public List<FinanceGoods> poiFindFinanceGoods(FinanceGoods financeGoods);
	/**
	 * <pre>updateTypeSj(上架下架)   
	 */
	public void updateTypeSj(FinanceGoods financeGoods);
	/**
	 * <pre>updateFinanceGoods(回显)   
	 */
	public FinanceGoods updateFinanceGoods(FinanceGoods financeGoods);
	/**
	 * <pre>updateGoods(修改)   
	 */
	public void updateGoods(FinanceGoods financeGoods);
}
