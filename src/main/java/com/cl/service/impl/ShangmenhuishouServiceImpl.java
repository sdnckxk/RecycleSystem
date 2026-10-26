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


import com.cl.dao.ShangmenhuishouDao;
import com.cl.entity.ShangmenhuishouEntity;
import com.cl.service.ShangmenhuishouService;
import com.cl.entity.view.ShangmenhuishouView;

@Service("shangmenhuishouService")
public class ShangmenhuishouServiceImpl extends ServiceImpl<ShangmenhuishouDao, ShangmenhuishouEntity> implements ShangmenhuishouService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShangmenhuishouEntity> page = this.selectPage(
                new Query<ShangmenhuishouEntity>(params).getPage(),
                new EntityWrapper<ShangmenhuishouEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShangmenhuishouEntity> wrapper) {
		  Page<ShangmenhuishouView> page =new Query<ShangmenhuishouView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<ShangmenhuishouView> selectListView(Wrapper<ShangmenhuishouEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShangmenhuishouView selectView(Wrapper<ShangmenhuishouEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
