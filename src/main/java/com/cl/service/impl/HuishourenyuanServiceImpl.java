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


import com.cl.dao.HuishourenyuanDao;
import com.cl.entity.HuishourenyuanEntity;
import com.cl.service.HuishourenyuanService;
import com.cl.entity.view.HuishourenyuanView;

@Service("huishourenyuanService")
public class HuishourenyuanServiceImpl extends ServiceImpl<HuishourenyuanDao, HuishourenyuanEntity> implements HuishourenyuanService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<HuishourenyuanEntity> page = this.selectPage(
                new Query<HuishourenyuanEntity>(params).getPage(),
                new EntityWrapper<HuishourenyuanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<HuishourenyuanEntity> wrapper) {
		  Page<HuishourenyuanView> page =new Query<HuishourenyuanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<HuishourenyuanView> selectListView(Wrapper<HuishourenyuanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public HuishourenyuanView selectView(Wrapper<HuishourenyuanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
