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


import com.cl.dao.HuishoufenpeiDao;
import com.cl.entity.HuishoufenpeiEntity;
import com.cl.service.HuishoufenpeiService;
import com.cl.entity.view.HuishoufenpeiView;

@Service("huishoufenpeiService")
public class HuishoufenpeiServiceImpl extends ServiceImpl<HuishoufenpeiDao, HuishoufenpeiEntity> implements HuishoufenpeiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<HuishoufenpeiEntity> page = this.selectPage(
                new Query<HuishoufenpeiEntity>(params).getPage(),
                new EntityWrapper<HuishoufenpeiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<HuishoufenpeiEntity> wrapper) {
		  Page<HuishoufenpeiView> page =new Query<HuishoufenpeiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<HuishoufenpeiView> selectListView(Wrapper<HuishoufenpeiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public HuishoufenpeiView selectView(Wrapper<HuishoufenpeiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
