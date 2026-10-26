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


import com.cl.dao.JiuwufenleiDao;
import com.cl.entity.JiuwufenleiEntity;
import com.cl.service.JiuwufenleiService;
import com.cl.entity.view.JiuwufenleiView;

@Service("jiuwufenleiService")
public class JiuwufenleiServiceImpl extends ServiceImpl<JiuwufenleiDao, JiuwufenleiEntity> implements JiuwufenleiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JiuwufenleiEntity> page = this.selectPage(
                new Query<JiuwufenleiEntity>(params).getPage(),
                new EntityWrapper<JiuwufenleiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JiuwufenleiEntity> wrapper) {
		  Page<JiuwufenleiView> page =new Query<JiuwufenleiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<JiuwufenleiView> selectListView(Wrapper<JiuwufenleiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JiuwufenleiView selectView(Wrapper<JiuwufenleiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
