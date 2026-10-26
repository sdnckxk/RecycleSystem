package com.cl.dao;

import com.cl.entity.HuishourenyuanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.HuishourenyuanView;


/**
 * 回收人员
 * 
 * @author 
 * @email 
 * @date 2024-05-09 19:34:57
 */
public interface HuishourenyuanDao extends BaseMapper<HuishourenyuanEntity> {
	
	List<HuishourenyuanView> selectListView(@Param("ew") Wrapper<HuishourenyuanEntity> wrapper);

	List<HuishourenyuanView> selectListView(Pagination page,@Param("ew") Wrapper<HuishourenyuanEntity> wrapper);
	
	HuishourenyuanView selectView(@Param("ew") Wrapper<HuishourenyuanEntity> wrapper);
	

}
