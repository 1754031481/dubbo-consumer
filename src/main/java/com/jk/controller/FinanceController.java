package com.jk.controller;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jk.model.FinanceGoods;
import com.jk.service.FinanceService;
import com.jk.util.DataGrid;
import com.jk.util.ExportExcel;

@Controller
@RequestMapping("FinanceController")
public class FinanceController extends BaseController implements ServletContextAware {
	private static final Logger logger = Logger.getLogger(FinanceController.class);

	@Autowired
	private FinanceService financeService;

	private ServletContext servletContext;

	@RequestMapping("updateFinanceGoods")
	public ModelAndView updateFinanceGoods(FinanceGoods financeGoods, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		FinanceGoods updateFinanceGoods = financeService.updateFinanceGoods(financeGoods);
		mv.setViewName("/add");
		mv.addObject("financeGoods", updateFinanceGoods);
		return mv;
	}

	@RequestMapping("chakanFinanceGoods")
	public ModelAndView chakanFinanceGoods(FinanceGoods financeGoods, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		FinanceGoods updateFinanceGoods = financeService.updateFinanceGoods(financeGoods);
		mv.setViewName("/chakan");
		mv.addObject("financeGoods", updateFinanceGoods);
		return mv;
	}

	@RequestMapping("findFinanceGoods")
	public void findFinanceGoods(FinanceGoods financeGoods,String startDatea,String endDatea,Integer offset, Integer limit,
			HttpServletResponse response) {
		SimpleDateFormat sim=new SimpleDateFormat("yyyy-MM-dd");
		try {
			if(null!=startDatea && !"".equals(startDatea)){
				financeGoods.setStartDate(sim.parse(startDatea));
			}
			if(null!=endDatea && !"".equals(endDatea)){
				financeGoods.setEndDate(sim.parse(endDatea));
			}
		} catch (ParseException e) {
			e.printStackTrace();
		}
		DataGrid grid = new DataGrid();
		List<FinanceGoods> findFinanceGoods = financeService.findFinanceGoods(financeGoods, limit, offset);
		Long countFinanceGoods = financeService.countFinanceGoods(financeGoods);
		grid.setRows(findFinanceGoods);
		grid.setTotal(countFinanceGoods);
		super.writeJson(grid, response);
	}

	@RequestMapping("addOrFinance")
	public void addOrFinance(@RequestParam("file") CommonsMultipartFile file, FinanceGoods financeGoods,
			HttpServletResponse response, HttpServletRequest request) {
		String path = this.servletContext.getRealPath("/upload/");
		String fileName = file.getOriginalFilename();
		String fileType = fileName.substring(fileName.lastIndexOf("."));
		String imgUrl = new Date().getTime() + fileType;
		File file2 = new File(path, imgUrl);
		financeGoods.setCreatepeople("伊芙蕾雅");
		financeGoods.setCreatetime(new Date());

		try {
			if (null != financeGoods.getGoodsid()) {
				file.getFileItem().write(file2);
				financeGoods.setGoodsphoto("/upload/" + imgUrl);
				financeGoods.setCreatepeople("伊芙蕾雅");
				financeGoods.setUpdatetime(new Date());
				financeService.updateGoods(financeGoods);
			} else {
				file.getFileItem().write(file2);
				financeGoods.setGoodsphoto("/upload/" + imgUrl);
				financeService.addOrFinance(financeGoods);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@RequestMapping("updateTypeSj")
	public void updateTypeSj(FinanceGoods financeGoods, HttpServletResponse response) {
		financeService.updateTypeSj(financeGoods);
	}

	@RequestMapping("poiRecharge")
	public void poiRecharge(FinanceGoods financeGoods, HttpServletResponse response) {
		String title = "商品管理";
		String[] rowName = new String[] { "序号", "商品名称", "商品积分 ", "商品价格（元）", "成交数量", "成交笔数 ", "库存 ", "创建人 ", "创建时间",
				"操作时间" };
		List<Object[]> dataList = new ArrayList<>();
		List<FinanceGoods> rechargeList = financeService.poiFindFinanceGoods(financeGoods);
		for (FinanceGoods recharge2 : rechargeList) {
			Object[] obj = new Object[rowName.length];
			obj[0] = recharge2.getGoodsid();
			obj[1] = recharge2.getGoodsnum();
			obj[2] = recharge2.getGoodsfinance();
			obj[3] = recharge2.getGoodsmoney();
			obj[4] = recharge2.getGoodsnumber();
			obj[5] = recharge2.getGoodsbishu();
			obj[6] = recharge2.getGoodskucun();
			obj[7] = recharge2.getCreatepeople();
			obj[8] = recharge2.getCreatetime();
			obj[9] = recharge2.getUpdatetime();
			dataList.add(obj);
		}
		ExportExcel exportExcel = new ExportExcel(title, rowName, dataList, response);
		try {
			exportExcel.export();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void setServletContext(ServletContext arg0) {
		this.servletContext = servletContext;
	}
}
