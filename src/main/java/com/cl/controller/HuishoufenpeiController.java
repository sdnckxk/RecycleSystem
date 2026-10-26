package com.cl.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.cl.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.cl.annotation.IgnoreAuth;

import com.cl.entity.HuishoufenpeiEntity;
import com.cl.entity.view.HuishoufenpeiView;

import com.cl.service.HuishoufenpeiService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;

/**
 * 回收分配
 * 后端接口
 * @author 
 * @email
 */
@RestController
@RequestMapping("/huishoufenpei")
public class HuishoufenpeiController {
    @Autowired
    private HuishoufenpeiService huishoufenpeiService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,HuishoufenpeiEntity huishoufenpei,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			huishoufenpei.setYonghuzhanghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("huishourenyuan")) {
			huishoufenpei.setRenyuanzhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<HuishoufenpeiEntity> ew = new EntityWrapper<HuishoufenpeiEntity>();

		PageUtils page = huishoufenpeiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, huishoufenpei), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,HuishoufenpeiEntity huishoufenpei, 
		HttpServletRequest request){
        EntityWrapper<HuishoufenpeiEntity> ew = new EntityWrapper<HuishoufenpeiEntity>();

		PageUtils page = huishoufenpeiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, huishoufenpei), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( HuishoufenpeiEntity huishoufenpei){
       	EntityWrapper<HuishoufenpeiEntity> ew = new EntityWrapper<HuishoufenpeiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( huishoufenpei, "huishoufenpei")); 
        return R.ok().put("data", huishoufenpeiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(HuishoufenpeiEntity huishoufenpei){
        EntityWrapper< HuishoufenpeiEntity> ew = new EntityWrapper< HuishoufenpeiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( huishoufenpei, "huishoufenpei")); 
		HuishoufenpeiView huishoufenpeiView =  huishoufenpeiService.selectView(ew);
		return R.ok("查询回收分配成功").put("data", huishoufenpeiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        HuishoufenpeiEntity huishoufenpei = huishoufenpeiService.selectById(id);
		huishoufenpei = huishoufenpeiService.selectView(new EntityWrapper<HuishoufenpeiEntity>().eq("id", id));
        return R.ok().put("data", huishoufenpei);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        HuishoufenpeiEntity huishoufenpei = huishoufenpeiService.selectById(id);
		huishoufenpei = huishoufenpeiService.selectView(new EntityWrapper<HuishoufenpeiEntity>().eq("id", id));
        return R.ok().put("data", huishoufenpei);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody HuishoufenpeiEntity huishoufenpei, HttpServletRequest request){
    	huishoufenpei.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(huishoufenpei);
        huishoufenpeiService.insert(huishoufenpei);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody HuishoufenpeiEntity huishoufenpei, HttpServletRequest request){
    	huishoufenpei.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(huishoufenpei);
        huishoufenpeiService.insert(huishoufenpei);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody HuishoufenpeiEntity huishoufenpei, HttpServletRequest request){
        //ValidatorUtils.validateEntity(huishoufenpei);
        huishoufenpeiService.updateById(huishoufenpei);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        huishoufenpeiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
