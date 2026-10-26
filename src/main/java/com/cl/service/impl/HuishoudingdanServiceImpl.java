package com.cl.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.cl.utils.PageUtils;
import com.cl.utils.Query;


import com.cl.dao.HuishoudingdanDao;
import com.cl.entity.HuishoudingdanEntity;
import com.cl.service.HuishoudingdanService;
import com.cl.entity.view.HuishoudingdanView;

@Service("huishoudingdanService")
public class HuishoudingdanServiceImpl extends ServiceImpl<HuishoudingdanDao, HuishoudingdanEntity> implements HuishoudingdanService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<HuishoudingdanEntity> page = this.selectPage(
                new Query<HuishoudingdanEntity>(params).getPage(),
                new EntityWrapper<HuishoudingdanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<HuishoudingdanEntity> wrapper) {
		  Page<HuishoudingdanView> page =new Query<HuishoudingdanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<HuishoudingdanView> selectListView(Wrapper<HuishoudingdanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public HuishoudingdanView selectView(Wrapper<HuishoudingdanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<HuishoudingdanEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<HuishoudingdanEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<HuishoudingdanEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }




}
